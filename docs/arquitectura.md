# Requiem Installer — Arquitectura del Sistema

## Visión General

**Requiem Installer** es un instalador multi-plataforma desarrollado en **Flutter Desktop** diseñado para operar en dos entornos principales:

1. **Modo ISO (Linux Live ISO Installer)**: Un entorno autónomo basado en Debian Bookworm Live que despliega sistemas operativos Windows a partir de imágenes `.wim`/`.swm` directamente sobre NTFS desmontado, construyendo el almacén BCD y configurando los registros de arranque sin requerir Microsoft WinPE.
2. **Modo Tools (Desktop Tools)**: Una herramienta post-instalación ejecutable sobre Windows para la gestión desatendida de software (vía `winget`), activación KMS de Windows/Office y personalización de marcas OEM.

---

## Arquitectura de Componentes (Dart / Flutter)

```text
lib/
├── main.dart                               # Entry point y selección de modo
├── core/
│   └── theme.dart                          # Tema oscuro responsivo (glassmorphism)
├── models/                                 # Definiciones de modelos de datos
│   └── disk_model.dart                     # Estructuras para discos y particiones
├── services/
│   ├── main_controller.dart                # Controlador central de estado (Provider)
│   ├── process_service.dart                # Ejecución asíncrona y streaming de procesos
│   ├── disk_service.dart                   # Particionado GPT/MBR y formateo
│   ├── deployment_service.dart             # Orquestador del flujo de aplicación de WIM
│   ├── iso_packaging_service.dart           # Descarga ISO base e inserta payload WIM
│   ├── bridge_server_service.dart           # Prepara y publica WIM pipable por IPv4
│   ├── bridge_discovery_service.dart        # Descubrimiento UDP y validación del puente
│   ├── registry_service.dart               # Modificación offline de registros binarios
│   └── deployment/
│       ├── deployment_provider.dart        # Interfaz abstracta de despliegue
│       ├── linux_deployment_provider.dart  # Implementación nativa para entorno Linux Live
│       └── windows_deployment_provider.dart# Implementación utilitaria para Windows
└── ui/
    ├── screens/                            # Pantallas de la aplicación
    └── widgets/                            # Componentes visuales reutilizables
```

---

## Flujo Técnico del Modo ISO (Linux Live Deployment)

```text
1. Inicio del Live ISO
   └── Debian Bookworm Kernel → Systemd → Xorg + Openbox → Requiem Installer UI

2. Selección de Imagen y Disco
   ├── Payload integrado: detección de /requiem/payload/install.wim → selección directa de disco
   ├── ISO simple: WIM/SWM local o puente IPv4 descubierto/manual
   └── Selección de Unidad Física → Esquema (GPT/UEFI o MBR/BIOS)

3. Particionado y Formateo
   └── parted / sgdisk / sfdisk → mkfs.vfat (ESP) + mkfs.ntfs (Windows)

4. Aplicación de Imagen WIM/SWM (Directo al Bloque)
   ├── Local/integrado: wimlib-imagex apply install.wim 1 /dev/DESTINO_WINDOWS
   └── Puente: HTTP → stdin de wimlib-imagex → /dev/DESTINO_WINDOWS, sin WIM temporal

5. Sincronización y Montaje
   └── sync → blockdev --flushbufs → Mount /mnt/windows y /mnt/efi

6. Reconstrucción del Bootloader de Windows
   ├── UEFI: BCD-SYS / patch_bcd.py (create_minimal_bcd) → efibootmgr NVRAM → EFI/BOOT/BOOTX64.EFI
   └── BIOS: ms-sys (-7 MBR + VBR NT6+) → patch_bcd.py (--sync-mbr-signature)

7. Inyección de Registro Offline
   ├── Controladores de Almacenamiento: Start = 0 (stornvme, iaStorVD, iaStorA, nvme, vmd, storahci)
   └── Marca OEM: Información del fabricante, modelo y logotipo

8. Cierre Limpio
   └── sync → blockdev --flushbufs → Desmontaje de /mnt/windows y /mnt/efi → Reinicio
```

---

## Flujo del Pipeline de Compilación (`linux_live_iso/build_iso.sh`)

El pipeline de compilación de la ISO incluye un sistema de almacenamiento en caché de 4 niveles (`.build_cache`):

1. **Host Tool Verification**: Comprueba e instala herramientas requeridas (`debootstrap`, `squashfs-tools`, `xorriso`, `grub-mkrescue`).
2. **Debootstrap Base Cache**: Extrae `debootstrap_bookworm_base.tar.xz` si existe, o genera el archivo para futuros builds.
3. **Tool Binaries Cache**: Reutiliza binarios precompilados de `xorriso-1.5.6`, `ms-sys` y el repositorio `BCD-SYS`.
4. **APT Cache**: Monta `/var/cache/apt/archives` dentro del chroot para evitar re-descargar paquetes Debian.
5. **Incremental Flutter Build**: Sincroniza el código fuente manteniendo `.dart_tool` para compilar solo los cambios en segundos.
6. **SquashFS & ISO Creation**: Empaqueta el chroot con `mksquashfs` y genera la ISO híbrida UEFI+BIOS mediante `grub-mkrescue` con el menú GRUB unificado.
