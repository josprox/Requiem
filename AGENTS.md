# AGENTS.md — Directrices para Agentes de Inteligencia Artificial

Este documento sirve como guía técnica obligatoria para cualquier agente de IA o desarrollador que trabaje en el repositorio **Requiem Installer**.

---

## 📌 Visión General del Proyecto

**Requiem Installer** es un instalador multi-plataforma para sistemas operativos Windows desarrollado con **Flutter Desktop** (Dart). El proyecto cuenta con dos propósitos principales:

1. **Modo ISO (Linux Live ISO Installer)**: Distribución autónoma basada en **Debian Bookworm Live** optimizada exclusivamente para instalar imágenes Windows (`.wim`/`.swm`) directamente a particiones NTFS desmontadas sin depender de WinPE.
   - **Particionado**: Particionado GPT (UEFI) y MBR (BIOS Legacy) con `sgdisk`, `parted` y `sfdisk`.
   - **Despliegue Directo**: Escritura al bloque mediante `wimlib-imagex`.
   - **Bootloader**: Construcción del almacén BCD con `BCD-SYS` y `patch_bcd.py` (`hivex`), fallback a `EFI/BOOT/BOOTX64.EFI`, registro NVRAM con `efibootmgr`, e inyección de MBR/VBR NT6+ con `ms-sys`.
   - **Controladores de Almacenamiento**: Inyección offline en la colmena `SYSTEM` (`stornvme`, `iaStorVD`, `iaStorA`, `nvme`, `vmd`, `storahci`, `ahci`) para prevenir pantallas azules `INACCESSIBLE_BOOT_DEVICE` (0x0000007B).
   - **Compilación con Caché**: Pipeline en `linux_live_iso/build_iso.sh` con almacenamiento en caché de 4 niveles (`.build_cache`).
   - **Arranque GRUB Unificado**: Una sola opción principal `"Requiem Live Installer"` en `linux_live_iso/configs/grub.cfg`.
2. **Modo Tools (Post-Instalación & Desktop Tools)**: Herramienta utilitaria ejecutable sobre Windows post-instalación para la instalación masiva de programas desatendidos (`winget`), activación KMS de Windows/Office y branding OEM.

---

## 📁 Estructura Principal del Código

```text
Requiem/
├── lib/
│   ├── main.dart                               # Punto de entrada y detector de entorno
│   ├── core/                                   # Estilos, constantes y temas UI
│   ├── models/                                 # Modelos de datos (Discos, Particiones, Progreso)
│   ├── services/
│   │   ├── main_controller.dart                # Controlador central de estado (Provider)
│   │   ├── process_service.dart                # Wrapper asíncrono y streaming de procesos
│   │   ├── disk_service.dart                   # Particionado y formateo de discos
│   │   ├── deployment_service.dart             # Coordinador abstracto de instalación
│   │   ├── registry_service.dart               # Modificación de registro offline de Windows
│   │   └── deployment/
│   │       ├── deployment_provider.dart        # Interfaz del proveedor de despliegue
│   │       ├── linux_deployment_provider.dart  # Flujo principal de instalación bajo Linux Live
│   │       └── windows_deployment_provider.dart# Flujo secundario utilitario para Windows
│   └── ui/                                     # Componentes visuales y pantallas
├── linux_live_iso/
│   ├── build_iso.sh                            # Script principal de compilación con caché (.build_cache)
│   ├── setup_chroot.sh                         # Configuración de paquetes del entorno chroot
│   ├── setup_wsl.sh                            # Configuración del entorno host WSL2
│   ├── configs/
│   │   └── grub.cfg                            # Menú de arranque GRUB (1 opción optimizada)
│   └── tools/
│       └── patch_bcd.py                        # Herramienta de manipulación de BCD mediante hivex
├── docs/                                       # Documentación técnica extendida
├── AGENTS.md                                   # Este documento
└── README.md                                   # Documentación principal del repositorio
```

---

## ⚙️ Comandos Clave de Verificación y Compilación

Cualquier cambio realizado por un agente debe verificarse antes de dar por completada la tarea.

### 1. Compilación de la ISO (Modo Incremental Rápido)
```bash
sudo ./linux_live_iso/build_iso.sh
```
*Utiliza la caché de `.build_cache` para compilar en segundos.*

### 2. Reconstrucción Limpia de la ISO (Sin Caché)
```bash
sudo ./linux_live_iso/build_iso.sh --clean
```

### 3. Verificación de Sintaxis de Python (`patch_bcd.py`)
```bash
python -m py_compile linux_live_iso/tools/patch_bcd.py
```

### 4. Análisis Estático de Dart / Flutter
```bash
flutter analyze
```

### 5. Verificación de Sintaxis de Bash (`build_iso.sh`)
```bash
wsl bash -n linux_live_iso/build_iso.sh
```

---

## 🚨 Reglas Estrictas para Agentes de IA

1. **Preservar el Menú GRUB Unificado**:
   - No añadir múltiples entradas de prueba en `linux_live_iso/configs/grub.cfg`. Mantener únicamente la entrada de arranque principal `"Requiem Live Installer"` más las opciones de `"Reboot"` y `"Shutdown"`.
2. **Respetar el Sistema de Caché (`.build_cache`)**:
   - Al modificar `build_iso.sh`, no eliminar la lógica de caché de debootstrap (`debootstrap_bookworm_base.tar.xz`), binarios precompilados ni compilación incremental de Flutter, a menos que el usuario solicite explícitamente alterar la estructura de caché.
3. **Flujo de Arranque BCD y Fallback EFI**:
   - Al tocar `patch_bcd.py` o `linux_deployment_provider.dart`, asegurar que la función `create_minimal_bcd` se mantenga funcional como mecanismo de inyección de respaldo cuando un BCD no posea entradas previas.
   - Si `efibootmgr` falla por NVRAM protegida contra escritura, no abortar la instalación con error fatal; registrar advertencia y continuar confiando en `EFI/BOOT/BOOTX64.EFI`.
4. **Sincronización Limpia de Discos**:
   - Siempre ejecutar `sync` y `blockdev --flushbufs` en los dispositivos de disco antes de desmontar volúmenes NTFS o FAT32 para evitar corrupción o bit sucio en Windows.
5. **Inyección de Controladores de Almacenamiento Offline**:
   - Al modificar `_bootStorageServices` en `registry_service.dart`, asegurar que los controladores `stornvme`, `iaStorVD`, `iaStorA`, `nvme`, `vmd` y `storahci` permanezcan activos con `Start = 0`.
6. **Manejo del `.gitignore`**:
   - Asegurar que `.build_cache/`, `*.iso`, `*.wim` y carpetas de montaje temporales nunca sean rastreados en git.
7. **Actualización de documentación**:
   - Cada cambio debe de ser documentado y actualizando los MD para que siempre se encuentre al día del proyecto cualquier IA.