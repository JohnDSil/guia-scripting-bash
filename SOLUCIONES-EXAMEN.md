# Soluciones del examen: Lenguajes de scripting en sistemas operativos

Estas soluciones son orientativas y están basadas en los contenidos de la unidad de Bash. Puede haber otras implementaciones correctas si cumplen los requisitos de cada ejercicio.

---

## 1. Soluciones teóricas

### Pregunta 1. Creación de scripts

Un script de Bash es un archivo de texto que contiene comandos que el intérprete Bash ejecuta secuencialmente. Permite automatizar tareas y agrupar varias órdenes en un único archivo.

### Pregunta 2. Shebang

```bash
#!/bin/bash
```

Indica la ruta del intérprete que se utilizará para ejecutar el script.

### Pregunta 3. Permisos y ejecución

Para dar permiso de ejecución y ejecutar el script:

```bash
chmod +x script.sh
./script.sh
```

También se puede ejecutar indicando el intérprete:

```bash
bash script.sh
```

### Pregunta 4. Depuración

- `bash -n script.sh`: comprueba la sintaxis sin ejecutar los comandos.
- `bash -v script.sh`: muestra las líneas del script a medida que Bash las lee.
- `bash -x script.sh`: muestra los comandos y sus expansiones durante la ejecución.

### Pregunta 5. Salida estándar

`echo` muestra texto por la salida estándar.

```bash
echo "Hola"
echo -n "Hola"
```

La primera instrucción termina con un salto de línea. La segunda no añade ese salto de línea final.

### Pregunta 6. Comillas

Las comillas simples conservan literalmente el contenido. Las comillas dobles permiten expandir variables y sustituir comandos.

```bash
nombre="Ana"

echo '$nombre'
echo "$nombre"
```

La primera instrucción muestra `$nombre`; la segunda muestra `Ana`.

### Pregunta 7. Variables

Una variable se asigna sin espacios alrededor del signo `=`:

```bash
CURSO="Bash"
```

Para exportarla al entorno:

```bash
export CURSO
```

Una variable exportada puede heredarse en los procesos hijos. Una variable de shell que no se exporta no se transmite automáticamente como variable de entorno.

### Pregunta 8. Parámetros especiales

- `$0`: nombre con el que se invocó el script.
- `$1`: primer parámetro posicional.
- `$#`: número de parámetros posicionales.
- `$@`: lista de parámetros posicionales.
- `$?`: código de salida del comando anterior.
- `$$`: PID del shell que ejecuta el script.

### Pregunta 9. Estructuras condicionales

`if` permite ejecutar instrucciones cuando una condición se cumple. `elif` permite evaluar condiciones adicionales y `else` define qué hacer si ninguna de las condiciones anteriores se cumple.

### Pregunta 10. Bucles

- `for`: recorre una lista de valores o elementos.
- `while`: repite las instrucciones mientras la condición sea verdadera.
- `until`: repite las instrucciones mientras la condición sea falsa, hasta que resulte verdadera.

### Pregunta 11. Funciones

Una función agrupa instrucciones que pueden ejecutarse varias veces.

`return` finaliza una función y permite devolver un estado numérico. `exit` finaliza el script o el shell actual y establece un código de salida.

### Pregunta 12. Código de salida

`$?` contiene el código de salida del último comando ejecutado. Habitualmente, `0` indica éxito y un valor distinto de `0` indica algún tipo de error o resultado diferente.

---

## 2. Soluciones de los ejercicios prácticos

### Ejercicio 1. Primer script

Archivo `saludo.sh`:

```bash
#!/bin/bash

# Muestra un saludo.
echo "Hola, mundo"

# Muestra el nombre.
echo "Mi nombre es Ana"
```

Para ejecutarlo:

```bash
chmod +x saludo.sh
./saludo.sh
```

### Ejercicio 2. Entrada de datos

```bash
#!/bin/bash

read -p "Introduce tu nombre: " nombre
echo "Hola, $nombre"
```

### Ejercicio 3. Variables y entorno

```bash
#!/bin/bash

CURSO="Bash"
export CURSO

echo "$CURSO"
```

### Ejercicio 4. Operaciones aritméticas

```bash
#!/bin/bash

read -p "Introduce el primer número: " a
read -p "Introduce el segundo número: " b

echo "Suma: $((a + b))"
echo "Resta: $((a - b))"
echo "Multiplicación: $((a * b))"
```

Estas operaciones están pensadas para números enteros.

### Ejercicio 5. Condicional `if`

```bash
#!/bin/bash

read -p "Introduce un número entero: " numero

if (( numero > 0 )); then
    echo "El número es positivo"
elif (( numero < 0 )); then
    echo "El número es negativo"
else
    echo "El número es cero"
fi
```

### Ejercicio 6. Comprobación de archivos

```bash
#!/bin/bash

read -p "Introduce una ruta: " ruta

if [ -e "$ruta" ]; then
    if [ -f "$ruta" ]; then
        echo "La ruta es un archivo regular"
    elif [ -d "$ruta" ]; then
        echo "La ruta es un directorio"
    else
        echo "La ruta existe, pero no es un archivo regular ni un directorio"
    fi
else
    echo "La ruta no existe"
fi
```

### Ejercicio 7. Estructura `case`

```bash
#!/bin/bash

while true; do
    echo "1. Saludar"
    echo "2. Mostrar fecha"
    echo "3. Mostrar directorio actual"
    echo "4. Salir"

    read -p "Selecciona una opción: " opcion

    case "$opcion" in
        1)
            echo "Hola"
            ;;
        2)
            date
            ;;
        3)
            pwd
            ;;
        4)
            echo "Fin del programa"
            break
            ;;
        *)
            echo "Opción no válida"
            ;;
    esac
done
```

### Ejercicio 8. Bucle `for`

```bash
#!/bin/bash

for numero in {1..10}; do
    echo "$numero"
done
```

### Ejercicio 9. Bucle `while`

```bash
#!/bin/bash

read -p "Introduce un número (0 para terminar): " numero

while [ "$numero" -ne 0 ]; do
    echo "Has introducido: $numero"
    read -p "Introduce otro número (0 para terminar): " numero
done

echo "Programa terminado"
```

Este ejemplo presupone que se introducen números enteros válidos.

### Ejercicio 10. Bucle `until`

```bash
#!/bin/bash

numero=1

until [ "$numero" -gt 5 ]; do
    echo "$numero"
    numero=$((numero + 1))
done
```

### Ejercicio 11. Parámetros posicionales

Archivo `parametros.sh`:

```bash
#!/bin/bash

echo "Nombre del script: $0"
echo "Primer parámetro: $1"
echo "Segundo parámetro: $2"
echo "Número de parámetros: $#"
```

Ejemplo de ejecución:

```bash
bash parametros.sh Ana 25
```

### Ejercicio 12. Validación de parámetros

```bash
#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Uso: $0 parámetro1 parámetro2"
    exit 1
fi

echo "Primer parámetro: $1"
echo "Segundo parámetro: $2"
```

### Ejercicio 13. Funciones

```bash
#!/bin/bash

saludar() {
    echo "Hola, $1"
}

saludar "Ana"
```

El nombre se recibe como primer parámetro de la función.

### Ejercicio 14. Control de ejecución

```bash
#!/bin/bash

ls
resultado=$?

if [ "$resultado" -eq 0 ]; then
    echo "El comando terminó correctamente"
else
    echo "El comando terminó con un error"
fi
```

Se guarda inmediatamente el código de salida para evitar que otra instrucción cambie el valor de `$?`.

### Ejercicio 15. Depuración

Archivo `script.sh`:

```bash
#!/bin/bash

nombre="Ana"
echo "Hola, $nombre"
```

Comprobación de sintaxis:

```bash
bash -n script.sh
```

Visualización de las líneas leídas:

```bash
bash -v script.sh
```

Seguimiento de comandos y expansiones:

```bash
bash -x script.sh
```

La salida exacta depende de la versión de Bash y del contenido del script.

---

## 3. Solución del ejercicio integrador

Archivo `gestor.sh`:

```bash
#!/bin/bash

# Función para saludar al usuario.
saludar() {
    read -p "Introduce tu nombre: " nombre
    echo "Hola, $nombre"
}

# Función para realizar operaciones aritméticas.
calcular() {
    read -p "Primer número entero: " a
    read -p "Segundo número entero: " b

    echo "Suma: $((a + b))"
    echo "Resta: $((a - b))"
    echo "Multiplicación: $((a * b))"
}

# Función para comprobar una ruta.
comprobar_ruta() {
    read -p "Introduce una ruta: " ruta

    if [ -e "$ruta" ]; then
        echo "La ruta existe"

        if [ -f "$ruta" ]; then
            echo "Es un archivo regular"
        elif [ -d "$ruta" ]; then
            echo "Es un directorio"
        fi
    else
        echo "La ruta no existe"
    fi
}

# Menú principal.
while true; do
    echo
    echo "===== GESTOR ====="
    echo "1. Saludar"
    echo "2. Realizar operaciones aritméticas"
    echo "3. Comprobar una ruta"
    echo "4. Mostrar parámetros iniciales"
    echo "5. Mostrar directorio actual"
    echo "6. Salir"

    read -p "Selecciona una opción: " opcion

    case "$opcion" in
        1)
            saludar
            ;;
        2)
            calcular
            ;;
        3)
            comprobar_ruta
            ;;
        4)
            echo "Número de parámetros: $#"
            echo "Parámetros: $@"
            ;;
        5)
            pwd
            ;;
        6)
            echo "Saliendo del programa"
            exit 0
            ;;
        *)
            echo "Opción no válida"
            ;;
    esac
done
```

### Comprobación y ejecución

Primero, comprueba la sintaxis:

```bash
bash -n gestor.sh
```

Si no aparecen errores de sintaxis, ejecuta el script:

```bash
bash gestor.sh uno dos
```

Para utilizarlo directamente como ejecutable:

```bash
chmod +x gestor.sh
./gestor.sh uno dos
```

### Observaciones

- Los parámetros mostrados en la opción 4 son los que se pasaron al iniciar el script.
- La opción 2 trabaja con números enteros.
- La comprobación de rutas distingue archivos regulares y directorios.
- La opción 6 termina el programa con el código de salida `0`.
- `bash -n` comprueba la sintaxis, pero no garantiza que todas las operaciones se comporten correctamente durante la ejecución.

---

## 4. Recomendaciones para estudiar

1. Comprende la función de cada instrucción antes de memorizar el código.
2. Practica las comillas, las variables y la entrada de datos.
3. Domina la estructura de `if`, `case`, `for`, `while` y `until`.
4. Aprende a utilizar `$1`, `$#`, `$@` y `$?`.
5. Utiliza funciones para organizar scripts largos.
6. Comprueba la sintaxis y prueba distintos casos de ejecución.
