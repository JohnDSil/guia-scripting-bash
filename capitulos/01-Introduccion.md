
# Capítulo 1. Introducción a Bash

## Objetivos

- Comprender qué es un script.
- Reconocer la estructura básica de un script Bash.
- Aprender a guardar y ejecutar un script.

## 1. ¿Qué es un script?

Un script es un archivo que contiene instrucciones para que un intérprete las ejecute. En esta guía trabajaremos con Bash y con los ejemplos relacionados con los sistemas operativos incluidos en el material de clase.

## 2. Estructura básica

Un script Bash puede comenzar con la línea:

```bash
#!/bin/bash
```

Esta línea indica el intérprete que se utilizará para ejecutar el archivo.

Ejemplo:

```bash
#!/bin/bash
echo "Hola, mundo"
```

La instrucción `echo` muestra texto en la salida.

## 3. Crear y ejecutar un script

1. Crea un archivo llamado `hola.sh`.
2. Escribe el ejemplo anterior.
3. Guarda el archivo.
4. Ejecuta el script con Bash:

```bash
bash hola.sh
```

El resultado esperado es:

```text
Hola, mundo
```

El material también presenta la ejecución mediante permisos:

```bash
chmod u+x hola.sh
./hola.sh
```

## Ejercicios

1. Crea un script que muestre `Hola, mundo`.
2. Cambia el mensaje por una frase de presentación.
3. Crea un script que muestre dos líneas de texto.
4. Explica para qué sirve la primera línea `#!/bin/bash`.
5. Ejecuta un script usando `bash nombre.sh`.

## Comprobación

- [ ] He creado un archivo `.sh`.
- [ ] He utilizado `echo`.
- [ ] He ejecutado el script.
- [ ] Comprendo la función de la primera línea.
