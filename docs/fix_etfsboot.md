# Fix: etfsboot.com y efisys.bin — Extracción automática desde boot.wim

## Problema

`oscdimg.exe` fallaba con **Error 3** porque `etfsboot.com` y `efisys.bin` no existían en `winpe_base/media/boot/` ni en `winpe_base/media/efi/microsoft/boot/`.

Estos archivos **no pueden embeberse** fácilmente en el repo porque:
- Son parte de Windows ADK (licencia Microsoft)
- `efisys.bin` pesa ~800KB

## Solución implementada

Se agregó el método `_prepareBootFiles()` en `iso_builder_service.dart` que:

1. **Monta el `boot.wim` en modo read-only** en un directorio temporal (`temp_assets/boot_extract_mount/`)
2. **Copia los archivos** desde dentro del WIM:
   - `\Windows\Boot\DVD\PCAT\etfsboot.com` → `winpe_base/media/boot/etfsboot.com`
   - `\Windows\Boot\EFI\efisys.bin` → `winpe_base/media/efi/microsoft/boot/efisys.bin`
3. **Desmonta** inmediatamente con `/Discard`
4. **Fallback al ADK** si no se encuentran dentro del WIM

Estos archivos se extraen en el **Step 2b** (nuevo), antes del DISM cleanup, y se cachean para builds posteriores.

## También corregido: xcopy "copia cíclica"

Se agregó un archivo de exclusión `xcopy_exclude.txt` que previene que xcopy intente copiarse a sí mismo:

```
dism_mount
temp_assets
winpe_base
```

## Estructura final esperada después del primer build exitoso

```
winpe_base/media/
├── boot/
│   └── etfsboot.com          ← extraído del boot.wim
├── efi/
│   └── microsoft/
│       └── boot/
│           └── efisys.bin    ← extraído del boot.wim
└── sources/
    └── install.wim           ← copiado del WIM seleccionado por el usuario
```

## Pipeline de steps actualizado

```
Step 1/6   Preparar assets embebidos (boot.wim, oscdimg.exe)
Step 2/6   Localizar boot.wim
Step 2b/6  ← NUEVO: Extraer boot sector files (etfsboot.com, efisys.bin)
Step 3/6   Limpiar entorno DISM
Step 4/6   Montar imagen WinPE
Step 5/6   Inyectar binarios + DLLs + winpeshl.ini
Step 6/6   Commit + oscdimg → ISO
```
