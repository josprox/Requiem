# Localización

Requiem usa `intl_utils` para generar la clase `S` desde los recursos ARB de `lib/l10n`. `MaterialApp` no fija `locale`, por lo que Flutter toma automáticamente el idioma configurado en el equipo. Mientras un idioma no tenga un ARB traducido, Flutter usa español (`es`) como respaldo.

## Catálogo de traducción por lote

El archivo `translations/requiem_es.json` es el catálogo plano para la herramienta de traducción. Su formato es estrictamente `etiqueta -> contenido`; no se deben cambiar las etiquetas ni los marcadores entre llaves, por ejemplo `{error}`.

Los 30 idiomas de destino previstos son: `ar`, `bn`, `de`, `en`, `es`, `fr`, `hi`, `id`, `it`, `ja`, `ko`, `nl`, `pl`, `pt`, `pt_BR`, `ru`, `th`, `tr`, `uk`, `ur`, `vi`, `zh`, `zh_Hans`, `zh_Hant`, `cs`, `da`, `fi`, `no`, `sv` y `ro`.

## Importar una traducción

1. Copia el catálogo traducido a `lib/l10n/intl_<idioma>.arb`, por ejemplo `intl_en.arb`.
2. Añade `"@@locale": "<idioma>"` al inicio. Conserva las anotaciones `@clave` y los `placeholders` del ARB español cuando correspondan.
3. Genera el código con `dart run intl_utils:generate`.
4. Verifica el proyecto con `flutter analyze`.

Para usar una cadena en la interfaz, importa `package:requiem_tools/generated/l10n.dart` y usa `S.of(context).nombreDeLaEtiqueta`. No se debe fijar `locale` salvo que en el futuro se implemente un selector manual de idioma.
