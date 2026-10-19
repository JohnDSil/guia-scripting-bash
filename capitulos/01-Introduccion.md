# Capítulo 1. Introducción a Bash

## Objetivos

- Comprender qué es un script.
- Conocer la función de Bash como intérprete de comandos.
- Reconocer la estructura básica de un script Bash.
- Aprender a crear, guardar y ejecutar un script.
- Comprender la importancia de los comentarios y de la sencillez del código.

## 1. ¿Qué es un script?

Un script es un archivo de texto que contiene instrucciones para que un intérprete las ejecute. En esta unidad trabajaremos con Bash y con ejemplos relacionados con la administración de sistemas operativos.

Los scripts permiten reunir varias instrucciones en un mismo archivo y ejecutarlas de forma ordenada. De este modo, es posible automatizar tareas que, de otro modo, tendrían que realizarse introduciendo los comandos uno a uno.

Al escribir scripts, conviene aplicar el principio KISS (*Keep It Simple, Stupid*): mantener las soluciones tan sencillas como sea posible para facilitar su lectura, comprensión y mantenimiento.

## 2. Estructura básica de un script

Un script Bash puede comenzar con la siguiente línea:

```bash
#!/bin/bash
```

Esta línea se conoce como *shebang* e indica el intérprete que se utilizará cuando el archivo se ejecute directamente.

A continuación, se escriben las instrucciones que debe ejecutar Bash.

Ejemplo:

```bash
#!/bin/bash

# Mostrar un mensaje por pantalla.
echo "Hola, mundo"
```

En este ejemplo:

- `#!/bin/bash` indica el intérprete.
- `# Mostrar un mensaje por pantalla.` es un comentario.
- `echo "Hola, mundo"` muestra un mensaje en la salida estándar.

Los comentarios ayudan a explicar el propósito del código y no se ejecutan como instrucciones.

## 3. Crear y guardar un script

Para crear un script básico:

1. Abre un editor de texto.
2. Crea un archivo llamado `hola.sh`.
3. Escribe el siguiente contenido:

```bash
#!/bin/bash

# Primer script Bash.
echo "Hola, mundo"
```

4. Guarda el archivo con el nombre `hola.sh`.

Es importante utilizar un editor de texto y no un procesador de textos que introduzca formato adicional en el archivo.

## 4. Ejecutar un script

Existen distintas formas de ejecutar un script Bash.

### 4.1. Ejecución mediante Bash

Se puede indicar directamente el intérprete y el nombre del archivo:

```bash
bash hola.sh
```

En este caso, Bash lee y ejecuta las instrucciones del archivo. No es necesario dar permiso de ejecución al archivo para utilizar este método, aunque sí es necesario tener permiso de lectura.

### 4.2. Ejecución mediante permisos

También se puede dar permiso de ejecución al archivo:

```bash
chmod u+x hola.sh
```

Después, se ejecuta desde el directorio actual:

```bash
./hola.sh
```

El prefijo `./` indica que el archivo se encuentra en el directorio actual.

### 4.3. Resultado esperado

Con cualquiera de los dos métodos, el ejemplo anterior debe mostrar:

```text
Hola, mundo
```

## 5. Recomendaciones al escribir scripts

Al crear scripts, conviene seguir estas recomendaciones:

- Utilizar nombres de archivo descriptivos.
- Incluir el shebang cuando corresponda.
- Añadir comentarios que ayuden a comprender el código.
- Mantener las instrucciones claras y sencillas.
- Comprobar que el script se ejecuta como se espera.
- Evitar modificar permisos del sistema de forma indiscriminada.

## 6. Introducción a la depuración

Cuando un script no funciona, es útil comprobar si contiene errores de sintaxis.

Bash permite realizar esta comprobación sin ejecutar las instrucciones:

```bash
bash -n hola.sh
```

Si Bash detecta un error de sintaxis, mostrará información que ayudará a localizarlo. Que no se muestre ningún error no garantiza que el script se comporte correctamente en todos los casos; únicamente indica que no se han detectado errores de sintaxis durante esta comprobación.

En capítulos posteriores se estudiarán otras opciones de depuración, como `-v` y `-x`.

## Ejercicios

1. Crea un script llamado `hola.sh` que muestre `Hola, mundo`.
2. Cambia el mensaje por una frase de presentación.
3. Crea un script que muestre dos líneas de texto utilizando `echo`.
4. Explica para qué sirve la línea `#!/bin/bash`.
5. Ejecuta un script mediante `bash nombre.sh`.
6. Da permiso de ejecución a un script y ejecútalo utilizando `./nombre.sh`.
7. Añade un comentario que explique qué hace una instrucción del script.
8. Utiliza `bash -n` para comprobar la sintaxis de un script.

## Comprobación

- [ ] Comprendo qué es un script.
- [ ] Identifico la función de `#!/bin/bash`.
- [ ] He creado y guardado un archivo `.sh`.
- [ ] He utilizado `echo` para mostrar texto.
- [ ] He ejecutado un script mediante Bash.
- [ ] He probado la ejecución mediante permisos.
- [ ] Comprendo para qué sirven los comentarios.
- [ ] He utilizado `bash -n` para comprobar la sintaxis.
