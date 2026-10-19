# Capítulo 2. Entrada, salida y variables

## Objetivos

- Mostrar información mediante la salida estándar.
- Recoger datos introducidos por el usuario.
- Crear, asignar y utilizar variables.
- Comprender la diferencia entre comillas simples y dobles.
- Utilizar la sustitución de comandos.
- Reconocer variables del shell, variables de entorno y variables especiales.

## 1. Salida estándar con `echo`

La instrucción `echo` permite mostrar texto por la salida estándar.

```bash
echo "Hola"
echo 'Hola'
```

Ambas instrucciones muestran `Hola`. Sin embargo, las comillas pueden producir resultados diferentes cuando el texto contiene variables o sustituciones.

### 1.1. Comillas simples y dobles

Las comillas simples conservan literalmente el contenido de la cadena. Las comillas dobles permiten la expansión de variables.

```bash
nombre="Ana"

echo "Hola, $nombre"
echo 'Hola, $nombre'
```

Resultado:

```text
Hola, Ana
Hola, $nombre
```

Por tanto:

- **Comillas dobles (`"..."`):** permiten expandir variables.
- **Comillas simples (`'...'`):** mantienen literalmente el contenido de la cadena.

### 1.2. Opción `-n`

La opción `-n` permite mostrar texto sin añadir el salto de línea final.

```bash
echo -n "Introduce tu nombre: "
read nombre
echo "Hola, $nombre"
```

Esto permite que la entrada del usuario aparezca en la misma línea que el mensaje.

## 2. Sustitución de comandos

La sustitución de comandos permite utilizar la salida de un comando como parte de otra instrucción.

La forma recomendada en los ejemplos de este capítulo es `$(...)`.

```bash
echo "Fecha: $(date)"
```

También se puede escribir utilizando acentos graves:

```bash
echo "Fecha: `date`"
```

Ambas formas permiten incorporar la salida del comando `date` en el texto mostrado.

La forma `$(...)` suele ser más cómoda cuando la sustitución está dentro de expresiones más complejas.

## 3. Entrada estándar con `read`

La instrucción `read` permite recoger información introducida por el usuario y almacenarla en una variable.

Ejemplo:

```bash
#!/bin/bash

read -p "Escribe tu nombre: " nombre
echo "Hola, $nombre"
```

En este caso:

1. `read` espera la entrada del usuario.
2. El texto introducido se almacena en la variable `nombre`.
3. `echo` muestra el saludo utilizando el valor de esa variable.

La opción `-p` permite mostrar un mensaje antes de leer la entrada.

### Ejercicio de ejemplo

Crea un script que solicite una ciudad y muestre un mensaje con ella.

```bash
#!/bin/bash

read -p "¿En qué ciudad vives? " ciudad
echo "Vives en $ciudad"
```

## 4. Variables del shell

Una variable permite almacenar un valor para utilizarlo posteriormente.

Ejemplo:

```bash
nombre="Ana"
echo "$nombre"
```

La asignación se realiza con el signo `=` y **no deben colocarse espacios alrededor de él**.

Correcto:

```bash
nombre="Ana"
```

Incorrecto:

```bash
nombre = "Ana"
```

Para mostrar el contenido de una variable se utiliza `$` delante de su nombre:

```bash
echo "$nombre"
```

Es recomendable encerrar las expansiones de variables entre comillas dobles cuando se utilizan como argumentos de comandos, especialmente si su contenido puede incluir espacios.

## 5. Variables de entorno

Las variables de entorno contienen información que puede estar disponible para los procesos que se ejecutan en el sistema.

Entre las variables mencionadas en el material de la unidad se encuentran:

| Variable | Información asociada |
|---|---|
| `HOME` | Directorio personal del usuario |
| `HOSTNAME` | Nombre del equipo |
| `PATH` | Directorios en los que se buscan ejecutables |
| `PWD` | Directorio de trabajo actual |
| `OLDPWD` | Directorio de trabajo anterior |
| `USER` | Nombre de usuario |
| `SHELL` | Shell asociado al usuario |
| `TERM` | Tipo de terminal |
| `LANG` | Configuración regional |
| `EDITOR` | Editor asociado a esta variable, si está definido |

La disponibilidad y el valor de algunas variables pueden depender del sistema y de la configuración de la sesión.

### 5.1. Consultar el entorno con `env`

El comando `env` muestra las variables de entorno disponibles para el proceso.

```bash
env
```

Para consultar una variable concreta:

```bash
echo "$HOME"
echo "$PATH"
```

### 5.2. Consultar variables del shell con `set`

El comando `set`, sin argumentos, muestra las variables y funciones del shell junto con otra información de su estado.

```bash
set
```

Su salida puede ser extensa.

### 5.3. Exportar una variable

Una variable creada en el shell no se transmite automáticamente al entorno de los procesos hijos. Para exportarla se puede utilizar `export`.

```bash
curso="Bash"
export curso
```

También se puede asignar y exportar en una sola instrucción:

```bash
export curso="Bash"
```

### 5.4. Eliminar una variable con `unset`

El comando `unset` permite eliminar una variable.

```bash
nombre="Ana"
echo "$nombre"

unset nombre
echo "$nombre"
```

Después de eliminarla, la expansión de `nombre` normalmente no mostrará ningún valor, salvo que exista otra definición aplicable.

## 6. Variables especiales

Bash proporciona variables especiales que contienen información sobre los parámetros, los procesos y el resultado de los comandos.

| Variable | Significado |
|---|---|
| `$$` | Identificador del proceso del shell actual |
| `$*` | Referencia a todos los parámetros posicionales |
| `$@` | Referencia a todos los parámetros posicionales |
| `$#` | Número de parámetros posicionales |
| `$?` | Código de salida del último comando ejecutado |
| `$!` | Identificador del último proceso ejecutado en segundo plano |
| `$_` | En Bash, contiene el último argumento del comando anterior en los contextos habituales |

Aunque `$*` y `$@` hacen referencia a los parámetros posicionales, su comportamiento puede diferir cuando se utilizan entre comillas dobles. Para recorrer argumentos conservando correctamente los que contienen espacios, suele utilizarse `"$@"`.

### 6.1. Ejemplo de parámetros

Crea un archivo llamado `parametros.sh`:

```bash
#!/bin/bash

echo "Nombre del script: $0"
echo "Número de parámetros: $#"
echo "Todos los parámetros: $@"
echo "Primer parámetro: $1"
```

Ejecución:

```bash
bash parametros.sh Ana Sevilla
```

La salida incluirá el nombre del script, el número de parámetros recibidos, los argumentos y el primer parámetro.

### 6.2. Ejemplo de código de salida

```bash
ls
echo "$?"
```

La segunda instrucción muestra el código de salida de `ls`. Habitualmente, `0` indica que el comando terminó correctamente y un valor distinto de cero indica que se produjo un error o una condición no satisfactoria.

Es importante consultar `$?` inmediatamente después del comando cuyo resultado se quiere comprobar, porque cada nueva instrucción puede cambiar su valor.

## 7. Ejercicios

1. Muestra tu nombre mediante `echo`.
2. Crea una variable llamada `ciudad` y muestra su valor.
3. Pide un nombre con `read` y saluda al usuario.
4. Muestra la fecha mediante sustitución de comandos.
5. Muestra un mensaje utilizando comillas simples y otro utilizando comillas dobles. Explica la diferencia.
6. Utiliza `echo -n` para mostrar un mensaje sin salto de línea final.
7. Consulta las variables de entorno mediante `env`.
8. Consulta las variables del shell mediante `set`.
9. Crea una variable, expórtala con `export` y consulta su valor.
10. Utiliza `unset` para eliminar una variable creada
