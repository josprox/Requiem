# Requiem Installer — Documentación Técnica

Bienvenido a la documentación técnica oficial de **Requiem Installer**.

## Índice de Documentos

| Documento | Descripción |
|---|---|
| [distribucion.md](./distribucion.md) | Workflow manual, artefactos Windows/ISO y publicación de Releases en borrador |
| [medios_y_puente_ipv4.md](./medios_y_puente_ipv4.md) | ISO simple, empaquetado de WIM y despliegue directo por puente IPv4 |
| [arquitectura.md](./arquitectura.md) | Estructura general del proyecto, flujos de despliegue en Linux y arquitectura del pipeline |
| [instalacion_windows_desde_linux.md](./instalacion_windows_desde_linux.md) | Especificación técnica del despliegue WIM sin WinPE, BCD y Bootloader |
| [diagnostico_errores.md](./diagnostico_errores.md) | Diagnóstico de errores conocidos de arranque, firmware e imágenes |
| [fix_etfsboot.md](./fix_etfsboot.md) | Histórico de correcciones del pipeline |

---

## Modos de Operación

### 💿 Modo ISO (Linux Live ISO)
* **Entorno**: Debian Bookworm Live x86_64 con gestor gráfico Openbox en pantalla completa.
* **Función**: Despliegue directo de archivos `install.wim` o `install.swm` a particiones NTFS desmontadas usando `wimlib-imagex`.
* **Bootloader**: Construcción autónoma de almacenes BCD (UEFI/BIOS), registro NVRAM vía `efibootmgr` y sectores MBR/VBR con `ms-sys`.
* **Caché de Compilación**: Pipeline optimizado en `linux_live_iso/build_iso.sh` con caché de 4 niveles en `.build_cache`.

### 🛠️ Modo Tools (Desktop Tools)
* **Entorno**: Windows Desktop (Post-Instalación).
* **Función**: Instalación desatendida de paquetes de desarrollo y software corporativo mediante `winget`.
* **Extras**: Activación KMS de Windows/Office y branding OEM.
* **Distribución**: Descarga de ISO simple, generación de ISO autónoma con WIM y servidor puente IPv4.
