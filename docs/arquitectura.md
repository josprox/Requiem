# Joss Red Installer — Arquitectura del Sistema

## Visión General

Joss Red Installer es una aplicación **Flutter Desktop (Windows)** que actúa como herramienta de construcción de ISOs bootables y como instalador de Windows dentro de un entorno WinPE.

La app tiene **dos modos de operación**:

| Modo | Condición de arranque | Pantalla inicial |
|---|---|---|
| **Builder Mode** | Corre en Windows normal (`X:\Windows` no existe) | `IsoBuilderScreen` |
| **WinPE Mode** | Corre dentro de WinPE (`X:\Windows` existe) | `LandingScreen` |

```
main.dart
│
├── [Windows Normal] → IsoBuilderScreen (construir ISO)
└── [WinPE] → LandingScreen → DiskSelectionScreen → InstallationProgressScreen
```

---

## Árbol de Archivos

```
flutter_app/
├── lib/
│   ├── main.dart                        # Entry point, modo PE vs Builder
│   ├── core/
│   │   └── theme.dart                   # Tema oscuro "Joss Red"
│   ├── models/                          # Modelos de datos (discos, particiones)
│   ├── services/
│   │   ├── main_controller.dart         # ChangeNotifier central (estado global)
│   │   ├── iso_builder_service.dart     # Pipeline de construcción de ISO ← CRÍTICO
│   │   ├── disk_service.dart            # Listado de discos vía WMIC/DiskPart
│   │   ├── deployment_service.dart      # Aplicación de imágenes WIM vía DISM
│   │   ├── registry_service.dart        # Inyección de OEM en registro offline
│   │   ├── process_service.dart         # Wrapper para Process.run / runStreaming
│   │   └── recovery_service.dart        # Limpieza de emergencia
│   └── ui/
│       ├── screens/
│       │   ├── landing_screen.dart
│       │   ├── iso_builder_screen.dart  # UI del pipeline ISO
│       │   ├── disk_selection_screen.dart
│       │   └── installation_progress_screen.dart
│       └── widgets/
├── assets/
│   ├── logo.png
│   ├── winpe/
│   │   └── boot.wim                     # Imagen base WinPE (~600MB)
│   └── tools/
│       └── oscdimg.exe                  # Herramienta de creación de ISOs
├── winpe_base/
│   └── media/                           # ← Estructura de la ISO final
│       └── sources/                     # Vacía en repo (se llena en runtime)
├── tools/                               # Vacía en repo
└── docs/                                # Esta carpeta
```

---

## Flujo del Pipeline ISO (`IsoBuilderService.buildIso`)

```
Step 1/6  Preparar assets embebidos
          → boot.wim y oscdimg.exe se cachean en temp_assets/

Step 2/6  Localizar boot.wim
          → temp_assets/base_boot.wim (prioridad)
          → winpe_base/media/sources/boot.wim
          → winpe_base/sources/boot.wim

Step 3/6  Limpiar entorno DISM
          → dism /Get-MountedWimInfo → descartar mounts stale
          → dism /Cleanup-Mountpoints

Step 4/6  Montar imagen WinPE
          → dism /Mount-Wim → dism_mount/

Step 5/6  Inyectar contenido en la imagen montada
    5a.   xcopy binarios de la app → dism_mount/JossRedInstaller/
    5b.   Copiar DLLs de VC++ Runtime desde C:\Windows\System32
    5c.   Escribir winpeshl.ini → dism_mount/Windows/System32/
    5d.   Copiar install.wim/swm → winpe_base/media/sources/

Step 6/6  Commit + Crear ISO
          → dism /Unmount-Wim /Commit
          → oscdimg -bootdata:2#p0,e,b{etfsboot.com}#pEF,e,b{efisys.bin}
```

---

## Dependencias del Proyecto

| Paquete | Versión | Uso |
|---|---|---|
| `provider` | ^6.1.5+1 | State management |
| `window_manager` | ^0.5.1 | Barra de título personalizada |
| `file_picker` | ^8.0.0 | Selección de archivos WIM/ISO |
| `path_provider` | ^2.1.5 | Rutas temporales |
| `path` | ^1.9.0 | Manipulación de rutas |
| `google_fonts` | ^8.1.0 | Tipografía |
| `crypto` | ^3.0.7 | Hashing (potencial verificación de integridad) |

---

## Herramientas del Sistema Utilizadas

| Herramienta | Propósito |
|---|---|
| `dism.exe` | Montar/desmontar WIM, inyectar paquetes |
| `oscdimg.exe` | Crear ISO bootable BIOS+UEFI |
| `xcopy.exe` | Copiar binarios al mount |
| `diskpart.exe` | Particionar discos en modo PE |
| `bcdboot.exe` | Configurar bootloader |
| `shutdown.exe` | Reiniciar al terminar instalación |
