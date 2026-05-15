# Joss Red Installer — Documentación Técnica

## Índice

| Documento | Descripción |
|---|---|
| [arquitectura.md](./arquitectura.md) | Estructura del proyecto, flujo del pipeline, dependencias |
| [diagnostico_errores.md](./diagnostico_errores.md) | Análisis de errores encontrados y causas raíz |
| [fix_etfsboot.md](./fix_etfsboot.md) | Fix implementado: extracción automática de boot sector files |

---

## Error corregido en esta sesión

```
❌ BUILD FAILED: Exception: oscdimg failed (code 1).
ERROR: Could not open boot sector file
   "...\winpe_base\media\boot\etfsboot.com"
Error 3
```

**Causa:** Los archivos `etfsboot.com` y `efisys.bin` no existían en el proyecto.  
**Fix:** Se agregó `_prepareBootFiles()` en `iso_builder_service.dart` que los extrae automáticamente del `boot.wim` embebido.

---

## Estado de assets críticos

| Asset | Ruta | Estado |
|---|---|---|
| `boot.wim` | `assets/winpe/boot.wim` | ✅ 628 MB |
| `oscdimg.exe` | `assets/tools/oscdimg.exe` | ✅ 143 KB |
| `etfsboot.com` | Generado en runtime → `winpe_base/media/boot/` | ✅ Auto-extraído |
| `efisys.bin` | Generado en runtime → `winpe_base/media/efi/microsoft/boot/` | ✅ Auto-extraído |
