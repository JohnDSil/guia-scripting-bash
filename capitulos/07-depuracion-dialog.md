
# Capítulo 7. Depuración y dialog

## Objetivos

- Comprobar errores de sintaxis.
- Observar la ejecución de un script.
- Reconocer las opciones de depuración.
- Conocer los ejemplos de `dialog` del material.

## 1. Comprobar la sintaxis

El material presenta:

```bash
bash -n hola.sh
```

Esta opción permite comprobar la sintaxis sin ejecutar normalmente el contenido del script.

## 2. Ver la ejecución

Para consultar información durante la ejecución, el material incluye:

```bash
bash -v hola.sh
bash -x hola.sh
```

Estas opciones permiten observar el contenido leído y seguir la ejecución con información de depuración.

## 3. dialog

El material incluye `dialog` para mostrar elementos de interfaz en modo texto. Su disponibilidad depende del entorno donde se pruebe el script.

Ejemplo de mensaje:

```bash
dialog --msgbox "Hola" 10 30
```

Ejemplo de entrada:

```bash
dialog --inputbox "Escribe tu nombre" 10 30 2> respuesta.txt
```

Ejemplo de confirmación:

```bash
dialog --yesno "¿Quieres continuar?" 10 30
```

Ejemplo para mostrar un archivo:

```bash
dialog --textbox "GUIA.md" 20 60
```

El material también menciona opciones como `--infobox`, `--nocancel`, `--calendar` y `--menu`.

## Ejercicios

1. Comprueba la sintaxis de un script con `bash -n`.
2. Ejecuta un script con `bash -v`.
3. Ejecuta un script con `bash -x`.
4. Prueba el ejemplo `dialog --msgbox` si la herramienta está disponible.
5. Modifica el mensaje mostrado por `dialog`.
6. Prueba el ejemplo de entrada y revisa el archivo de respuesta.
7. Explica cuándo utilizarías cada una de las opciones de depuración.

## Comprobación

- [ ] He probado `bash -n`.
- [ ] He probado `bash -v`.
- [ ] He probado `bash -x`.
- [ ] Comprendo para qué se presentan los ejemplos de `dialog`.
