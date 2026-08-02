# Requiem Installer

> [!NOTE]
> **Requiem Installer** es una solución avanzada de despliegue e instalación de Windows multi-plataforma desarrollada con **Flutter Desktop**. El proyecto cuenta con dos modos principales de operación: el **Modo ISO** (una distribución autónoma de Linux Live basada en Debian Bookworm optimizada exclusivamente para instalar imágenes Windows `.wim`/`.swm` sin depender de WinPE) y el **Modo Tools** (una herramienta utilitaria de post-instalación para la activación KMS, personalización OEM e instalación masiva de programas en Windows).

---

## 🚀 Propósitos del Proyecto

### 1. Modo ISO (Distribución Linux Live Installer) 💿
Un entorno autónomo de alto rendimiento basado en **Debian Bookworm Live** que se ejecuta directamente desde una memoria USB o máquina virtual.
* **Menú GRUB Unificado**: Un único punto de entrada principal con parámetros universales del kernel (`quiet splash`, `console=tty0`, `gfxpayload=1024x768x32,auto`) para garantizar compatibilidad gráfica universal en UEFI/BIOS, hardware real, VMware, QEMU/KVM y VirtualBox.
* **Compilación Rápida con Sistema de Caché (`build_iso.sh`)**: Incluye un pipeline de construcción optimizado con almacenamiento en caché de 4 niveles (`.build_cache`):
  - *Caché de Debootstrap*: Reutiliza el archivo tarball del sistema base Debian (`debootstrap_bookworm_base.tar.xz`), reduciendo el tiempo de bootstrap de minutos a segundos.
  - *Caché de Binarios*: Preserva las utilidades precompiladas `xorriso-1.5.6`, `ms-sys` y `BCD-SYS`.
  - *Caché de Paquetes APT*: Reutiliza los paquetes `.deb` descargados en `/var/cache/apt/archives`.
  - *Compilación Incremental de Flutter*: Mantiene `.dart_tool` para compilar solo los cambios de código en segundos.
* **Despliegue Directo WIM/SWM**: Aplica la imagen de Windows al volumen NTFS desmontado usando `wimlib-imagex`, preservando ACLs, ADS, reparse points y metadatos NTFS sin requerir WinPE. El progreso se calcula por las fases reales de `wimlib` (creación, extracción y metadatos), y sólo se acepta el WIM cuando el proceso termina limpiamente; un `100%` intermedio no se confunde con la finalización global.
* **Configuración Perfeccionada del Bootloader**:
  - *Modo UEFI GPT*: Reconstruye el almacén BCD usando `BCD-SYS` o `patch_bcd.py` (con inyección automática de OS Loader `create_minimal_bcd`), copia `bootmgfw.efi` y el cargador de respaldo `EFI/BOOT/BOOTX64.EFI`, y registra la entrada en NVRAM con `efibootmgr`. Si la NVRAM está protegida contra escritura por el firmware OEM, continúa la instalación con éxito apoyándose en `BOOTX64.EFI`.
  - *Modo BIOS Legacy MBR*: Escribe MBR y VBR NT6+ mediante `ms-sys`, marca la partición como activa y sincroniza la firma de disco MBR en la colmena BCD.
* **Inyección de Controladores de Almacenamiento Críticos**: Activa automáticamente en el registro offline `SYSTEM` (`ControlSet001/ControlSet002`) los controladores `stornvme`, `iaStorVD`, `iaStorA`, `nvme`, `vmd`, `storahci`, `ahci`, `msahci`, `intelide`, etc. Previene de forma definitiva las pantallas azules `INACCESSIBLE_BOOT_DEVICE` (0x0000007B) en SSDs NVMe y procesadores Intel de última generación.

### 2. Modo Tools (Post-Instalación & Desktop Tools) 🛠️
Una consola utilitaria diseñada para ser ejecutada sobre sistemas Windows ya instalados:
* **Instalación Masiva de Software**: Integración con `winget` y scripts desatendidos para instalar navegadores, entornos de desarrollo y utilidades.
* **Activación de Licencias**: Automatización de servicios KMS para la activación oficial de Windows y Microsoft Office.
* **Branding e Integración OEM**: Inyección de marca personalizada del fabricante, modelo, soporte técnico y logotipos corporativos en el registro del sistema.

---

## 🛠️ Arquitectura y Tecnologías

### Frontend (Interfaz Gráfica)
* **Flutter Desktop (Linux & Windows)**: Interfaz responsiva moderna con estética glassmorphic, modo oscuro y micro-animaciones dinámicas.
* **Provider (Dart)**: Arquitectura reactiva y gestión de estado mediante controlador centralizado (`MainController`).
* **Window Manager**: Control nativo de bordes de ventana y comportamiento en pantalla completa.

### Backend & Herramientas de Sistema (Live ISO)
* **Base Linux Live**: Debian Bookworm Live montado en memoria RAM mediante `live-boot`.
* **Entorno Gráfico**: Xorg Server con gestor de ventanas Openbox en pantalla completa sin bordes.
* **Utilidades del Sistema**: `wimlib-imagex`, `sgdisk`, `parted`, `sfdisk`, `ntfs-3g`, `efibootmgr`, `hivex` (`python3-hivex`), `ms-sys` y `BCD-SYS`.

---

## 💻 Flujo de Trabajo para Desarrolladores (Compilar la ISO)

### 1. Configuración del Entorno WSL2 / Linux
Para preparar el entorno de compilación e instalar el SDK de Flutter de Linux en `/opt/flutter`:

```bash
chmod +x linux_live_iso/setup_wsl.sh
./linux_live_iso/setup_wsl.sh
```

### 2. Compilación de la ISO Arrancable

#### Compilación Rápida (con Caché por Defecto):
```bash
sudo ./linux_live_iso/build_iso.sh
```
*La primera ejecución genera la caché en `.build_cache`. Las compilaciones subsecuentes tomarán solo unos segundos.*

#### Reconstruir desde Cero (Limpiar Caché):
```bash
sudo ./linux_live_iso/build_iso.sh --clean
```

El archivo ISO resultante se generará en la raíz del proyecto:
`requiem_installer.iso`

---

## 📁 Estructura del Proyecto

```text
Requiem/
├── assets/                          # Logotipos y recursos de la aplicación
├── docs/                            # Documentación técnica detallada
│   ├── README.md                    # Índice de documentación
│   ├── arquitectura.md              # Visión general de componentes y servicios
│   ├── diagnostico_errores.md       # Diagnóstico de errores de boot e imágenes
│   ├── fix_etfsboot.md              # Correcciones del pipeline
│   └── instalacion_windows_desde_linux.md # Flujo técnico del despliegue en Linux
├── inno/                            # Script ISS y binarios de instalador Inno Setup
├── lib/                             # Código fuente principal de Flutter / Dart
│   ├── core/                        # Tema gráfico y constantes
│   ├── models/                      # Modelos de datos (discos, particiones, progreso)
│   ├── services/                    # Servicios de backend (discos, despliegue, registro)
│   │   ├── deployment/              # Providers de despliegue para Linux y Windows
│   │   ├── main_controller.dart     # Controlador central de estado
│   │   ├── disk_service.dart        # Gestión de discos y particionado
│   │   ├── registry_service.dart    # Modificación de registro offline
│   │   └── process_service.dart     # Ejecución streaming de comandos
│   └── ui/                          # Pantallas y widgets de la interfaz gráfica
├── linux_live_iso/                  # Constructor y configuraciones de la ISO Live
│   ├── build_iso.sh                 # Pipeline principal de compilación con caché
│   ├── setup_chroot.sh              # Instalación de paquetes dentro del chroot
│   ├── setup_wsl.sh                 # Preparación del entorno WSL host
│   ├── configs/                     # Archivos de configuración (grub.cfg, systemd, xinitrc)
│   └── tools/                       # Parcheador BCD en Python (patch_bcd.py)
└── pubspec.yaml                     # Configuración de dependencias de Flutter
```

---

## 📜 Licencia y Autoría

Software protegido bajo la **Requiem Installer Public License** (consulte [`license.txt`](license.txt)).

**Desarrollado por**:
Melchor Estrada José Luis — Joss Red — [joss.red](https://joss.red) (web) — [josprox.com](https://josprox.com) (web)
