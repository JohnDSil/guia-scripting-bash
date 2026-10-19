# Capítulo 7. Depuración y dialog

## Objetivos

- Comprobar errores de sintaxis antes de ejecutar un script.
- Observar las instrucciones que Bash lee durante la ejecución.
- Seguir la ejecución de un script y consultar las expansiones de sus comandos.
- Conocer las opciones de depuración de Bash.
- Utilizar `dialog` para mostrar mensajes, solicitar datos y crear interfaces en modo texto.

## 1. Comprobar la sintaxis

Antes de ejecutar un script, es recomendable comprobar que su sintaxis sea correcta.

La opción `-n` de Bash permite leer el script y comprobar su sintaxis sin ejecutar normalmente las instrucciones.

```bash
bash -n hola.sh
```

Si Bash detecta errores de sintaxis, mostrará información que ayudará a localizar el problema. Si no muestra errores, significa que no ha encontrado errores de sintaxis durante la comprobación.

**Importante:** que un script supere esta comprobación no garantiza que funcione correctamente. Todavía puede contener errores de lógica, rutas incorrectas o comandos que fallen durante la ejecución.

## 2. Ver la ejecución de un script

Bash dispone de opciones que permiten observar el comportamiento de un script y facilitar la detección de errores.

### 2.1. Opción `-v`

La opción `-v` muestra las líneas del script a medida que Bash las lee.

```bash
bash -v hola.sh
```

Es útil para observar el contenido del script durante su procesamiento.

### 2.2. Opción `-x`

La opción `-x` muestra las instrucciones después de realizar las expansiones correspondientes y antes de ejecutarlas. Esto permite observar los valores que se utilizan en los comandos.

```bash
bash -x hola.sh
```

Por ejemplo, si el script contiene:

```bash
#!/bin/bash

nombre="Ana"
echo "Hola, $nombre"
```

Al ejecutarlo con `bash -x`, se mostrarán líneas de seguimiento que permiten ver cómo se expande la variable `nombre` antes de ejecutar `echo`.

### 2.3. Diferencias entre las opciones

| Comando | Utilidad |
|---|---|
| `bash -n hola.sh` | Comprueba la sintaxis sin ejecutar normalmente las instrucciones. |
| `bash -v hola.sh` | Muestra las líneas del script a medida que Bash las lee. |
| `bash -x hola.sh` | Muestra las instrucciones con sus expansiones durante el seguimiento de la ejecución. |

También se pueden activar estas opciones dentro de un script:

```bash
set -v
```

```bash
set -x
```

Para desactivar cada modo, se puede utilizar `set +v` o `set +x`, respectivamente.

## 3. Introducción a `dialog`

`dialog` es una herramienta que permite crear cuadros de diálogo en modo texto. Puede utilizarse para mostrar mensajes, pedir información, solicitar confirmaciones y presentar menús.

Su disponibilidad depende del sistema y de si la herramienta está instalada. Para probar los ejemplos, se necesita un terminal compatible.

### 3.1. Mostrar un mensaje

La opción `--msgbox` muestra un mensaje con una opción para cerrarlo.

```bash
dialog --msgbox "Hola" 10 30
```

Los números `10` y `30` indican la altura y la anchura del cuadro, respectivamente.

### 3.2. Mostrar un mensaje informativo

La opción `--infobox` muestra un mensaje informativo sin esperar a que el usuario lo cierre mediante un botón.

```bash
dialog --infobox "Procesando información..." 10 40
```

Este cuadro no espera a que el usuario confirme el mensaje; el programa que lo invoca continúa su ejecución.

### 3.3. Solicitar una entrada

La opción `--inputbox` permite pedir un dato al usuario.

```bash
dialog --inputbox "Escribe tu nombre" 10 30 2> respuesta.txt
```

En este ejemplo, la entrada se redirige al archivo `respuesta.txt` mediante `2>`, ya que `dialog` escribe normalmente el texto introducido en la salida de error estándar.

Para recuperar el valor en una variable, se puede utilizar:

```bash
nombre=$(dialog --inputbox "Escribe tu nombre" 10 30 2>&1 1>/dev/tty)
```

Esta forma dirige la entrada del usuario a la salida de error estándar y la captura mediante sustitución de comandos. Requiere un terminal disponible en `/dev/tty`.

### 3.4. Solicitar confirmación

La opción `--yesno` muestra una pregunta con las opciones de respuesta afirmativa y negativa.

```bash
dialog --yesno "¿Quieres continuar?" 10 30
```

El resultado se comunica mediante el código de salida del comando. Se puede comprobar con `$?`:

```bash
dialog --yesno "¿Quieres continuar?" 10 30
respuesta=$?

if [ "$respuesta" -eq 0 ]; then
    echo "Has seleccionado Sí"
else
    echo "No se ha confirmado la continuación"
fi
```

El código `0` indica que se ha seleccionado «Sí». Otros códigos pueden indicar una respuesta negativa o una salida del cuadro; si se necesita distinguir cada caso, hay que comprobar los códigos documentados por la versión de `dialog` instalada.

### 3.5. Mostrar un archivo de texto

La opción `--textbox` permite consultar un archivo dentro de un cuadro de texto.

```bash
dialog --textbox "GUIA.md" 20 60
```

El archivo debe existir en la ruta indicada y ser accesible para el usuario.

### 3.6. Otras opciones del material

El material también presenta estas opciones:

- `--nocancel`: elimina la opción de cancelar de los cuadros compatibles.
- `--calendar`: muestra un calendario para seleccionar una fecha.
- `--menu`: muestra un menú con varias opciones.
- `--infobox`: muestra información sin esperar una confirmación.
- `--msgbox`: muestra un mensaje que el usuario puede cerrar.

Ejemplo de menú:

```bash
dialog --menu "Selecciona una opción" 15 50 3 \
    1 "Saludar" \
    2 "Mostrar fecha" \
    3 "Salir" \
    2> seleccion.txt
```

La opción elegida se guarda en `seleccion.txt`. Se puede leer posteriormente con:

```bash
seleccion=$(cat seleccion.txt)
echo "Opción seleccionada: $seleccion"
```

## 4. Ejemplo práctico: depuración y dialog

El siguiente script combina una variable, una comprobación de sintaxis sencilla y un cuadro de mensaje:

```bash
#!/bin/bash

nombre="${1:-Usuario}"

echo "Preparando saludo para $nombre"

dialog --msgbox "Hola, $nombre" 10 40
```

Guarda el contenido como `saludo.sh`.

Primero, comprueba la sintaxis:

```bash
bash -n saludo.sh
```

Después, ejecútalo con seguimiento:

```bash
bash -x saludo.sh Ana
```

Si `dialog` está instalado y el entorno dispone de un terminal compatible, se mostrará un cuadro con el saludo.

## Ejercicios

1. Comprueba la sintaxis de un script con `bash -n`.
2. Introduce un error de sintaxis intencionado y comprueba el mensaje que muestra Bash.
3. Ejecuta un script con `bash -v` y observa las líneas que se muestran.
4. Ejecuta un script con `bash -x` y observa las expansiones de sus variables.
5. Explica la diferencia entre `-v` y `-x`.
6. Prueba `dialog --msgbox` si la herramienta está disponible.
7. Modifica el mensaje mostrado por `dialog`.
8. Prueba `--inputbox` y revisa el archivo donde se guarda la respuesta.
9. Prueba `--yesno` y consulta el código de salida mediante `$?`.
10. Prueba `--textbox` con un archivo de texto existente.
11. Investiga las opciones `--calendar` y `--menu` en el entorno de prácticas.
12. Explica cuándo utilizarías `bash -n`, `bash -v` y `bash -x`.

## Comprobación

- [ ] He comprobado la sintaxis con `bash -n`.
- [ ] Comprendo que una comprobación de sintaxis no garantiza que el programa funcione correctamente.
- [ ] He probado `bash -v`.
- [ ] He probado `bash -x`.
- [ ] Comprendo la diferencia entre las opciones `-v` y `-x`.
- [ ] Conozco la función de `--msgbox`, `--inputbox` y `--yesno`.
- [ ] Comprendo cómo se utiliza la redirección para guardar la entrada de `dialog`.
- [ ] He identificado las opciones `--infobox`, `--nocancel`, `--calendar` y `--menu`.
