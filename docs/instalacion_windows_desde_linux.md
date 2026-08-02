# Instalación de Windows desde Linux (Modo ISO)

Este documento describe la especificación técnica implementada por Requiem para desplegar Windows directamente desde un entorno autónomo Linux Live (Debian Bookworm) sin requerir WinPE.

---

## Diagnóstico del aparente bloqueo en 80%

`wimlib-imagex` informa por separado la creación del árbol de archivos, la extracción de datos y la aplicación de metadatos NTFS. Cada fase reinicia su contador y llega a `100%`. La interfaz anterior interpretaba el primer `100%` como si todo el WIM hubiera terminado, fijaba el progreso global en 80% y descartaba los porcentajes posteriores por ser menores; durante ese tiempo `wimlib` seguía trabajando correctamente.

Requiem ahora asigna rangos monotónicos a cada fase y reserva la finalización del WIM para la salida limpia del proceso. Si la fase final de metadatos llega al 100% pero el proceso no termina en diez minutos, la instalación falla de forma explícita en vez de quedar esperando indefinidamente o continuar con un NTFS posiblemente incompleto.

La validación de `patch_bcd.py` también devuelve éxito de forma explícita cuando encuentra Windows Boot Manager y al menos un OS Loader que referencia la partición correcta. Esto evita rechazar un BCD válido antes de crear `EFI/BOOT/BOOTX64.EFI` y finalizar el disco.

---

## Flujo de Despliegue UEFI GPT

1. **Verificación de Firmware**: Requiem exige que la sesión live se haya iniciado mediante UEFI y que `efivars` (`/sys/firmware/efi/efivars`) esté disponible.
2. **Particionado Autónomo (`sgdisk`)**:
   - Partición 1: 512 MiB, tipo `EF00` (ESP - EFI System Partition). Formateada en `FAT32`.
   - Partición 2: 16 MiB, tipo `0C01` (MSR - Microsoft Reserved Partition).
   - Partición 3: Espacio principal restante menos 1024 MiB, tipo `0700` (Windows OS Partition). Formateada en `NTFS`.
   - Partición 4: 1024 MiB, tipo `2700` (Windows Recovery Partition). Formateada en `NTFS`.
3. **Aplicación Directa de la Imagen WIM/SWM**:
   La partición de Windows permanece desmontada durante la aplicación:
   ```bash
   wimlib-imagex apply install.wim 1 /dev/DESTINO_WINDOWS
   ```
   *Preserva ACLs, ADS, reparse points y metadatos NTFS originales.*
4. **Montaje e Inspección**:
   Tras la sincronización del bloque, la partición de Windows y la ESP se montan en `/mnt/windows` y `/mnt/efi`.
5. **Configuración del Almacén BCD**:
   - `BCD-SYS` actúa como la ruta primaria para la generación del BCD.
   - Si `BCD-SYS` no está disponible o requiere fallback, `patch_bcd.py --uefi` parchea la colmena BCD copiando los binarios desde `Windows/Boot/EFI`.
   - Si no existen entradas de cargador previas en el BCD, `patch_bcd.py` ejecuta automáticamente `create_minimal_bcd()`, inyectando el objeto OS Loader completo con los UUIDs reales (PTUUID del disco y PARTUUID de ESP y Windows) apuntando a `\Windows\system32\winload.efi`.
6. **Archivos EFI y Fallback**:
   Se garantiza la presencia de:
   ```text
   /mnt/efi/EFI/Microsoft/Boot/bootmgfw.efi
   /mnt/efi/EFI/Microsoft/Boot/BCD
   /mnt/efi/EFI/BOOT/BOOTX64.EFI
   ```
7. **Registro NVRAM UEFI (`efibootmgr`)**:
   `efibootmgr` registra la entrada `"Windows Boot Manager"` asociada al PARTUUID de la ESP y la ruta `\EFI\Microsoft\Boot\bootmgfw.efi`, moviéndola al inicio de `BootOrder`. Si la NVRAM está protegida contra escritura por el firmware OEM, el instalador registra una advertencia y continúa la instalación con éxito apoyándose en el cargador estándar de respaldo `EFI/BOOT/BOOTX64.EFI`.
8. **Inyección de Controladores de Almacenamiento**:
   Se modifican las colmenas `SYSTEM` offline para establecer `Start = 0` en los controladores `stornvme`, `iaStorVD`, `iaStorA`, `nvme`, `vmd`, `storahci`, `ahci`, etc., evitando pantallas azules `INACCESSIBLE_BOOT_DEVICE` (0x0000007B) en SSDs NVMe y procesadores de última generación.
9. **Sincronización Limpia y Desmontaje**:
   `sync` y `blockdev --flushbufs` se ejecutan antes de desmontar `/mnt/windows` y `/mnt/efi`.

---

## Flujo de Despliegue BIOS Legacy MBR

1. **Verificación**: La sesión live debe iniciarse en modo BIOS Legacy.
2. **Particionado (`sfdisk` / `parted`)**: Se crea la tabla de partición MBR con la partición NTFS marcada con el atributo activo/bootable (`0x80`).
3. **Escritura de Sectores de Arranque**:
   - MBR (Sector 0 del disco): Se escribe el código MBR NT6+ con `ms-sys -7 /dev/sdX`.
   - VBR (Sector 0 de la partición): Se escribe el VBR NTFS NT6+ con `ms-sys --ntfs --partition /dev/sdX1`.
4. **Sincronización de Firma BCD**:
   `patch_bcd.py --sync-mbr-signature` sincroniza la firma de disco MBR de 4 bytes y los desplazamientos de la partición en el BCD de la carpeta `/Boot/BCD`.

---

## Compilación de la ISO con Caché (`build_iso.sh`)

El script `linux_live_iso/build_iso.sh` utiliza un sistema de caché de 4 niveles en `.build_cache`:
- **Debootstrap Base**: `debootstrap_bookworm_base.tar.xz`.
- **Binarios de Herramientas**: Binarios precompilados de `xorriso-1.5.6`, `ms-sys` y `bcd-sys`.
- **Caché APT**: `/var/cache/apt/archives`.
- **Compilación Incremental de Flutter**: Preservación de `.dart_tool`.

Para recompilar usando la caché:
```bash
sudo ./linux_live_iso/build_iso.sh
```

Para forzar una recompilación limpia:
```bash
sudo ./linux_live_iso/build_iso.sh --clean
```
