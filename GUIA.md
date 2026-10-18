
# Guía de Scripting en Bash desde Cero

## 1. Introducción a los scripts

Un script Bash es un archivo de texto que contiene una serie de comandos. Estos se interpretan y ejecutan secuencialmente, como si se introdujeran directamente en el teclado.

Su utilidad principal es automatizar tareas.

### 1.1. Primera línea

La primera línea habitual de un script es:

```bash
#!/bin/bash
```

Esta línea se conoce como *shebang*. Indica que el script debe procesarse mediante Bash.

### 1.2. Primer script

Contenido de `hola.sh`:

```bash
#!/bin/bash
echo "Hola, mundo"
```

### 1.3. Ejecutar un script

Para ejecutar un script mediante su intérprete:

```bash
bash hola.sh
```

Para darle permiso de ejecución y ejecutarlo desde el directorio actual:

```bash
chmod u+x hola.sh
./hola.sh
```

El permiso de ejecución es necesario para lanzarlo directamente como `./hola.sh`.

### 1.4. Buenas prácticas

- Añadir un encabezado con autor, versión, fecha y descripción.
- Incluir comentarios.
- Definir claramente la lógica del programa.
- Evitar acciones innecesarias.
- Crear scripts reutilizables.
- Mantener el código breve y sencillo, siguiendo el principio KISS.

---

## 2. Depuración de scripts

La depuración permite examinar cómo se ejecuta un script, qué valores toman sus variables y dónde pueden aparecer errores.

### 2.1. Comprobar la sintaxis

```bash
bash -n hola.sh
```

La opción `-n` comprueba la sintaxis sin ejecutar los comandos del script.

### 2.2. Mostrar los comandos antes de ejecutarlos

```bash
bash -v hola.sh
```

La opción `-v` muestra las líneas del script a medida que se leen.

### 2.3. Seguir la ejecución

```bash
bash -x hola.sh
```

La opción `-x` muestra los comandos y las expansiones realizadas antes de ejecutarlos.

---

## 3. Salida estándar: echo

El comando `echo` muestra texto por la salida estándar.

### 3.1. Mostrar texto

```bash
echo "Hola"
echo "Estoy aprendiendo Bash"
```

### 3.2. Opción `-n`

La opción `-n` evita el salto de línea final:

```bash
echo -n "Introduce tu nombre: "
```

### 3.3. Comillas simples y dobles

Las comillas simples interpretan literalmente el contenido:

```bash
x=10
echo 'El valor de x=$x'
```

Salida:

```text
El valor de x=$x
```

Las comillas dobles permiten sustituir variables:

```bash
echo "El valor de x=$x"
```

Salida:

```text
El valor de x=10
```

### 3.4. Ejecutar un comando dentro de una expresión

Se puede recoger la salida de un comando con `$(...)`:

```bash
echo "La fecha es $(date)"
```

También aparece en el material la forma con comillas invertidas:

```bash
echo "La fecha es `date`"
```

### 3.5. Metacaracteres sintácticos

| Símbolo | Función |
|---|---|
| `;` | Separa órdenes que se ejecutan secuencialmente. |
| `|` | Envía la salida de una orden a la entrada de otra. |
| `\` | Permite continuar una orden en otra línea. |
| `()` | Agrupa órdenes en un subshell. |
| `{}` | Agrupa órdenes en el intérprete actual. |
| `&` | Ejecuta un trabajo en segundo plano. |
| `||` | Ejecuta la siguiente orden si falla la anterior. |
| `&&` | Ejecuta la siguiente orden si tiene éxito la anterior. |

Ejemplos:

```bash
date ; who
date | wc -l
```

### 3.6. Metacaracteres de nombres de archivos

| Símbolo | Función |
|---|---|
| `?` | Coincide con un carácter. |
| `*` | Coincide con una secuencia de cero o más caracteres. |
| `[]` | Define una clase o rango de caracteres. |
| `{}` | Permite abreviar conjuntos de palabras. |
| `~` | Representa la ruta del directorio personal. |

---

## 4. Entrada estándar y variables

Las variables permiten almacenar valores que después se pueden utilizar en un script.

### 4.1. Asignar valores

```bash
nombre="María"
numero=25
```

No se deben colocar espacios alrededor del signo `=` en una asignación.

Para mostrar una variable:

```bash
echo "$nombre"
echo "$numero"
```

### 4.2. Leer información por teclado

```bash
#!/bin/bash

read -p "Introduce tu nombre: " nombre
echo "Hola, $nombre"
```

También se puede hacer en dos instrucciones:

```bash
echo -n "Introduce tu nombre: "
read nombre
```

### 4.3. Guardar la salida de un comando

```bash
fecha=$(date)
echo "$fecha"
```

### 4.4. Variables locales y de entorno

Las variables locales pertenecen al shell en el que se definen. Para que estén disponibles en los procesos hijos se pueden exportar.

```bash
numero=34
export numero
```

Comandos relacionados:

```bash
set
env
unset numero
```

- `set`: muestra variables y funciones del shell.
- `env`: muestra las variables de entorno.
- `unset`: elimina una variable.

### 4.5. Variables de entorno destacadas

| Variable | Significado |
|---|---|
| `HOME` | Directorio personal. |
| `HOSTNAME` | Nombre de la máquina. |
| `PATH` | Rutas de búsqueda de comandos. |
| `PWD` | Directorio de trabajo actual. |
| `OLDPWD` | Directorio de trabajo anterior. |
| `USER` | Nombre del usuario. |
| `SHELL` | Ruta del intérprete de comandos. |
| `TERM` | Tipo de terminal. |
| `LANG` | Idioma de los mensajes. |
| `EDITOR` | Editor predeterminado. |

### 4.6. Variables especiales

| Variable | Significado |
|---|---|
| `$$` | Identificador del proceso actual. |
| `$*` | Conjunto de parámetros recibidos. |
| `$@` | Parámetros recibidos, tratados individualmente al citarse adecuadamente. |
| `$#` | Número de parámetros. |
| `$?` | Código de retorno del último comando. |
| `$!` | Identificador del último proceso ejecutado en segundo plano. |
| `$_` | Argumento final del comando ejecutado previamente. |

En el material, el código `0` representa una ejecución normal y un código mayor que `0` indica un error.

---

## 5. Expresiones y operaciones algebraicas

### 5.1. Operaciones con enteros

Mediante `let`:

```bash
#!/bin/bash

let A=100
let B=200
let C=$A+$B

echo "A: $A | B: $B | C: $C"
```

También se puede utilizar expansión aritmética:

```bash
A=100
B=200
C=$(($A+$B))

echo "$C"
```

La suma se calcula dentro de `$((...))`.

### 5.2. Operaciones con decimales

El material utiliza `bc` para los números reales:

```bash
Numero1=20.1
Numero2=2.5

RESULTADO=$(echo "$Numero1 + $Numero2" | bc)
echo "$RESULTADO"
```

Para controlar la precisión se puede utilizar `bc -l` y `scale`:

```bash
echo "scale=2; 10 / 3" | bc -l
```

### 5.3. Comando expr

La sintaxis general es:

```bash
expr argumento1 operación argumento2
```

Ejemplos:

```bash
expr 4 + 5
expr 3 \* 4 + 6 / 2
```

Para guardar el resultado:

```bash
Z=$(expr 4 + 5)
echo "$Z"
```

El material también explica el operador módulo `%`, que obtiene el resto de una división.

### 5.4. Utilidad basename

`basename` muestra el nombre de un archivo sin el prefijo de su directorio.

```bash
basename a/b/c/d
```

Resultado:

```text
d
```

También puede eliminar un sufijo indicado:

```bash
basename include/stdio.h .h
```

Resultado:

```text
stdio
```

---

## 6. Condicionales if

Las condiciones permiten ejecutar bloques distintos dependiendo de si una expresión se cumple.

### 6.1. Condición simple

```bash
if [ condición ]
then
    comandos
fi
```

### 6.2. Condición doble

```bash
if [ condición ]
then
    comandos_si_se_cumple
else
    comandos_si_no_se_cumple
fi
```

### 6.3. Varias condiciones

```bash
if [ condición1 ]
then
    comandos1
elif [ condición2 ]
then
    comandos2
else
    comandos_por_defecto
fi
```

### 6.4. Ejemplo: comprobar un número

```bash
#!/bin/bash

read -p "Introduce un número: " numero

if [ "$numero" -gt 10 ]
then
    echo "Es mayor que 10"
else
    echo "Es menor o igual que 10"
fi
```

Este ejemplo presupone que se introduce un entero válido.

### 6.5. Condiciones sobre archivos

El material incluye operadores para comprobar características de archivos:

| Operador | Comprobación |
|---|---|
| `-a` | El archivo existe. |
| `-b` | Es un dispositivo de bloques. |
| `-c` | Es un archivo de caracteres. |
| `-d` | Es un directorio. |
| `-e` | El archivo existe. |
| `-f` | Es un archivo regular. |
| `-h` o `-L` | Es un enlace simbólico. |
| `-k` | Tiene activado el sticky bit. |
| `-p` | Es un cauce o pipe. |
| `-s` | Existe y su tamaño es mayor que cero. |
| `-t` | El descriptor está asociado a una terminal. |
| `-S` | Es un socket. |

Ejemplo:

```bash
if [ -d "$HOME" ]
then
    echo "El directorio personal existe"
fi
```

### 6.6. Operadores lógicos

Los metacaracteres `&&` y `||` permiten encadenar órdenes según el resultado de la anterior.

En las expresiones de `if`, las condiciones pueden combinarse respetando la sintaxis de Bash y los espacios requeridos.

**Importante:** deja un espacio después de `[` y antes de `]`.

---

## 7. Condicionales case

`case` permite comparar una variable con distintos patrones. Es útil cuando existen muchas alternativas.

### 7.1. Sintaxis

```bash
case "$variable" in
    valor1)
        comandos1
        ;;
    valor2)
        comandos2
        ;;
    *)
        comandos_por_defecto
        ;;
esac
```

Los paréntesis de cada patrón y los separadores `;;` forman parte de la sintaxis.

### 7.2. Ejemplo de menú

```bash
#!/bin/bash

echo -n "Introduce A, B, C o D: "
read opcion

case "$opcion" in
    A|a) echo "Ha introducido A" ;;
    B|b) echo "Ha introducido B" ;;
    C|c) echo "Ha introducido C" ;;
    D|d) echo "Ha introducido D" ;;
    *) echo "Opción incorrecta" ;;
esac
```

### 7.3. Patrones

- `*`: cualquier secuencia de caracteres.
- `?`: un carácter.
- `[]`: una clase de caracteres.
- `|`: alternativas dentro de un patrón.

---

## 8. Bucles for

Un bucle permite repetir un conjunto de instrucciones.

### 8.1. Sintaxis

```bash
for variable in conjunto
do
    comandos
done
```

La variable toma cada valor del conjunto y ejecuta el bloque correspondiente.

### 8.2. Recorrer una lista

```bash
#!/bin/bash

for nombre in Ana Luis María
do
    echo "Hola, $nombre"
done
```

### 8.3. Recorrer los nombres de archivos

```bash
#!/bin/bash

for fichero in *
do
    ls -l "$fichero"
done
```

### 8.4. Recorrer los parámetros

```bash
#!/bin/bash

for arg in "$@"
do
    echo "Elemento: $arg"
done
```

### 8.5. Crear cien archivos

El material muestra el uso de expansión de llaves para generar nombres por lotes:

```bash
#!/bin/bash

for nombre in {1..100}.txt
do
    touch "$nombre"
done
```

### 8.6. Números aleatorios

Bash dispone de la variable `RANDOM`, que genera valores aleatorios.

Ejemplo para obtener un valor entre 0 y 5:

```bash
numero=$((RANDOM % 6))
echo "$numero"
```

### 8.7. break y continue

- `break`: interrumpe el bucle.
- `continue`: salta a la siguiente iteración.

---

## 9. Bucles while y until

### 9.1. Bucle while

El bloque se repite mientras la condición sea verdadera.

```bash
while [ condición ]
do
    comandos
done
```

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

### 9.2. Bucle until

`until` repite el bloque mientras la condición sea falsa. Cuando la condición se cumple, termina.

```bash
until [ condición ]
do
    comandos
done
```

Ejemplo:

```bash
#!/bin/bash

read -p "Introduce la palabra secreta: " palabra

until [ "$palabra" = "hal9000" ]
do
    read -p "Inténtalo de nuevo: " palabra
done

echo "Contraseña correcta"
```

---

## 10. Paso de parámetros

Los parámetros permiten pasar valores al script desde la línea de comandos.

| Expresión | Significado |
|---|---|
| `$1` | Primer parámetro. |
| `$2` | Segundo parámetro. |
| `$#` | Número de parámetros. |
| `$@` | Todos los parámetros. |

### 10.1. Ejemplo

Contenido de `saludo.sh`:

```bash
#!/bin/bash

echo "Hola, $1"
```

Si se ejecuta con un nombre como argumento, el script utilizará ese valor para saludar.

### 10.2. Comprobar el número de parámetros

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

---

## 11. Menús con select

`select` permite crear un menú numerado a partir de una lista de opciones.

### 11.1. Sintaxis

```bash
select variable in opcion1 opcion2 opcion3
do
    comandos
done
```

El valor elegido se almacena en la variable indicada. La variable `REPLY` contiene la respuesta numérica introducida.

### 11.2. Ejemplo

```bash
#!/bin/bash

select opcion in Fecha Calendario Salir
do
    case "$opcion" in
        Fecha)
            date
            ;;
        Calendario)
            cal
            ;;
        Salir)
            break
            ;;
        *)
            echo "Opción incorrecta"
            ;;
    esac
done
```

En el material se indica que `select` utiliza `PS3` como indicador del menú.

---

## 12. Funciones

Una función agrupa instrucciones que realizan una tarea concreta y pueden reutilizarse.

### 12.1. Definir una función

```bash
nombre_funcion() {
    comandos
}
```

### 12.2. Llamar a una función

```bash
#!/bin/bash

saludar() {
    echo "Hola, $1"
}

saludar "María"
```

Los argumentos de una función se reciben mediante sus propios parámetros posicionales.

### 12.3. Función para sumar

```bash
#!/bin/bash

suma() {
    resultado=$(($1 + $2))
    echo "$resultado"
}

suma 4 5
```

La función recibe dos argumentos y muestra su suma.

### 12.4. return

`return` termina la ejecución de una función y puede devolver un código de salida numérico. No debe confundirse con la impresión de un resultado mediante `echo`.

---

## 13. Salir y consultar códigos de retorno

`exit` termina el script. Puede recibir un código numérico.

```bash
exit 0
```

El material indica que `exit 0` representa una salida sin error.

La variable `$?` permite consultar el código de retorno del último comando ejecutado:

```bash
comando
echo "$?"
```

El código debe consultarse antes de ejecutar otro comando si se quiere comprobar el resultado del primero.

---

## 14. Introducción a dialog

El documento presenta `dialog` como una herramienta para mostrar cajas de diálogo y menús en scripts.

El material indica su instalación mediante:

```bash
apt-get install dialog
```

### 14.1. Mostrar un mensaje

```bash
dialog --msgbox "Hola" 0 0
```

### 14.2. Pedir información

```bash
dialog --inputbox "Introduce tu nombre:" 0 0
```

### 14.3. Preguntar sí o no

```bash
dialog --yesno "¿Quieres continuar?" 0 0
```

### 14.4. Mostrar un archivo

```bash
dialog --textbox "archivo.txt" 0 0
```

El material también presenta opciones como `--infobox`, `--nocancel`, `--calendar` y `--menu`.

`dialog` queda como tema de ampliación al final de esta guía.
