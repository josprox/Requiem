# Diagnóstico de Errores — Joss Red Installer

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
