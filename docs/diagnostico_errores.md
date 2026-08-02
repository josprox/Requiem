# Diagnóstico de Errores — Joss Red Installer

## El despliegue permanece en `Configuring bootloader...`

La configuración del cargador muestra en tiempo real cada subpaso de particionado Legacy, escritura MBR/VBR, ejecución de BCD-SYS, creación o validación del BCD, registro UEFI y sincronización final. La salida estándar y de error de BCD-SYS se presenta línea por línea con su prefijo correspondiente.

BCD-SYS no recibe un límite de tiempo adicional: Requiem conserva el flujo completo y espera su terminación. Si una operación tarda, la última línea visible permite distinguir si el trabajo continúa en `sfdisk`, `ms-sys`, BCD-SYS, `patch_bcd.py`, `efibootmgr`, `sync` o `blockdev` sin confundirlo con la aplicación del WIM.

Si aparecen pausas repetidas acompañadas por `sudo: unable to resolve host`, el hostname efectivo de la sesión Live no estaba registrado localmente y cada llamada a `sudo` esperaba una consulta NSS/DNS. La ISO configura `requiem` como hostname base y, antes de iniciar la interfaz, agrega de forma idempotente el hostname efectivo a `/etc/hosts`. BCD-SYS continúa ejecutándose completo, pero sin las esperas de resolución entre subprocesos.

## `Cannot acquire drive 'stdio:E:/...'` al generar una ISO

El binario Windows de `xorriso` distribuido por MSYS2 interpreta las rutas de forma distinta según el argumento. Requiem conserva `E:\archivo.iso` para el destino `-o` y para validar la ISO terminada. Las rutas de entrada, extracción, `graft-points` e intervalo GRUB se convierten a `/cygdrive/e/ruta`.

Si aparece este error en una versión anterior, actualice Requiem Tools y vuelva a generar la ISO. No es un error del WIM ni implica que la ISO base esté dañada.

## ❌ ERROR ACTIVO: `oscdimg failed (code 1)` — etfsboot.com no encontrado

### Mensaje completo
```
ERROR: Could not open boot sector file
"...\flutter_app\build\windows\x64\runner\Debug\winpe_base\media\boot\etfsboot.com"
Error 3
```

---

## Causa Raíz

El comando `oscdimg` se construye en `iso_builder_service.dart` línea **290**:

```dart
final etfsboot = p.join(mediaDir, 'boot', 'etfsboot.com');
final efisys   = p.join(mediaDir, 'efi', 'microsoft', 'boot', 'efisys.bin');
final bootData = '2#p0,e,b$etfsboot#pEF,e,b$efisys';
```

Donde `mediaDir` es:
```
<exe_dir>/winpe_base/media/
```

La herramienta espera estos archivos de boot:
```
winpe_base/media/boot/etfsboot.com      ← ❌ NO EXISTE
winpe_base/media/efi/microsoft/boot/efisys.bin  ← ❌ NO EXISTE
```

**Al inspeccionar `winpe_base/media/` se encontró:**
```
winpe_base/
└── media/
    └── sources/        ← Vacía (solo este subdirectorio)
```

Los archivos `etfsboot.com` y `efisys.bin` son componentes del **Windows ADK / Windows PE Add-on** y **nunca fueron copiados** a la carpeta del proyecto. La estructura `media/boot/` y `media/efi/` está **completamente ausente**.

---

## Por qué ocurre

`oscdimg` necesita los archivos de arranque para crear un ISO dual BIOS+UEFI:

| Archivo | Propósito | Origen |
|---|---|---|
| `etfsboot.com` | Boot sector para BIOS/MBR (El Torito) | Windows ADK → `\Oscdimg\etfsboot.com` |
| `efisys.bin` | Boot sector para UEFI | Windows ADK → `\Oscdimg\efisys.bin` |

Estos archivos deben estar presentes en `winpe_base/media/boot/` y `winpe_base/media/efi/microsoft/boot/` respectivamente.

---

## ⚠️ Problema Secundario: xcopy warning "copia cíclica"

```
⚠ xcopy warning: No se puede realizar una copia cíclica
```

El warning ocurre porque `appBuildPath` (línea 182 de `main_controller.dart`) es:
```dart
final appPath = p.dirname(Platform.resolvedExecutable);
// = build/windows/x64/runner/Debug/
```

Y `targetAppPath` es:
```dart
p.join(mountDir, 'JossRedInstaller')
// = build/windows/x64/runner/Debug/dism_mount/JossRedInstaller/
```

`dism_mount/` **está dentro de** `appBuildPath`, por lo que xcopy detecta un ciclo e intenta copiarse a sí mismo. Aunque xcopy continúa (`/C`), podría inflar la imagen con archivos innecesarios.

---

## Soluciones

### Fix 1: Proveer los archivos de boot (SOLUCIÓN PRINCIPAL)

**Opción A — Copiar desde Windows ADK instalado** (si el ADK está instalado):
```
Origen:  C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Deployment Tools\amd64\Oscdimg\
Destino: winpe_base\media\boot\etfsboot.com
         winpe_base\media\efi\microsoft\boot\efisys.bin
```

**Opción B — Embeberlos como assets Flutter** (solución portable):
1. Agregar a `pubspec.yaml`:
   ```yaml
   assets:
     - assets/winpe/boot_files/etfsboot.com
     - assets/winpe/boot_files/efisys.bin
   ```
2. Extraerlos en `_prepareAssets()` junto con `boot.wim`
3. Usar las rutas de `_assetsTempDir` en el comando `oscdimg`

### Fix 2: Excluir `dism_mount` del xcopy (SOLUCIÓN SECUNDARIA)

```dart
// En iso_builder_service.dart, línea 214
final xcopyResult = await _processService.run('xcopy', [
  appBuildPath,
  targetAppPath,
  '/E', '/H', '/C', '/I', '/Y', '/Q',
  '/EXCLUDE:xcopy_exclude.txt',  // ← Agregar exclusión
]);
```

O usar robocopy con exclusión:
```dart
await _processService.run('robocopy', [
  appBuildPath,
  targetAppPath,
  '/E', '/XD', 'dism_mount', 'temp_assets',
]);
```

---

## Estado de los Assets Críticos

| Asset | Ubicación en proyecto | Estado |
|---|---|---|
| `boot.wim` | `assets/winpe/boot.wim` | ✅ Presente (628 MB) |
| `oscdimg.exe` | `assets/tools/oscdimg.exe` | ✅ Presente (143 KB) |
| `etfsboot.com` | `winpe_base/media/boot/` | ❌ **FALTANTE** |
| `efisys.bin` | `winpe_base/media/efi/microsoft/boot/` | ❌ **FALTANTE** |

---

## Solución Recomendada: Embeber los boot files como assets

Esta es la opción más robusta para hacer la app 100% portable sin depender del ADK instalado.

Ver `fixes/fix_etfsboot_embebido.md` para la implementación detallada.
