# Ruta de aprendizaje de Bash

Esta ruta organiza el estudio de los contenidos de la unidad *Lenguajes de Scripting en Sistemas Operativos*.

El objetivo es avanzar desde las instrucciones básicas hasta la creación de scripts que combinen variables, condiciones, bucles, funciones y menús.

## Etapa 1. Introducción a Bash

**Contenidos del temario:**
- Introducción a los lenguajes de scripting.
- Creación de un script.
- Línea inicial `#!/bin/bash`.
- Ejecución de scripts.
- Comentarios y estructura básica.

**Archivos recomendados:**
- `GUIA.md`
- `capitulos/01-introduccion.md`
- `ejemplos/01-hola-mundo.sh`

**Práctica recomendada:** crea un script que muestre varios mensajes y ejecútalo desde el terminal.

**Antes de continuar, deberías saber:** crear un archivo `.sh`, reconocer la línea inicial y ejecutar el script.

---

## Etapa 2. Entrada, salida y variables

**Contenidos del temario:**
- Salida estándar con `echo`.
- Opción `echo -n`.
- Entrada estándar con `read`.
- Comillas simples y dobles.
- Sustitución de comandos con `$(...)`.
- Variables del shell.
- Variables de entorno, `export` y `unset`.
- Variables especiales y parámetros del shell.

**Archivos recomendados:**
- `capitulos/02-entrada-salida-variables.md`
- `ejemplos/02-variables.sh`
- `EJERCICIOS.md`, ejercicios 1–11.

**Práctica recomendada:** crea un programa que solicite datos al usuario y los muestre mediante variables.

**Antes de continuar, deberías saber:** leer datos, asignar variables, mostrar sus valores y distinguir entre comillas simples y dobles.

---

## Etapa 3. Operaciones aritméticas

**Contenidos del temario:**
- Operaciones aritméticas.
- Expansión aritmética `$((...))`.
- Comando `let`.
- Comando `expr`.
- Operaciones decimales mediante `bc`.

**Archivos recomendados:**
- `capitulos/03-operaciones.md`
- `ejemplos/03-operaciones.sh`
- `EJERCICIOS.md`, ejercicios 12–16.

**Práctica recomendada:** crea una calculadora para sumar, restar, multiplicar y dividir números enteros.

**Antes de continuar, deberías saber:** calcular expresiones con enteros y comprobar que no se divida entre cero.

---

## Etapa 4. Condicionales

**Contenidos del temario:**
- Estructura `if`.
- Ramas `elif` y `else`.
- Condicional `case`.
- Comprobaciones de archivos y directorios.
- Condiciones y patrones.

**Archivos recomendados:**
- `capitulos/04-condicionales.md`
- `ejemplos/04-condicionales.sh`
- `EJERCICIOS.md`, ejercicios 17–22.

**Práctica recomendada:** crea un script que compruebe una ruta y muestre si corresponde a un directorio, un archivo regular o una ruta inexistente.

**Antes de continuar, deberías saber:** elegir entre varias alternativas según una condición y controlar opciones no válidas.

---

## Etapa 5. Bucles

**Contenidos del temario:**
- Bucle `for`.
- Bucle `while`.
- Bucle `until`.
- Instrucciones `break` y `continue`.

**Archivos recomendados:**
- `capitulos/05-bucles.md`
- `ejemplos/05-bucles.sh`
- `EJERCICIOS.md`, ejercicios 23–27.

**Práctica recomendada:** muestra una tabla de multiplicar y calcula la suma de los números del 1 al 10.

**Antes de continuar, deberías saber:** repetir instrucciones, actualizar variables de control y evitar bucles que no terminen.

---

## Etapa 6. Parámetros y códigos de salida

**Contenidos del temario:**
- Parámetros posicionales.
- Número de argumentos con `$#`.
- Argumentos con `$@` y `$*`.
- Estado de salida mediante `$?`.
- Finalización con `exit`.

**Archivos recomendados:**
- `capitulos/06-parametros-funciones.md`
- `ejemplos/06-parametros-funciones.sh`
- `EJERCICIOS.md`, ejercicios 28–32.

**Práctica recomendada:** crea un script que reciba argumentos y muestre un mensaje de error si no se proporciona el dato obligatorio.

**Antes de continuar, deberías saber:** pasar argumentos al ejecutar un script y consultar el código de salida de un comando.

---

## Etapa 7. Funciones y menús

**Contenidos del temario:**
- Definición e invocación de funciones.
- Parámetros de las funciones.
- Valores de retorno.
- Menús con `select`.
- Variable `PS3` y variable `REPLY`.
- Selección de acciones con `case`.

**Archivos recomendados:**
- `capitulos/06-parametros-funciones.md`
- `ejemplos/06-parametros-funciones.sh`
- `EJERCICIOS.md`, ejercicios 33–36.

**Práctica recomendada:** construye un menú que permita realizar varias operaciones y salir cuando el usuario lo decida.

**Antes de continuar, deberías saber:** dividir un programa en funciones y distinguir el estado de retorno de una función de la salida del script.

---

## Etapa 8. Depuración

**Contenidos del temario:**
- Comprobación sintáctica.
- Visualización de las líneas leídas por Bash.
- Seguimiento de instrucciones y expansiones.
- Opciones `-n`, `-v` y `-x`.

**Archivos recomendados:**
- `capitulos/07-depuracion-dialog.md`
- `ejemplos/07-depuracion.sh`
- `EJERCICIOS.md`, ejercicios 37–39.

**Práctica recomendada:** introduce un error en un script, comprueba su sintaxis y utiliza las opciones de depuración para observar su comportamiento.

**Antes de continuar, deberías saber:** elegir la opción adecuada según quieras comprobar la sintaxis o analizar la ejecución.

---

## Etapa 9. Interfaces con `dialog`

**Contenidos del temario:**
- Cuadros informativos.
- Entrada de datos.
- Confirmaciones.
- Menús y otras ventanas de texto.

**Archivos recomendados:**
- `capitulos/07-depuracion-dialog.md`
- `EJERCICIOS.md`, ejercicio 40.

**Práctica recomendada:** crea una pequeña interfaz textual con un mensaje informativo y una pregunta de confirmación.

**Requisito:** disponer de `dialog` en el sistema.

---

## Etapa 10. Proyecto integrador

Cuando hayas terminado las etapas anteriores, realiza `PROYECTO-FINAL.md`.

El proyecto debe combinar:
- Entrada y salida de datos.
- Variables.
- Operaciones aritméticas.
- Condicionales.
- Bucles.
- Funciones.
- Menús.
- Gestión de errores previsibles.
- Códigos de salida.

## Comprobación final

Antes de considerar terminado el recorrido, verifica que puedes:

- [ ] Crear y ejecutar un script de Bash.
- [ ] Leer datos con `read` y mostrarlos con `echo`.
- [ ] Utilizar variables y sustitución de comandos.
- [ ] Realizar operaciones aritméticas.
- [ ] Tomar decisiones con `if` y `case`.
- [ ] Utilizar `for`, `while` y `until`.
- [ ] Trabajar con argumentos y códigos de salida.
- [ ] Crear funciones y menús.
- [ ] Depurar un script.
- [ ] Utilizar las opciones de `dialog` estudiadas.

**Consejo:** no avances solo por haber leído los capítulos. Ejecuta los ejemplos y resuelve los ejercicios antes de pasar a la siguiente etapa.
