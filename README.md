# Requiem Installer

> [!NOTE]
> **Requiem Installer** es un instalador live moderno e interactivo para sistemas operativos Windows, desarrollado con **Flutter** para entornos **Linux Live (Debian Bookworm)**. El proyecto automatiza el particionado, el despliegue directo de archivos WIM/SWM, y la inyección offline de arranque y configuraciones de registro desde una interfaz premium de alto rendimiento.

---

## 🚀 Características Clave

* **Despliegue Multi-Plataforma**: Diseñado para correr en un entorno autónomo Linux Live ISO (Debian Bookworm) y en modo utilitario post-instalación (Desktop Tools) sobre Windows.
* **Particionado Autónomo**: Soporte completo para esquemas de partición GPT (UEFI) y MBR (Legacy BIOS) de forma automatizada mediante `parted` y `sfdisk`.
* **Escritura Directa de WIM/SWM**: Despliegue al volumen NTFS desmontado con `wimlib-imagex`, preservando ACL, ADS, reparse points y metadatos NTFS.
* **Configurador de Arranque en Linux**: Reconstrucción del almacén BCD y configuración de UEFI Boot Manager y registros MBR/VBR mediante scripts híbridos (`BCD-SYS`, `patch_bcd.py` con `hivex` y `ms-sys`).
* **Integración y Ajuste OEM**: Inyección directa de información del fabricante, logos corporativos, variables de entorno y controladores de almacenamiento esenciales en las colmenas offline de Windows.
* **Consola de Post-Instalación**: Automatización de activaciones KMS (Windows y Office) e instalación masiva de programas de desarrollo usando `winget`.

---

## 🛠️ Arquitectura y Tecnologías

### Frontend (Interfaz Gráfica)
* **Flutter Desktop (Linux & Windows)**: Interfaz de usuario responsiva con estética premium basada en efectos de glassmorphism y micro-animaciones dinámicas.
* **Provider (Dart)**: Arquitectura reactiva y gestión de estado mediante un controlador centralizado (`MainController`).
* **Window Manager**: Control de comportamiento nativo de pantallas y bordes de ventana.

### Backend & Sistema (Live ISO)
* **Debian Bookworm (Base Live)**: Entorno mínimo bootstrap montado en memoria RAM usando `live-boot`.
* **Gestor Gráfico Ligero**: Xorg Server con el gestor de ventanas Openbox configurado en pantalla completa sin decoraciones.
* **Comandos del Sistema**: `sgdisk`, `parted`, `sfdisk`, `ntfs-3g`, `wimtools`, `efibootmgr`, `hivex`, `sbverify` y `ms-sys`.

El flujo técnico, sus validaciones previas al reinicio y las limitaciones conocidas están documentados en [`docs/instalacion_windows_desde_linux.md`](docs/instalacion_windows_desde_linux.md).
* **Edición del Registro (Python + hivex)**: Manipulación de registros binarios mediante `hivexregedit` y Python con enlace nativo a `hivex` para evitar API de Microsoft.

---

## 💻 Flujo de Trabajo del Desarrollador

### 1. Preparación del Entorno WSL2 (Ubuntu)
Para compilar la aplicación y preparar el constructor de ISOs, configure su entorno de desarrollo ejecutando en la consola de WSL:

```bash
chmod +x linux_live_iso/setup_wsl.sh
./linux_live_iso/setup_wsl.sh
```
*Este script instalará las dependencias necesarias de compilación (CMake, Ninja, GTK3) y clonará la versión adecuada de Flutter (`3.44.1`) en `/opt/flutter`.*

### 2. Compilación de la ISO Arrancable
Para realizar el bootstrap del Debian live chroot, compilar el binario de Flutter e integrarlo todo en una imagen ISO híbrida UEFI+BIOS, ejecute en la raíz del proyecto en WSL:

```bash
sudo ./linux_live_iso/build_iso.sh
```

El instalador empaquetará las herramientas y generará el archivo resultante en la raíz:
`requiem_installer.iso`

---

## 💿 Flujo de Instalación para el Usuario

1. **Arranque**: Inicie el equipo o máquina virtual utilizando el archivo `requiem_installer.iso`.
2. **Bienvenida**: El escritorio cargará automáticamente el instalador de Flutter en pantalla completa. Presione **EMPEZAR**.
3. **Selección de WIM/SWM**: Busque o autodetecte la imagen de Windows (`install.wim` o `install.swm`) desde discos duros, SSDs o unidades USB externas montadas.
4. **Administración de Discos**:
   * Seleccione la unidad física de destino.
   * Elija el esquema de partición: **Formatear GPT (UEFI)** o **Formatear MBR (BIOS Legacy)**.
5. **Instalación**: Confirme la advertencia de pérdida de datos. El instalador particionará, aplicará la imagen, configurará el almacén BCD de Windows y desmontará las particiones limpiamente.
6. **Reinicio**: Presione **REINICIAR SISTEMA** y retire el medio de instalación para iniciar su nuevo Windows.

---

## 🔧 Solución de Problemas

### Error al Compilar la ISO (Puntos de Montaje Activos)
Si la compilación se interrumpe y `build_iso.sh` falla al intentar recrear los directorios, limpie los montajes del chroot con:
```bash
sudo umount -lf /tmp/requiem_installer_iso_build/chroot/proc 2>/dev/null || true
sudo umount -lf /tmp/requiem_installer_iso_build/chroot/sys 2>/dev/null || true
sudo umount -lf /tmp/requiem_installer_iso_build/chroot/dev/pts 2>/dev/null || true
sudo umount -lf /tmp/requiem_installer_iso_build/chroot/dev 2>/dev/null || true
```

### Windows no inicia (Pantalla Negra o Cursor Parpadeante)
* **BIOS Mismatch**: Confirme si el instalador fue arrancado en modo UEFI pero instaló en modo MBR, o viceversa. Utilice el particionado correspondiente a la BIOS de su equipo.
* **Falta de BCD**: Revise los logs del instalador en la fase de configuración de bootloader. La imagen WIM utilizada debe contener la estructura de archivos en `Windows/Boot/EFI` o `Windows/Boot/PCAT`.

---

## 📜 Licencia y Autoría

Este software está sujeto a los términos de la **Requiem Installer Public License** (consulte [license.txt](license.txt)). Es libre para uso comercial y permite sublicenciamiento siempre y cuando se mantenga de manera notoria la atribución al creador.

**Creado por**:
Melchor Estrada José Luis - Joss Red - [joss.red](https://joss.red) (web) - [josprox.com](https://josprox.com) (web)
