# Soluciones de los ejercicios de Bash

Este documento contiene propuestas de solución para los ejercicios de `EJERCICIOS.md`.

Los scripts utilizan los conceptos de la unidad *Lenguajes de Scripting en Sistemas Operativos*. Puede haber otras soluciones correctas.

## Bloque 1. Creación de scripts y salida estándar

### Ejercicio 1. Hola, mundo

Archivo: `hola.sh`

```bash
#!/bin/bash
echo "Hola, mundo"
```

### Ejercicio 2. Presentación

```bash
#!/bin/bash
echo "Nombre: Ana"
echo "Curso: ASIR"
echo "Objetivo: aprender Bash"
```

Los datos son ejemplos y se pueden sustituir por los propios.

### Ejercicio 3. Salida sin salto de línea

```bash
#!/bin/bash
echo -n "Introduce tu nombre: "
read nombre
echo "Hola, $nombre"
```

La opción `-n` evita que `echo` añada un salto de línea al final del mensaje.

### Ejercicio 4. Comillas

```bash
#!/bin/bash
nombre="Ana"

echo 'Texto literal: $nombre'
echo "Texto con variable: $nombre"
```

Con comillas simples, `$nombre` se muestra literalmente. Con comillas dobles, Bash sustituye la variable por su valor.

### Ejercicio 5. Sustitución de comandos

```bash
#!/bin/bash
directorio=$(pwd)
echo "Directorio actual: $directorio"
```

La expresión `$(pwd)` ejecuta el comando y guarda su salida en la variable.

---

## Bloque 2. Entrada y variables

### Ejercicio 6. Leer un nombre

```bash
#!/bin/bash
read -p "Introduce tu nombre: " nombre
echo "Hola, $nombre"
```

### Ejercicio 7. Leer varios datos

```bash
#!/bin/bash
read -p "Nombre: " nombre
read -p "Edad: " edad

echo "Te llamas $nombre y tienes $edad años."
```

### Ejercicio 8. Variables

```bash
#!/bin/bash
nombre="Ana"
curso="ASIR"
centro="Mi centro"

echo "Nombre: $nombre"
echo "Curso: $curso"
echo "Centro: $centro"
```

### Ejercicio 9. Variables de entorno

```bash
#!/bin/bash
export CURSO="ASIR"
env
```

`export` marca la variable para que esté disponible en el entorno de los procesos que se inicien desde ese shell.

### Ejercicio 10. Eliminar una variable

```bash
#!/bin/bash
nombre="Ana"

echo "Antes: $nombre"
unset nombre
echo "Después: $nombre"
```

Después de `unset`, la variable deja de estar definida. La expansión posterior normalmente no muestra ningún valor.

### Ejercicio 11. Nombre de un archivo

```bash
#!/bin/bash
ruta="/home/ana/documentos/informe.txt"
archivo=$(basename "$ruta")

echo "Nombre del archivo: $archivo"
```

Resultado esperado: `informe.txt`.

---

## Bloque 3. Operaciones aritméticas

### Ejercicio 12. Suma

```bash
#!/bin/bash
read -p "Primer número entero: " a
read -p "Segundo número entero: " b

resultado=$((a + b))
echo "Resultado: $resultado"
```

### Ejercicio 13. Operaciones básicas

```bash
#!/bin/bash
read -p "Primer número entero: " a
read -p "Segundo número entero: " b

echo "Suma: $((a + b))"
echo "Resta: $((a - b))"
echo "Multiplicación: $((a * b))"

if [ "$b" -ne 0 ]; then
    echo "División entera: $((a / b))"
else
    echo "No se puede dividir entre cero."
fi
```

### Ejercicio 14. Expresiones aritméticas

```bash
#!/bin/bash
a=5
b=3

resultado=$((a + b))
echo "Con expansión aritmética: $resultado"

let resultado=a+b
echo "Con let: $resultado"
```

Ambas expresiones calculan la suma de dos enteros.

### Ejercicio 15. Comando `expr`

```bash
#!/bin/bash
a=12
b=4

echo "Suma: $(expr "$a" + "$b")"
echo "Resta: $(expr "$a" - "$b")"
```

Los operadores de `expr` deben separarse mediante espacios.

### Ejercicio 16. Números decimales

```bash
#!/bin/bash
a=5.5
b=2.0

echo "$a + $b" | bc
```

Este ejemplo requiere que `bc` esté instalado. A diferencia de las expresiones aritméticas enteras de Bash, `bc` puede realizar cálculos decimales.

---

## Bloque 4. Condicionales

### Ejercicio 17. Número positivo, negativo o cero

```bash
#!/bin/bash
read -p "Introduce un entero: " numero

if [ "$numero" -gt 0 ]; then
    echo "Es positivo."
elif [ "$numero" -lt 0 ]; then
    echo "Es negativo."
else
    echo "Es cero."
fi
```

Este ejemplo presupone que la entrada es un entero válido.

### Ejercicio 18. Mayor de dos números

```bash
#!/bin/bash
read -p "Primer entero: " a
read -p "Segundo entero: " b

if [ "$a" -gt "$b" ]; then
    echo "$a es mayor."
elif [ "$a" -lt "$b" ]; then
    echo "$b es mayor."
else
    echo "Los números son iguales."
fi
```

### Ejercicio 19. Comprobar una ruta

```bash
#!/bin/bash
read -p "Introduce una ruta: " ruta

if [ -e "$ruta" ]; then
    echo "La ruta existe."
else
    echo "La ruta no existe."
fi
```

### Ejercicio 20. Comprobar un directorio

```bash
#!/bin/bash
read -p "Introduce una ruta: " ruta

if [ -d "$ruta" ]; then
    echo "Es un directorio."
else
    echo "No es un directorio."
fi
```

### Ejercicio 21. Comprobar un archivo regular

```bash
#!/bin/bash
read -p "Introduce una ruta: " ruta

if [ -f "$ruta" ]; then
    echo "Es un archivo regular."
else
    echo "No es un archivo regular."
fi
```

### Ejercicio 22. Menú con `case`

```bash
#!/bin/bash
read -p "Elige una opción (1, 2 o 3): " opcion

case "$opcion" in
    1)
        echo "Has elegido la opción 1."
        ;;
    2)
        echo "Has elegido la opción 2."
        ;;
    3)
        echo "Has elegido la opción 3."
        ;;
    *)
        echo "Opción no válida."
        ;;
esac
```

---

## Bloque 5. Bucles

### Ejercicio 23. Contar con `for`

```bash
#!/bin/bash
for ((i=1; i<=10; i++)); do
    echo "$i"
done
```

### Ejercicio 24. Contar con `while`

```bash
#!/bin/bash
i=1

while [ "$i" -le 10 ]; do
    echo "$i"
    i=$((i + 1))
done
```

### Ejercicio 25. Contar con `until`

```bash
#!/bin/bash
i=1

until [ "$i" -gt 10 ]; do
    echo "$i"
    i=$((i + 1))
done
```

`until` repite las instrucciones mientras la condición sea falsa y termina cuando pasa a ser verdadera.

### Ejercicio 26. Sumar números

```bash
#!/bin/bash
suma=0

for ((i=1; i<=10; i++)); do
    suma=$((suma + i))
done

echo "La suma es: $suma"
```

Resultado esperado: `55`.

### Ejercicio 27. `break` y `continue`

```bash
#!/bin/bash

for ((i=1; i<=10; i++)); do
    if [ "$i" -eq 3 ]; then
        continue
    fi

    if [ "$i" -eq 8 ]; then
        break
    fi

    echo "$i"
done
```

El número 3 se omite y el bucle termina al llegar al 8.

---

## Bloque 6. Parámetros y códigos de salida

### Ejercicio 28. Primer argumento

Archivo: `saludo.sh`

```bash
#!/bin/bash

if [ "$#" -lt 1 ]; then
    echo "Uso: $0 nombre"
    exit 1
fi

echo "Hola, $1"
```

Ejemplo:

```bash
./saludo.sh Ana
```

### Ejercicio 29. Número de argumentos

```bash
#!/bin/bash
echo "Número de argumentos: $#"
```

### Ejercicio 30. Mostrar los argumentos

```bash
#!/bin/bash

for argumento in "$@"; do
    echo "$argumento"
done
```

Al utilizar `"$@"`, cada argumento se conserva como un elemento independiente, incluso si contiene espacios.

### Ejercicio 31. Estado de un comando

```bash
#!/bin/bash

true
echo "Código de true: $?"

false
echo "Código de false: $?"
```

Normalmente, `true` devuelve 0 y `false` devuelve 1. En Bash, el código de salida del último comando ejecutado se consulta con `$?`; por eso conviene guardarlo o mostrarlo inmediatamente.

### Ejercicio 32. Finalizar un script

```bash
#!/bin/bash
echo "Finalizando el script."
exit 5
```

Después de ejecutarlo, consulta el código de salida desde el mismo terminal:

```bash
bash finalizar.sh
echo $?
```

El resultado esperado es `5`.

---

## Bloque 7. Funciones y menús

### Ejercicio 33. Crear una función

```bash
#!/bin/bash

saludar() {
    echo "Hola, mundo."
}

saludar
```

### Ejercicio 34. Función con parámetros

```bash
#!/bin/bash

saludar() {
    echo "Hola, $1"
}

saludar "Ana"
```

Dentro de la función, `$1` representa su primer argumento.

### Ejercicio 35. Menú con `select`

```bash
#!/bin/bash
PS3="Selecciona una opción: "

select opcion in "Saludar" "Mostrar directorio" "Salir"; do
    case "$opcion" in
        "Saludar")
            echo "Hola."
            ;;
        "Mostrar directorio")
            pwd
            ;;
        "Salir")
            break
            ;;
        *)
            echo "Opción no válida."
            ;;
    esac
done
```

### Ejercicio 36. Menú de operaciones

```bash
#!/bin/bash

sumar() {
    echo "Resultado: $(($1 + $2))"
}

restar() {
    echo "Resultado: $(($1 - $2))"
}

while true; do
    echo "1. Sumar"
    echo "2. Restar"
    echo "3. Salir"
    read -p "Opción: " opcion

    case "$opcion" in
        1)
            read -p "Primer entero: " a
            read -p "Segundo entero: " b
            sumar "$a" "$b"
            ;;
        2)
            read -p "Primer entero: " a
            read -p "Segundo entero: " b
            restar "$a" "$b"
            ;;
        3)
            break
            ;;
        *)
            echo "Opción no válida."
            ;;
    esac
done
```

---

## Bloque 8. Depuración e interfaz de texto

### Ejercicio 37. Comprobar la sintaxis

Guarda este ejemplo en `prueba.sh`:

```bash
#!/bin/bash
if [ 1 -eq 1 ]; then
    echo "Correcto"
fi
```

Comprueba su sintaxis sin ejecutar el cuerpo del script:

```bash
bash -n prueba.sh
```

Si no se muestran errores, la comprobación sintáctica ha terminado sin detectar problemas.

### Ejercicio 38. Mostrar las instrucciones

```bash
bash -v prueba.sh
```

La opción `-v` muestra las líneas del script conforme Bash las lee.

### Ejercicio 39. Rastrear la ejecución

```bash
bash -x prueba.sh
```

La opción `-x` muestra las instrucciones y sus expansiones durante la ejecución.

### Ejercicio 40. Interfaz con `dialog`

Mensaje informativo:

```bash
#!/bin/bash
dialog --msgbox "Bienvenido al programa" 8 40
```

Pregunta de confirmación:

```bash
#!/bin/bash
dialog --yesno "¿Quieres continuar?" 8 40
respuesta=$?

if [ "$respuesta" -eq 0 ]; then
    echo "Has respondido que sí."
else
    echo "No se ha confirmado la operación."
fi
```

Estos ejemplos requieren `dialog`. La respuesta de la ventana se refleja en el código de salida del comando.

---

## Observaciones importantes

- Los ejemplos de operaciones aritméticas con `$((...))` trabajan con números enteros.
- El uso de `bc` permite realizar cálculos decimales, si está instalado.
- Las comprobaciones numéricas presuponen entradas enteras válidas; para convertirlas en programas robustos habría que añadir validación.
- `$?` debe consultarse inmediatamente después del comando cuyo resultado se desea comprobar.
- `return` se utiliza para finalizar una función y establecer su estado de retorno; `exit` finaliza el script o el shell en ejecución.
- Las opciones `-n`, `-v` y `-x` tienen funciones distintas y no deben confundirse.

