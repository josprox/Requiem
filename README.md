# Joss Red Installer & ISO Builder

Instalador personalizado de Windows de alto rendimiento con orquestación directa de DISM y optimización automatizada del sistema, diseñado para entornos de recuperación, despliegue rápido y WinPE.

## Requisitos Previos

Antes de compilar, asegúrate de tener instalado en tu sistema:
1. **Flutter SDK** (versión `^3.11.5`).
2. **Visual Studio** con la carga de trabajo *Desarrollo para el escritorio con C++* (necesario para compilar aplicaciones nativas de Windows en Flutter).
3. Conexión a internet para la descarga de dependencias.

---

## 🚀 Guía de Compilación desde Cero

### 1. Descargar Dependencias
Abre tu consola de comandos en la carpeta raíz del proyecto y ejecuta:
```powershell
flutter pub get
```

### 2. Compilar la Aplicación Windows
Compila el binario ejecutable optimizado para producción de la aplicación:
```powershell
flutter build windows
```
Esto generará los binarios compilados en la ruta:
`build/windows/x64/runner/Release/`

---

## 💿 Cómo Generar la ISO Personalizada de WinPE

El creador de ISO ya **no requiere copiar el archivo `install.wim` dentro de la ISO** (el selector de WIM integrado a nivel de aplicación permite seleccionarlo al vuelo durante la instalación real desde un USB, disco externo, etc.).

> [!IMPORTANT]
> El proceso de creación de ISO utiliza **DISM.exe** para montar el WIM base WinPE, lo cual **requiere obligatoriamente permisos de Administrador**. Asegúrate de iniciar tu consola o aplicación con privilegios elevados.

### Método A: Desde la interfaz de Flutter (Como Administrador)
1. Abre tu consola de PowerShell/CMD como **Administrador** y ejecuta:
   ```powershell
   flutter run -d windows
   ```
2. En la pantalla **Creador de ISO**:
   * **Imagen de Windows de Origen (Opcional):** Puedes dejarlo en blanco o seleccionar un WIM para embeberlo.
   * **Destino de Salida:** Selecciona la ruta de destino y nombre donde se guardará la ISO (ej. `joss_installer.iso`).
3. Haz clic en **CREAR ISO AHORA**.

### Método B: Mediante script de consola (Como Administrador)
Si prefieres no usar la UI para compilar la ISO:
1. Abre tu consola de PowerShell/CMD como **Administrador**.
2. Ejecuta el script de automatización Dart:
   ```powershell
   dart scratch/build_iso_cli.dart
   ```
El script montará la imagen base PE, inyectará los binarios de la aplicación de Flutter compilada, agregará las librerías VC++ DLLs necesarias, configurará el script de arranque (`winpeshl.ini` + `find_installer.cmd`) y generará el archivo `.iso` arrancable sin incluir el WIM pesado.

---

## 🖥️ Proceso de Instalación en la VM / Equipo de Destino

Una vez generada la ISO, puedes montarla en VMware o grabarla en una unidad USB arrancable.

1. **Arrancar el Equipo:** Arranca el sistema con la ISO. WinPE iniciará e invocará de manera automática a **Joss Red Installer** en español.
2. **Buscar la Imagen WIM:** Si el archivo WIM no se detecta de forma automática en los directorios de arranque comunes, haz clic en **BUSCAR**. Esto abrirá nuestro **Explorador de Archivos Integrado** (diseñado especialmente para WinPE) donde podrás navegar libremente por todas tus unidades de almacenamiento y seleccionar el archivo de instalación.
3. **Seleccionar Disco de Destino:** Selecciona la unidad física limpia para la instalación. El instalador bloqueará los discos de sistema actuales para evitar pérdidas accidentales.
4. **Elegir Modo de Partición:**
   * **Formatear GPT (Recomendado):** Ideal para sistemas modernos UEFI.
   * **Formatear MBR (BIOS Heredado):** Para sistemas antiguos en modo Legacy.
   * **Usar Particiones Existentes:** Conserva la estructura de la unidad instalando en la ruta `W:` actual.
5. **Confirmar e Instalar:** Revisa los detalles y pulsa **CONFIRMAR E INSTALAR**. El sistema realizará el formateo, aplicará la imagen con DISM y optimizará el registro de forma 100% automatizada.
