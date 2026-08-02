# Medios con WIM y puente IPv4

Requiem Tools para Windows incorpora la sección **ISO y Puente**. Esta sección trabaja con la ISO base publicada en el último GitHub Release del repositorio y ofrece tres flujos.

## ISO simple

**Obtener ISO para instalación solamente** descarga y guarda la ISO Live oficial sin modificarla. Al arrancar, el instalador mantiene el flujo tradicional: busca `install.wim` o `install.swm` en medios montados y permite seleccionarlo manualmente.

## ISO autónoma con WIM

1. Seleccionar un archivo `.wim` local.
2. Pulsar **Generar ISO** y elegir el destino.
3. Requiem descarga o reutiliza la ISO base en caché.
4. `xorriso` reproduce el arranque híbrido BIOS/UEFI e incorpora:

```text
/requiem/payload/install.wim
/requiem/payload/manifest.json
```

El manifiesto registra nombre original, tamaño, SHA-256, índice y fecha de creación. La ISO usa nivel 3 para admitir un WIM mayor de 4 GiB.

Durante el arranque Live, `WimScannerService` da prioridad al payload integrado. Si existe, la pantalla para escoger WIM se omite y se abre directamente la selección del disco de destino. El menú GRUB permanece sin cambios.

## Puente IPv4

El puente funciona únicamente con la ISO simple. El equipo Windows actúa como servidor:

1. Selecciona el WIM y una dirección IPv4 privada.
2. Exporta una vez el índice 1 a un WIM compatible con tuberías mediante `wimlib-imagex --pipable`.
3. Publica metadatos por `GET /requiem/v1/info` y la imagen por `GET /requiem/v1/image` en TCP 40124.
4. Anuncia el servidor mediante broadcast UDP en el puerto 40123.

El cliente Live permite asociarse primero a un SSID mediante NetworkManager, descubrir el puente o introducir manualmente la IPv4. `curl` entrega la respuesta HTTP a la entrada estándar de `wimlib-imagex`; los datos se aplican directamente al volumen NTFS de destino y no se guarda un WIM temporal en el cliente. La imagen Live incluye firmware común para adaptadores Intel, Realtek, Atheros y Broadcom.

```text
Windows central: WIM -> exportación pipable -> HTTP
                                             |
Live cliente:    HTTP -> wimlib stdin -> volumen NTFS
```

### Requisitos y seguridad

- Servidor y clientes deben estar conectados previamente a la misma red Wi-Fi o LAN IPv4.
- Windows Defender Firewall debe permitir Requiem en redes privadas cuando lo solicite.
- Algunos puntos de acceso aíslan clientes o bloquean broadcast; en ese caso se utiliza la IP manual.
- El protocolo actual usa HTTP sin autenticación. Debe utilizarse sólo en una red privada y confiable durante el despliegue.
- El servidor prepara y distribuye el índice 1 del WIM. No es una clonación sector por sector: cada cliente conserva el flujo normal de particionado, aplicación WIM, BCD, registro y sincronización final de Requiem.

## Herramientas incluidas en Windows

El workflow de distribución incorpora `xorriso` y sus DLL de MSYS2 en `tools/xorriso`, además del paquete oficial `wimlib` para Windows en `tools/wimlib`. Tanto el ZIP portable como Inno Setup incluyen esas carpetas.
