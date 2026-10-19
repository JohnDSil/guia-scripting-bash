# Capítulo 5. Bucles

## Objetivos

- Repetir instrucciones mediante estructuras iterativas.
- Reconocer y utilizar los bucles `for`, `while` y `until`.
- Controlar la ejecución de los bucles con `break` y `continue`.
- Utilizar la variable especial `RANDOM`.

## 1. Bucle `for`

El bucle `for` permite ejecutar un bloque de instrucciones para cada elemento de una lista de valores.

Ejemplo:

```bash
#!/bin/bash

for numero in 1 2 3 4 5
do
    echo "$numero"
done
```

Resultado:

```text
1
2
3
4
5
```

En cada iteración, la variable `numero` toma uno de los valores indicados y se ejecuta la instrucción `echo`.

También se puede escribir el bucle en una sola línea de cabecera:

```bash
for numero in 1 2 3 4 5; do
    echo "$numero"
done
```

### 1.1. Recorrer un rango de números

Bash permite utilizar una expansión de llaves para generar una secuencia:

```bash
#!/bin/bash

for numero in {1..10}
do
    echo "$numero"
done
```

Este ejemplo muestra los números del 1 al 10.

## 2. Bucle `while`

El bucle `while` repite las instrucciones mientras la condición sea verdadera.

Ejemplo:

```bash
#!/bin/bash

contador=1

while [ "$contador" -le 5 ]
do
    echo "$contador"
    contador=$((contador + 1))
done
```

Resultado:

```text
1
2
3
4
5
```

En este ejemplo:

1. La variable `contador` comienza con el valor `1`.
2. Se comprueba si `contador` es menor o igual que `5`.
3. Si la condición se cumple, se muestra el valor.
4. Se incrementa el contador en una unidad.
5. El proceso se repite hasta que la condición deja de cumplirse.

Es importante modificar las variables que intervienen en la condición cuando sea necesario. De lo contrario, el bucle podría no terminar.

## 3. Bucle `until`

El bucle `until` repite las instrucciones mientras la condición sea falsa. Termina cuando la condición se cumple.

Ejemplo:

```bash
#!/bin/bash

contador=1

until [ "$contador" -gt 5 ]
do
    echo "$contador"
    contador=$((contador + 1))
done
```

Resultado:

```text
1
2
3
4
5
```

En este ejemplo, el bucle continúa mientras `contador` no sea mayor que `5`. Cuando el contador pasa a valer `6`, la condición se cumple y el bucle termina.

La diferencia principal es:

- `while`: repite mientras la condición sea verdadera.
- `until`: repite mientras la condición sea falsa.

## 4. Control de los bucles

Bash proporciona instrucciones para modificar el comportamiento normal de una iteración.

### 4.1. Instrucción `break`

`break` permite salir inmediatamente del bucle en el que se ejecuta.

Ejemplo:

```bash
#!/bin/bash

for numero in {1..10}
do
    if [ "$numero" -eq 5 ]; then
        break
    fi

    echo "$numero"
done

echo "Bucle terminado"
```

Resultado:

```text
1
2
3
4
Bucle terminado
```

Cuando `numero` alcanza el valor `5`, se ejecuta `break` y el bucle termina.

### 4.2. Instrucción `continue`

`continue` permite saltar el resto de las instrucciones de la iteración actual y pasar a la siguiente.

Ejemplo:

```bash
#!/bin/bash

for numero in {1..5}
do
    if [ "$numero" -eq 3 ]; then
        continue
    fi

    echo "$numero"
done
```

Resultado:

```text
1
2
4
5
```

Cuando el valor de `numero` es `3`, no se ejecuta el `echo` de esa iteración, pero el bucle continúa con los valores siguientes.

**Recuerda:** `break` termina el bucle; `continue` omite el resto de la iteración actual.

## 5. Variable `RANDOM`

Bash dispone de la variable especial `RANDOM`, que genera un valor pseudoaleatorio entero cuando se consulta.

Ejemplo:

```bash
#!/bin/bash

echo "$RANDOM"
echo "$RANDOM"
echo "$RANDOM"
```

Cada consulta puede producir un valor diferente.

Se puede utilizar para construir pequeños ejercicios de generación de números:

```bash
#!/bin/bash

numero=$((RANDOM % 10 + 1))

echo "Número generado: $numero"
```

En este ejemplo, la expresión obtiene un número entre `1` y `10`, ambos incluidos.

Los valores generados por `RANDOM` son pseudoaleatorios y no deben utilizarse como mecanismo de seguridad.

## 6. Ejercicios

1. Muestra los números del 1 al 5 con `for`.
2. Muestra los números del 1 al 10 con `while`.
3. Utiliza `until` para mostrar los números del 1 al 5.
4. Modifica un bucle para que termine al alcanzar un valor determinado.
5. Utiliza `break` para finalizar un bucle cuando el contador llegue a `5`.
6. Utiliza `continue` para omitir el número `3` durante una iteración.
7. Muestra el valor de `RANDOM` varias veces.
8. Crea un script que genere un número entre `1` y `10`.
9. Explica qué ocurriría si un bucle `while` nunca modificara una variable necesaria para que la condición dejara de cumplirse.
10. Explica con tus propias palabras la diferencia entre `break` y `continue`.

## Comprobación

- [ ] He utilizado `for`.
- [ ] He utilizado `while`.
- [ ] He utilizado `until`.
- [ ] Comprendo cuándo se ejecuta la condición de cada bucle.
- [ ] He utilizado `break` para terminar un bucle.
- [ ] He utilizado `continue` para saltar una iteración.
- [ ] He consultado la variable `RANDOM`.
- [ ] Sé reconocer situaciones que pueden provocar bucles que no terminan.
