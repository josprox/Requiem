# Joss Red Installer

Instalador live de Windows construido con Flutter para Linux. El proyecto genera una ISO arrancable propia; al iniciar desde esa ISO se abre el instalador, se selecciona un archivo `install.wim` o `install.swm`, se elige el disco de destino y el sistema aplica la imagen de Windows, configura el arranque y reinicia.

## Flujo Actual

1. Desde Windows se usa WSL/Ubuntu como entorno de compilacion.
2. WSL instala Flutter Linux Desktop en `/opt/flutter`.
3. El script `linux_live_iso/build_iso.sh` crea un Debian live con `debootstrap`.
4. Dentro del chroot se compila el bundle Linux de Flutter.
5. El bundle queda instalado en `/opt/joss_red_installer` dentro del live ISO.
6. La ISO arranca con GRUB, `live-boot`, Xorg y Openbox.
7. `joss-installer.service` lanza automaticamente `/opt/joss_red_installer/joss_red_installer`.
8. El instalador permite seleccionar el WIM/SWM desde medios montados o unidades USB.
9. Se particiona/formatea el disco elegido, se aplica la imagen con `wimlib-imagex`, se configura BCD/bootloader y se ofrece reiniciar.

## Requisitos

- Windows 10/11 con WSL2.
- Ubuntu en WSL.
- Conexion a internet durante la construccion.
- Espacio libre recomendado: 20 GB o mas.
- Permisos `sudo` dentro de WSL.
- El archivo WIM/SWM de Windows en un USB, disco externo o ruta accesible durante la instalacion.

## Preparar WSL

Abre Ubuntu/WSL y ve al proyecto montado desde Windows:

```bash
cd /mnt/c/Users/joss/Documents/proyectos/JossZilla
```

Ejecuta el preparador:

```bash
chmod +x linux_live_iso/setup_wsl.sh
./linux_live_iso/setup_wsl.sh
```

Este script instala dependencias de compilacion, clona Flutter `3.44.1` en `/opt/flutter`, habilita Linux Desktop y compila una primera version del app.

## Generar la ISO

Desde la raiz del proyecto en WSL:

```bash
cd /mnt/c/Users/joss/Documents/proyectos/JossZilla
chmod +x linux_live_iso/build_iso.sh
./linux_live_iso/build_iso.sh
```

El resultado se crea en:

```text
joss_installer.iso
```

Durante este proceso el script:

- instala dependencias del constructor;
- crea el chroot Debian Bookworm;
- compila `ms-sys`;
- compila `xorriso` desde codigo fuente;
- copia el proyecto al chroot;
- compila Flutter Linux release dentro del chroot;
- instala herramientas de despliegue como `wimtools`, `ntfs-3g`, `parted`, `efibootmgr` y `hivex`;
- copia `linux_live_iso/tools/patch_bcd.py`;
- genera `filesystem.squashfs`;
- empaqueta una ISO hibrida BIOS/UEFI con `grub-mkrescue`.

## Usar la ISO

1. Arranca el equipo o VM desde `joss_installer.iso`.
2. En el menu de GRUB elige `Joss Red Installer (Live RAM Mode - Recommended)`.
3. Al cargar el escritorio live se abre Joss Red Installer automaticamente.
4. En la bienvenida pulsa `EMPEZAR`.
5. Selecciona o busca el archivo `install.wim` o `install.swm`.
6. Selecciona el disco de destino.
7. Elige el modo de particion:
   - `Formatear GPT`: crea ESP FAT32, MSR y particion NTFS para Windows.
   - `Formatear MBR`: crea una particion NTFS activa para BIOS heredado.
   - `Usar Particiones Existentes`: asume que ya montaste manualmente `/mnt/windows` y, si aplica, `/mnt/efi`.
8. Confirma la instalacion.
9. Al terminar pulsa `REINICIAR SISTEMA`.

## Que Hace el Instalador

En Linux live, el instalador ejecuta este flujo:

- monta unidades externas para facilitar la busqueda del WIM/SWM;
- lista discos fisicos con `lsblk`;
- bloquea discos detectados como sistema/live para reducir riesgo de seleccionar el medio de arranque;
- prepara particiones con `parted`, `mkfs.vfat` y `mkfs.ntfs`;
- monta destino en `/mnt/windows` y la ESP en `/mnt/efi`;
- aplica la imagen con `wimlib-imagex apply`;
- copia archivos de arranque de `Windows/Boot`;
- parchea BCD con `linux_live_iso/tools/patch_bcd.py`;
- registra entrada UEFI con `efibootmgr` o escribe arranque legacy con `ms-sys`;
- inyecta marca OEM y variable `JOSS_RED_VERSION` en el registro offline con `hivexregedit`;
- desmonta particiones y marca la instalacion como completa.

## Validacion Rapida

Desde Windows o WSL puedes comprobar el estado del proyecto:

```bash
flutter analyze
flutter test
```

Tambien puedes verificar que los archivos criticos existan:

```bash
test -f linux_live_iso/build_iso.sh
test -f linux_live_iso/setup_wsl.sh
test -f linux_live_iso/tools/patch_bcd.py
test -f linux_live_iso/configs/joss-installer.service
test -f linux_live_iso/configs/grub.cfg
```

## Notas Importantes

- La ISO no necesita incluir el WIM. El WIM puede estar en un USB o disco externo.
- El modo GPT/UEFI es el recomendado para equipos modernos.
- El modo MBR/BIOS existe para equipos heredados.
- `Live RAM Mode` carga el live en memoria; despues de cargar, es mas tolerante si el medio de instalacion se desconecta, pero el WIM debe seguir accesible si vive en otro USB.
- La instalacion destruye datos cuando se usa `Formatear GPT` o `Formatear MBR`.
- Si el equipo usa Secure Boot estricto, puede requerir desactivarlo o firmar la cadena de arranque.

## Solucion de Problemas

Si WSL no encuentra el proyecto, confirma que Windows este montado en `/mnt/c` y que la ruta exista:

```bash
ls /mnt/c/Users/joss/Documents/proyectos/JossZilla
```

Si `build_iso.sh` falla por montajes del chroot, limpia montajes previos y vuelve a ejecutar:

```bash
sudo umount -lf /tmp/joss_installer_iso_build/chroot/proc 2>/dev/null || true
sudo umount -lf /tmp/joss_installer_iso_build/chroot/sys 2>/dev/null || true
sudo umount -lf /tmp/joss_installer_iso_build/chroot/dev/pts 2>/dev/null || true
sudo umount -lf /tmp/joss_installer_iso_build/chroot/dev 2>/dev/null || true
```

Si el instalador no ve el WIM, usa `BUSCAR`; el explorador integrado navega por `/`, `/media` y `/mnt` en Linux live.

Si Windows no arranca despues de aplicar el WIM, revisa en los logs del instalador la fase `Configuring bootloader`. Esa fase depende de que el WIM contenga `Windows/Boot/EFI` o `Windows/Boot/DVD` y de que `patch_bcd.py`, `efibootmgr`/`ms-sys` se hayan ejecutado correctamente.
