# Capítulo 3. Operaciones y expresiones

## Objetivos

- Realizar operaciones aritméticas en Bash.
- Utilizar `let` y las expresiones aritméticas `$((...))`.
- Reconocer la sintaxis de `expr`.
- Utilizar `bc` para operaciones con decimales.
- Obtener el último componente de una ruta mediante `basename`.

## 1. Operaciones con `let`

El comando interno `let` permite evaluar expresiones aritméticas y asignar el resultado a una variable.

Ejemplo:

```bash
#!/bin/bash

a=5
b=3

let suma=a+b
echo "$suma"
```

Resultado:

```text
8
```

También se pueden realizar otras operaciones:

```bash
let resta=a-b
let multiplicacion=a*b

echo "$resta"
echo "$multiplicacion"
```

Los operadores aritméticos básicos son:

| Operador | Operación |
|---|---|
| `+` | Suma |
| `-` | Resta |
| `*` | Multiplicación |
| `/` | División entera |
| `%` | Resto de la división |

En las operaciones aritméticas de Bash se trabaja con números enteros. La división con `/` descarta la parte fraccionaria del resultado.

## 2. Expresiones aritméticas con `$((...))`

Otra forma de realizar operaciones es utilizar la expansión aritmética `$((...))`.

Ejemplo:

```bash
#!/bin/bash

a=5
b=3

suma=$((a+b))
resta=$((a-b))
multiplicacion=$((a*b))
division=$((a/b))
resto=$((a%b))

echo "Suma: $suma"
echo "Resta: $resta"
echo "Multiplicación: $multiplicacion"
echo "División entera: $division"
echo "Resto: $resto"
```

Resultado:

```text
Suma: 8
Resta: 2
Multiplicación: 15
División entera: 1
Resto: 2
```

La expresión `$((...))` permite escribir las operaciones directamente y guardar el resultado en una variable.

**Importante:** estas expresiones están destinadas a operaciones con enteros. Para realizar cálculos con decimales, se puede utilizar `bc`, como se explica más adelante.

## 3. Operaciones con `expr`

El comando `expr` permite evaluar expresiones y mostrar el resultado.

Ejemplo:

```bash
expr 5 + 3
```

Resultado:

```text
8
```

Los elementos de la expresión deben separarse mediante espacios.

Por ejemplo:

```bash
expr 10 - 4
expr 5 \* 3
expr 10 / 3
expr 10 % 3
```

El asterisco debe protegerse para evitar que el shell lo interprete como un patrón de nombres de archivos. En este ejemplo se utiliza `\*`.

También se puede guardar el resultado en una variable:

```bash
resultado=$(expr 5 + 3)
echo "$resultado"
```

## 4. Operaciones con decimales mediante `bc`

El comando `bc` permite realizar cálculos con números decimales. Puede recibir una expresión mediante la entrada estándar.

Ejemplo:

```bash
echo "scale=2; 5 / 2" | bc
```

Resultado esperado:

```text
2.50
```

En esta expresión:

- `echo` envía la expresión a la entrada de `bc`.
- `scale=2` establece dos posiciones decimales para las operaciones que lo admiten.
- `|` conecta la salida de `echo` con la entrada de `bc`.

Otro ejemplo:

```bash
echo "scale=2; 10 / 3" | bc
```

El resultado se muestra con la precisión decimal indicada por `scale`.

Para utilizar `bc`, el programa debe estar disponible en el sistema. Si el comando no se encuentra, será necesario comprobar su instalación.

## 5. Obtener el nombre de un archivo con `basename`

El comando `basename` obtiene el último componente de una ruta, normalmente el nombre del archivo.

Ejemplo:

```bash
basename /home/usuario/documento.txt
```

Resultado:

```text
documento.txt
```

También se puede utilizar dentro de una asignación:

```bash
ruta="/home/usuario/documento.txt"
archivo=$(basename "$ruta")

echo "$archivo"
```

Este comando resulta útil cuando un script necesita obtener el nombre de un archivo a partir de una ruta completa.

## 6. Ejercicios

1. Crea dos variables numéricas y muestra su suma utilizando `let`.
2. Calcula una resta con `$((...))`.
3. Calcula una multiplicación con `$((...))`.
4. Realiza una división entera con `$((...))`.
5. Calcula el resto de una división utilizando `%`.
6. Utiliza `expr` para sumar dos números.
7. Utiliza `expr` para multiplicar dos números, teniendo en cuenta la interpretación del asterisco por el shell.
8. Utiliza `bc` para dividir 5 entre 2 con dos decimales.
9. Utiliza `basename` con una ruta de ejemplo.
10. Guarda en una variable el resultado de una operación y muéstralo mediante `echo`.
11. Escribe el resultado esperado de cada operación antes de ejecutarla y compáralo con el resultado obtenido.

## Comprobación

- [ ] He realizado operaciones con `let`.
- [ ] He utilizado `$((...))` para calcular resultados.
- [ ] Comprendo la división entera y el operador de resto.
- [ ] He utilizado `expr` respetando los espacios de la expresión.
- [ ] He probado `bc` para calcular operaciones con decimales.
- [ ] Comprendo para qué sirve `basename`.
