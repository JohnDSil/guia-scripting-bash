
# Capítulo 2. Entrada, salida y variables

## Objetivos

- Mostrar información.
- Recoger datos del usuario.
- Almacenar valores en variables.
- Reconocer variables de entorno y variables especiales.

## 1. Salida con echo

La instrucción `echo` muestra texto:

```bash
echo "Hola"
echo 'Hola'
```

Las comillas dobles y simples pueden producir comportamientos diferentes cuando el texto contiene variables.

```bash
nombre="Ana"
echo "Hola, $nombre"
echo 'Hola, $nombre'
```

## 2. Sustitución de comandos

Se puede incorporar la salida de un comando usando `$(...)`:

```bash
echo "Fecha: $(date)"
```

El material también presenta la forma con acentos graves:

```bash
echo "Fecha: `date`"
```

## 3. Entrada con read

La instrucción `read` permite recoger información:

```bash
#!/bin/bash
read -p "Escribe tu nombre: " nombre
echo "Hola, $nombre"
```

## 4. Variables

Una variable permite guardar un valor y utilizarlo después:

```bash
nombre="Ana"
echo "$nombre"
```

No se deben añadir espacios alrededor del signo `=` en esta asignación.

## 5. Variables de entorno

El material incluye comandos para consultar variables y el entorno:

```bash
set
env
```

También presenta `unset` para eliminar una variable:

```bash
unset nombre
```

Entre las variables de entorno que aparecen en el material están `HOME`, `HOSTNAME`, `PATH`, `PWD`, `OLDPWD`, `USER`, `SHELL`, `TERM`, `LANG` y `EDITOR`.

## 6. Variables especiales

El material presenta las siguientes variables especiales:

- `$$`: identificador del proceso del shell.
- `$*` y `$@`: referencias a los parámetros.
- `$#`: número de parámetros.
- `$?`: código de retorno del último comando.
- `$!`: identificador del último proceso ejecutado en segundo plano.
- `$_`: valor relacionado con el último argumento del comando anterior.

## Ejercicios

1. Muestra tu nombre con `echo`.
2. Crea una variable llamada `ciudad` y muestra su valor.
3. Pide un nombre con `read` y saluda al usuario.
4. Muestra la fecha mediante sustitución de comandos.
5. Consulta el entorno con `env`.
6. Consulta las variables del shell con `set`.
7. Utiliza `unset` con una variable creada por ti.
8. Escribe un ejemplo que muestre el valor de `$#`.

## Comprobación

- [ ] Sé mostrar texto.
- [ ] Sé leer una entrada.
- [ ] Sé crear y utilizar variables.
- [ ] Reconozco las variables especiales del material.
