# Instalación de Windows desde Linux

Este documento describe el flujo implementado por Requiem para desplegar Windows sin WinPE. La referencia técnica de diseño es `Instalador Windows Desde Entorno Linux.pdf`.

## Diagnóstico corregido

El fallo observado no estaba en la extracción del WIM. El instalador permitía crear un destino GPT/UEFI desde una sesión live arrancada en BIOS Legacy. En ese entorno `efibootmgr` no puede registrar variables UEFI, pero el error sólo se registraba como advertencia y el instalador informaba éxito. Al reiniciar la misma VM en BIOS, el firmware intentaba arrancar un disco GPT que sólo contenía un cargador UEFI; el resultado era la pantalla negra con un guion.

Había tres riesgos adicionales:

- el WIM se aplicaba sobre `/mnt/windows`, en vez de directamente al volumen NTFS desmontado;
- UEFI copiaba una `BCD-Template` y dependía primero de un parche binario propio, aunque la ISO ya incluía BCD-SYS;
- no se comprobaban de forma vinculante el GUID de la ESP, la estructura del BCD, la correspondencia con el PARTUUID ni la persistencia de la entrada NVRAM.

## Flujo UEFI actual

1. Requiem exige que la sesión live se haya iniciado mediante UEFI y que `efivars` esté disponible.
2. `wipefs` elimina firmas residuales y `sgdisk --zap-all` elimina GPT/MBR anteriores.
3. `sgdisk` crea:
   - partición 1: 512 MiB, tipo `EF00`, ESP;
   - partición 2: 16 MiB, tipo `0C01`, MSR;
   - partición 3: espacio principal menos 1024 MiB, tipo `0700`, Windows;
   - partición 4: 1024 MiB, tipo `2700`, Recovery, con atributos GPT 0 y 63.
4. La ESP se formatea FAT32 y Windows/Recovery se formatean NTFS.
5. La partición Windows permanece desmontada durante:

   ```bash
   wimlib-imagex apply install.wim INDEX /dev/DESTINO_WINDOWS
   ```

6. Tras sincronizar, Windows y la ESP se montan en `/mnt/windows` y `/mnt/efi`.
7. BCD-SYS v2.2, fijado al commit `a2b63010835b10cb4f697d1872966d1c3c6e50ce`, copia los archivos Microsoft y genera un BCD limpio con referencias al volumen Windows real.
8. Si BCD-SYS no está disponible, se conserva el parcheador interno como ruta de emergencia; la salida queda sometida a la misma validación.
9. Se garantiza la presencia de:

   ```text
   /mnt/efi/EFI/Microsoft/Boot/bootmgfw.efi
   /mnt/efi/EFI/Microsoft/Boot/BCD
   /mnt/efi/EFI/BOOT/BOOTX64.EFI
   ```

10. `patch_bcd.py --validate-uefi` abre la colmena, comprueba el objeto Windows Boot Manager, `winload.efi`, `device`, `osdevice` y los identificadores GPT del volumen Windows.
11. `efibootmgr` crea o reutiliza una entrada que debe coincidir simultáneamente con la etiqueta, el PARTUUID de la ESP y la ruta `\\EFI\\Microsoft\\Boot\\bootmgfw.efi`. La entrada se mueve al inicio de `BootOrder` y se vuelve a leer para confirmar persistencia.
12. `sync` y `blockdev --flushbufs` se ejecutan antes de desmontar.

## Flujo BIOS Legacy

BIOS sólo se permite cuando la sesión live también arrancó en BIOS. Se crea MBR con una partición NTFS activa. BCD-SYS es la ruta primaria y `ms-sys` escribe MBR/VBR NT6+. El BCD se valida contra la firma MBR y el desplazamiento real de la partición antes de permitir el reinicio.

No se instala GRUB en el flujo UEFI. El puente GRUB existente se conserva únicamente como compatibilidad secundaria para layouts Legacy divididos.

## Validación obligatoria antes del reinicio

- el modo de firmware live coincide con el layout de destino;
- los cuatro GUID de tipo GPT son correctos;
- ESP reporta `vfat`; Windows y Recovery reportan `ntfs`;
- `wimlib-imagex` terminó con código 0 y `/mnt/windows/Windows` existe;
- `Windows/Boot/EFI` existe en el sistema aplicado;
- `bootmgfw.efi`, `BCD` y `BOOTX64.EFI` existen y no están vacíos;
- el BCD se puede abrir como colmena y referencia la partición Windows correcta;
- la ESP tiene el GUID de tipo UEFI;
- si `sbverify` está disponible, se inspecciona la firma de `bootmgfw.efi`;
- `efibootmgr -v` devuelve la entrada del PARTUUID y loader esperados;
- la entrada Windows encabeza `BootOrder`;
- los buffers del disco se sincronizaron.

Si falla cualquiera de las comprobaciones vinculantes, `installationComplete` permanece falso y el botón de reinicio no puede iniciar un reinicio automático.

## Límites reales

- Un firmware con NVRAM bloqueada puede rechazar `efibootmgr`. Requiem deja `EFI/BOOT/BOOTX64.EFI`, pero bloquea el éxito automático porque no puede garantizar que el OEM use el fallback.
- Secure Boot exige que la versión de Windows del WIM siga siendo confiable para las bases `db/dbx` actuales del firmware. Copiar el binario conserva su firma, pero una firma antigua o revocada no puede repararse desde Requiem.
- El despliegue no sustituye el servicing offline de controladores de DISM. Equipos Intel VMD/RAID pueden necesitar que el WIM ya contenga el controlador de almacenamiento.
- La partición Recovery queda preparada, pero registrar WinRE requiere una fase posterior dentro de Windows (`reagentc`) o servicing offline adicional.

