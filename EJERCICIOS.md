
# Ejercicios prácticos de Bash

Estos ejercicios están basados en los contenidos y ejemplos del documento de clase sobre scripting en sistemas operativos.

Intenta resolver cada ejercicio antes de consultar las soluciones.

## Nivel 1. Primeros pasos

### Ejercicio 1. Hola, usuario

Crea un script llamado `hola.sh` que muestre:

```text
Hola, mundo
Estoy aprendiendo Bash
```

**Pistas:** utiliza `#!/bin/bash` y `echo`.

### Ejercicio 2. Presentación

Crea un script que solicite el nombre del usuario y muestre un saludo personalizado.

**Pistas:** utiliza `read -p` y una variable.

### Ejercicio 3. Variables

Crea dos variables:

- `nombre`, con tu nombre.
- `edad`, con tu edad.

Muestra ambas variables por pantalla.

### Ejercicio 4. La fecha

Crea un script que muestre la fecha del sistema utilizando `date`.

### Ejercicio 5. Comillas

Indica qué muestra cada instrucción:

```bash
x=10
echo 'El valor de x=$x'
echo "El valor de x=$x"
```

Explica por qué las salidas son diferentes.

---

## Nivel 2. Variables y operaciones

### Ejercicio 6. Suma

Crea un script que almacene dos números enteros en variables, calcule su suma y muestre el resultado.

### Ejercicio 7. Calculadora con expr

Utiliza `expr` para calcular:

- 4 + 5
- 20 - 7
- 6 * 3
- 20 / 4
- El resto de dividir 17 entre 5.

Recuerda que el asterisco debe escaparse cuando se utiliza como operador de multiplicación con `expr`.

### Ejercicio 8. Números decimales

Utiliza `bc` para sumar 20.1 y 2.5.

### Ejercicio 9. Nombre de un archivo

Utiliza `basename` para obtener el nombre del archivo de esta ruta:

```text
/home/usuario/documentos/informe.txt
```

Después, elimina el sufijo `.txt`.

### Ejercicio 10. Parámetros

Crea un script que muestre el primer parámetro recibido.

Pruébalo pasando tu nombre como argumento.

---

## Nivel 3. Condicionales

### Ejercicio 11. Mayor de edad

Solicita una edad y muestra un mensaje indicando si es mayor o igual que 18.

### Ejercicio 12. Número mayor que diez

Solicita un número entero y comprueba si es mayor que 10.

### Ejercicio 13. Comprobar un directorio

Solicita una ruta y utiliza `if` para comprobar si corresponde a un directorio existente.

### Ejercicio 14. Menú con case

Solicita una letra entre A, B, C y D.

Muestra qué letra se ha introducido y un mensaje de error si no coincide con ninguna opción. Acepta tanto mayúsculas como minúsculas.

### Ejercicio 15. Número capicúa

Diseña un script que compruebe si un número de tres cifras es capicúa.

Un número capicúa se lee igual de izquierda a derecha que de derecha a izquierda.

**Pista:** primero valida que el número esté entre 100 y 999. Después compara la primera y la última cifra.

---

## Nivel 4. Bucles

### Ejercicio 16. Contar del uno al diez

Utiliza un bucle `for` para mostrar los números del 1 al 10.

### Ejercicio 17. Contador con while

Utiliza `while` para mostrar los números del 1 al 5.

### Ejercicio 18. Palabra secreta

Utiliza `until` para solicitar una palabra repetidamente hasta que se introduzca la palabra secreta `hal9000`.

### Ejercicio 19. Tabla de multiplicar

Solicita un número y muestra su tabla de multiplicar del 1 al 10.

### Ejercicio 20. Números aleatorios

Muestra seis números aleatorios comprendidos entre 0 y 20.

**Pista:** el material explica el uso de `RANDOM` y el operador módulo.

### Ejercicio 21. Listar archivos

Utiliza un bucle `for` para recorrer los elementos del directorio actual y mostrar cada uno.

### Ejercicio 22. Crear archivos por lotes

Crea un script que genere cien archivos vacíos con nombres numerados.

**Pista:** utiliza la expansión `{1..100}` y el comando `touch`.

---

## Nivel 5. Parámetros y funciones

### Ejercicio 23. Dos nombres

Crea un script que reciba dos nombres por parámetro y salude a cada persona.

Comprueba que se han proporcionado exactamente dos parámetros.

### Ejercicio 24. Saludar a todos

Modifica el ejercicio anterior para aceptar cualquier número de nombres y saludar a cada uno.

### Ejercicio 25. Función de suma

Crea una función llamada `suma` que reciba dos números por parámetro y muestre la suma.

### Ejercicio 26. Función doble

Crea una función que reciba un número y muestre su doble.

### Ejercicio 27. Menú de fecha y calendario

Diseña un menú con tres opciones:

1. Mostrar la fecha del sistema.
2. Mostrar el calendario.
3. Salir.

El menú debe repetirse hasta seleccionar la opción de salida.

---

## Nivel 6. Depuración

### Ejercicio 28. Comprobar sintaxis

Crea un script que contenga un error de sintaxis.

Utiliza la opción `-n` para comprobarlo y después corrige el error.

### Ejercicio 29. Seguir la ejecución

Ejecuta un script de ejemplo con la opción `-x`.

Observa cómo se muestran los comandos y las expansiones de las variables.

### Ejercicio 30. Código de retorno

Ejecuta un comando y consulta inmediatamente `$?`.

Comprueba qué valor se obtiene cuando la ejecución termina correctamente.

---

# Soluciones orientativas

## Solución 1

```bash
#!/bin/bash
echo "Hola, mundo"
echo "Estoy aprendiendo Bash"
```

## Solución 2

```bash
#!/bin/bash
read -p "Introduce tu nombre: " nombre
echo "Hola, $nombre"
```

## Solución 3

```bash
#!/bin/bash
nombre="Ana"
edad=20

echo "$nombre"
echo "$edad"
```

## Solución 4

```bash
#!/bin/bash
date
```

## Solución 5

La primera instrucción muestra literalmente `El valor de x=$x`, porque se utilizan comillas simples.

La segunda muestra `El valor de x=10`, porque las comillas dobles permiten sustituir el valor de la variable.

## Solución 6

```bash
#!/bin/bash
a=10
b=5
resultado=$(($a + $b))

echo "$resultado"
```

## Solución 7

```bash
expr 4 + 5
expr 20 - 7
expr 6 \* 3
expr 20 / 4
expr 17 % 5
```

Los resultados son 9, 13, 18, 5 y 2.

## Solución 8

```bash
#!/bin/bash
Numero1=20.1
Numero2=2.5

RESULTADO=$(echo "$Numero1 + $Numero2" | bc)
echo "$RESULTADO"
```

Resultado: `22.6`.

## Solución 9

```bash
basename /home/usuario/documentos/informe.txt
basename /home/usuario/documentos/informe.txt .txt
```

Los resultados son `informe.txt` e `informe`.

## Solución 10

```bash
#!/bin/bash
echo "Hola, $1"
```

Ejecución de ejemplo:

```bash
bash saludo.sh Ana
```

## Solución 11

```bash
#!/bin/bash
read -p "Introduce tu edad: " edad

if [ "$edad" -ge 18 ]
then
    echo "Mayor de edad"
else
    echo "Menor de edad"
fi
```

La solución presupone que se introduce un entero válido.

## Solución 12

```bash
#!/bin/bash
read -p "Introduce un número: " numero

if [ "$numero" -gt 10 ]
then
    echo "Mayor que 10"
else
    echo "Menor o igual que 10"
fi
```

## Solución 13

```bash
#!/bin/bash
read -p "Introduce una ruta: " ruta

if [ -d "$ruta" ]
then
    echo "Es un directorio"
else
    echo "No es un directorio existente"
fi
```

## Solución 14

```bash
#!/bin/bash
read -p "Introduce A, B, C o D: " opcion

case "$opcion" in
    A|a) echo "Ha introducido A" ;;
    B|b) echo "Ha introducido B" ;;
    C|c) echo "Ha introducido C" ;;
    D|d) echo "Ha introducido D" ;;
    *) echo "Opción incorrecta" ;;
esac
```

## Solución 15

```bash
#!/bin/bash
read -p "Introduce un número de tres cifras: " numero

if [ "$numero" -lt 100 ] || [ "$numero" -gt 999 ]
then
    echo "El número debe tener tres cifras"
else
    primera=$((numero / 100))
    ultima=$((numero % 10))

    if [ "$primera" -eq "$ultima" ]
    then
        echo "Es capicúa"
    else
        echo "No es capicúa"
    fi
fi
```

## Solución 16

```bash
#!/bin/bash

for numero in {1..10}
do
    echo "$numero"
done
```

## Solución 17

```bash
#!/bin/bash
contador=1

while [ "$contador" -le 5 ]
do
    echo "$contador"
    contador=$((contador + 1))
done
```

## Solución 18

```bash
#!/bin/bash
read -p "Introduce la palabra secreta: " palabra

until [ "$palabra" = "hal9000" ]
do
    read -p "Inténtalo de nuevo: " palabra
done

echo "Contraseña correcta"
```

## Solución 19

```bash
#!/bin/bash
read -p "Introduce un número: " numero

for i in {1..10}
do
    echo "$numero x $i = $((numero * i))"
done
```

## Solución 20

```bash
#!/bin/bash

for i in {1..6}
do
    echo "$((RANDOM % 21))"
done
```

## Solución 21

```bash
#!/bin/bash

for fichero in *
do
    echo "$fichero"
done
```

## Solución 22

```bash
#!/bin/bash

for nombre in {1..100}.txt
do
    touch "$nombre"
done
```

## Solución 23

```bash
#!/bin/bash

if [ "$#" -ne 2 ]
then
    echo "Debes introducir dos nombres"
    exit 1
fi

echo "Hola, $1"
echo "Hola, $2"
```

## Solución 24

```bash
#!/bin/bash

for nombre in "$@"
do
    echo "Hola, $nombre"
done
```

## Solución 25

```bash
#!/bin/bash

suma() {
    echo $(($1 + $2))
}

suma 4 5
```

## Solución 26

```bash
#!/bin/bash

doble() {
    echo $(($1 * 2))
}

doble 5
```

## Solución 27

```bash
#!/bin/bash

while true
do
    echo "1. Fecha del sistema"
    echo "2. Calendario"
    echo "3. Salir"

    read -p "Elige una opción: " opcion

    case "$opcion" in
        1) date ;;
        2) cal ;;
        3) break ;;
        *) echo "Opción incorrecta" ;;
    esac
done
```

## Solución 28

Prueba la sintaxis de un script con:

```bash
bash -n archivo.sh
```

Corrige los errores de sintaxis que aparezcan y vuelve a ejecutar la comprobación.

## Solución 29

```bash
bash -x archivo.sh
```

Observa las líneas que se muestran durante la ejecución.

## Solución 30

```bash
date
echo $?
```

Si `date` se ejecuta correctamente, el código de retorno esperado es `0`.
