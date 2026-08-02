# Distribución de Requiem

El workflow `.github/workflows/distribution.yml` construye las tres variantes oficiales de Requiem mediante una ejecución manual desde **GitHub Actions > Build Requiem Distribution > Run workflow**:

- `Requiem-Tools-Setup-vX.Y.Z.exe`: instalador de Windows generado con Inno Setup.
- `Requiem-Tools-Portable-vX.Y.Z.zip`: bundle portable de Flutter para Windows, incluyendo el ejecutable, las DLL y la carpeta `data` que necesita para funcionar.
- `Requiem-Installer-ISO-vX.Y.Z.iso`: medio Live híbrido BIOS/UEFI para desplegar imágenes WIM/SWM.
- `SHA256SUMS.txt`: sumas de integridad de todos los archivos publicados.

Los dos paquetes de Windows incluyen también `tools/xorriso` y `tools/wimlib`. Estas utilidades permiten que **ISO y Puente** genere una ISO con WIM integrado y prepare una transmisión WIM pipable sin exigir instalaciones externas en el equipo del usuario.

Antes de compilar, el workflow ejecuta `flutter analyze --no-fatal-infos` y `flutter test`. Los errores y advertencias bloquean la distribución; los avisos puramente informativos se conservan en el log sin impedir el empaquetado. El smoke test valida la pantalla inicial sin depender del texto específico de Windows o Linux, por lo que produce el mismo resultado en runners Ubuntu y equipos Windows.

La versión se obtiene exclusivamente de la clave `version:` de `pubspec.yaml`. Para `version: 1.0.1+2`, los nombres públicos y el tag usan `1.0.1`, mientras que Flutter e Inno Setup conservan `2` como número de compilación.

## Lanzamiento manual

1. Actualizar `version:` en `pubspec.yaml` y enviar el cambio. El archivo del workflow debe existir en la rama predeterminada para que GitHub muestre **Run workflow**; desde ese botón puede elegirse la rama que se distribuirá.
2. Abrir la pestaña **Actions** y ejecutar **Build Requiem Distribution**.
3. Mantener activa la opción `create_draft_release` para crear `vX.Y.Z` como Release en borrador.
4. Revisar notas y archivos en GitHub Releases y publicar manualmente cuando estén listos.

Si el workflow se repite para la misma versión y el Release sigue en borrador, reemplaza sus artefactos. Nunca sobrescribe un Release ya publicado. El job de publicación pasa `github.repository` explícitamente a GitHub CLI, por lo que no depende de un checkout ni de la presencia local de un directorio `.git`.

## Compilación local del instalador

Inno Setup invoca `inno/get_pubspec_version.ps1` durante la compilación; no mantiene una versión fija ni usa un valor de respaldo. Para compilar Flutter Windows y el instalador con la misma versión:

```powershell
.\inno\build_installer.ps1
```

Para reutilizar un bundle Windows ya compilado:

```powershell
.\inno\build_installer.ps1 -SkipFlutterBuild
```

Cuando se utiliza `-SkipFlutterBuild`, la carpeta `build/windows/x64/runner/Release/tools` debe existir si se desea producir un instalador con las funciones de empaquetado y puente. En GitHub Actions estas herramientas se descargan, verifican y agregan automáticamente antes de construir el portable y el instalador.
