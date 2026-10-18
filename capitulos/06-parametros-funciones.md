
# Capítulo 5. Bucles

## Objetivos

- Repetir instrucciones.
- Reconocer `for`, `while` y `until`.
- Utilizar `break` y `continue`.

## 1. Bucle for

Ejemplo:

```bash
#!/bin/bash
for numero in 1 2 3 4 5
do
    echo "$numero"
done
```

El bucle recorre los valores indicados y ejecuta las instrucciones para cada uno.

## 2. Bucle while

Ejemplo:

```bash
#!/bin/bash
contador=1

while [ "$contador" -le 5 ]
do
    echo "$contador"
    contador=$((contador+1))
done
```

El bucle continúa mientras la condición se cumpla.

## 3. Bucle until

`until` permite repetir instrucciones hasta que la condición se cumpla.

```bash
#!/bin/bash
contador=1

until [ "$contador" -gt 5 ]
do
    echo "$contador"
    contador=$((contador+1))
done
```

## 4. Control de los bucles

El material incluye estas instrucciones:

- `break`: permite salir de un bucle.
- `continue`: permite continuar con la siguiente iteración.

## 5. Variable RANDOM

El material también presenta `RANDOM`:

```bash
echo "$RANDOM"
```

## Ejercicios

1. Muestra los números del 1 al 5 con `for`.
2. Muestra los números del 1 al 10 con `while`.
3. Repite un bloque usando `until`.
4. Modifica un bucle para que termine cuando se alcance un valor determinado.
5. Prueba `break` en un bucle.
6. Prueba `continue` en un bucle.
7. Muestra el valor de `RANDOM` varias veces.

## Comprobación

- [ ] He utilizado `for`.
- [ ] He utilizado `while`.
- [ ] He utilizado `until`.
- [ ] Comprendo la diferencia entre `break` y `continue`.
