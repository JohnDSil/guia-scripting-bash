# Capítulo 4. Condicionales

## Objetivos

- Ejecutar instrucciones según el resultado de una condición.
- Utilizar las estructuras `if`, `elif` y `else`.
- Comprobar características de archivos y rutas.
- Utilizar `case` para seleccionar acciones según un valor.
- Gestionar entradas no reconocidas.

## 1. Condicional `if`

La estructura `if` permite ejecutar instrucciones dependiendo del resultado de una condición.

Ejemplo:

```bash
#!/bin/bash

read -p "Introduce un número: " numero

if [ "$numero" -gt 0 ]; then
    echo "Es positivo"
else
    echo "No es positivo"
fi
```

En este ejemplo:

- `if` inicia la condición.
- `[ "$numero" -gt 0 ]` comprueba si el número es mayor que cero.
- `then` introduce las instrucciones que se ejecutan si la condición se cumple.
- `else` introduce las instrucciones alternativas.
- `fi` cierra la estructura condicional.

En las expresiones con corchetes, es importante dejar espacios entre los corchetes y la condición.

### 1.1. Utilizar `elif`

La instrucción `elif` permite comprobar una condición adicional cuando la condición anterior no se cumple.

Ejemplo:

```bash
#!/bin/bash

read -p "Introduce un número entero: " numero

if [ "$numero" -gt 0 ]; then
    echo "El número es positivo"
elif [ "$numero" -lt 0 ]; then
    echo "El número es negativo"
else
    echo "El número es cero"
fi
```

Este ejemplo presupone que el usuario introduce un número entero válido.

## 2. Pruebas sobre archivos y rutas

Bash permite comprobar diferentes características de archivos y rutas mediante operadores de prueba.

Los operadores incluidos en el material son los siguientes:

| Operador | Significado |
|---|---|
| `-a` | Comprueba si una ruta existe. Es una forma antigua de esta prueba y puede resultar ambigua en determinadas expresiones. |
| `-b` | Comprueba si existe un archivo especial de bloques. |
| `-c` | Comprueba si existe un archivo especial de caracteres. |
| `-d` | Comprueba si la ruta corresponde a un directorio. |
| `-e` | Comprueba si la ruta existe. |
| `-f` | Comprueba si la ruta corresponde a un archivo regular. |
| `-h` o `-L` | Comprueba si la ruta es un enlace simbólico. |
| `-k` | Comprueba si está establecido el bit *sticky* del archivo o directorio. |
| `-p` | Comprueba si existe una tubería con nombre (*FIFO*). |
| `-s` | Comprueba si el archivo existe y tiene un tamaño mayor que cero. |
| `-t` | Comprueba si un descriptor de archivo está asociado a una terminal. |
| `-S` | Comprueba si existe un archivo de tipo socket. |

### 2.1. Comprobar un archivo regular

```bash
#!/bin/bash

if [ -f "datos.txt" ]; then
    echo "Existe un archivo regular llamado datos.txt"
else
    echo "No se encuentra un archivo regular con ese nombre"
fi
```

La prueba `-f` comprueba que la ruta corresponde a un archivo regular. No debe confundirse con `-e`, que comprueba la existencia de una ruta.

### 2.2. Comprobar un directorio

```bash
#!/bin/bash

if [ -d "documentos" ]; then
    echo "La ruta es un directorio"
else
    echo "La ruta no corresponde a un directorio"
fi
```

### 2.3. Comprobar si una ruta existe

```bash
#!/bin/bash

read -p "Introduce una ruta: " ruta

if [ -e "$ruta" ]; then
    echo "La ruta existe"
else
    echo "La ruta no existe"
fi
```

Se utilizan comillas dobles alrededor de la variable para que una ruta que contenga espacios se trate como un único argumento.

**Nota:** algunas pruebas, como `-b`, `-c`, `-p` y `-S`, corresponden a tipos especiales de archivos. En un equipo de uso habitual es posible que no se encuentren ejemplos de todos estos tipos en las rutas que se comprueben.

## 3. Condicional `case`

La estructura `case` permite seleccionar acciones según el valor de una expresión. Resulta útil para crear menús y procesar opciones.

Ejemplo:

```bash
#!/bin/bash

read -p "Elige una opción (s/n): " opcion

case "$opcion" in
    s)
        echo "Has elegido sí"
        ;;
    n)
        echo "Has elegido no"
        ;;
    *)
        echo "Opción no reconocida"
        ;;
esac
```

En esta estructura:

- `case` inicia la selección.
- Cada patrón identifica un valor posible.
- `)` separa el patrón de las instrucciones asociadas.
- `;;` termina cada alternativa.
- `*` permite definir una alternativa general.
- `esac` cierra la estructura.

### 3.1. Utilizar patrones

Los patrones de `case` permiten agrupar varias opciones.

```bash
#!/bin/bash

read -p "Introduce una letra: " letra

case "$letra" in
    s|S)
        echo "Has elegido sí"
        ;;
    n|N)
        echo "Has elegido no"
        ;;
    *)
        echo "Entrada no reconocida"
        ;;
esac
```

En este ejemplo, `s|S` permite aceptar tanto la letra minúscula como la mayúscula. Lo mismo sucede con `n|N`.

## 4. Ejercicios

1. Pide un número entero y muestra un mensaje si es mayor que cero.
2. Amplía el ejercicio anterior para distinguir entre positivo, negativo y cero.
3. Comprueba si existe un archivo regular llamado `datos.txt`.
4. Comprueba si existe un directorio llamado `documentos`.
5. Solicita una ruta y comprueba si existe mediante `-e`.
6. Utiliza `case` para responder a las opciones `s` y `n`.
7. Modifica el ejercicio anterior para aceptar `s`, `S`, `n` y `N`.
8. Añade una opción predeterminada para entradas no reconocidas.
9. Busca en la tabla qué representa cada operador de prueba de archivos.
10. Explica la diferencia entre las pruebas `-e`, `-f` y `-d`.

## Comprobación

- [ ] He utilizado `if` y `else`.
- [ ] He practicado una estructura con `elif`.
- [ ] He utilizado pruebas sobre archivos y rutas.
- [ ] Comprendo la diferencia entre existencia, archivo regular y directorio.
- [ ] He creado una estructura `case`.
- [ ] He utilizado patrones con varias alternativas.
- [ ] He añadido una opción predeterminada.
