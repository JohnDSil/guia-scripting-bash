# Prácticas de Bash

Estas prácticas permiten aplicar conjuntamente los conceptos de la unidad *Lenguajes de Scripting en Sistemas Operativos*.

A diferencia de los ejercicios individuales, cada práctica plantea una tarea más completa que requiere combinar varias instrucciones y estructuras de Bash.

## Recomendaciones generales

- Incluye `#!/bin/bash` al principio de cada script.
- Utiliza variables con nombres descriptivos.
- Comprueba las entradas del usuario cuando sea necesario.
- Utiliza comentarios para explicar las partes importantes.
- Prueba el script con diferentes entradas.
- Cuando termines, comprueba su sintaxis y revisa los posibles errores.

---

## Práctica 1. Calculadora básica

**Objetivo:** practicar `read`, variables, operaciones aritméticas y `case`.

### Enunciado

Crea un script llamado `calculadora.sh` que solicite dos números enteros al usuario y muestre un menú con estas opciones:

1. Sumar.
2. Restar.
3. Multiplicar.
4. Dividir.
5. Salir.

El usuario debe elegir una operación. El script realizará el cálculo correspondiente y mostrará el resultado.

### Requisitos

- Utilizar `read` para leer los números.
- Utilizar `case` para seleccionar la operación.
- Utilizar expresiones aritméticas de Bash para las operaciones con enteros.
- Evitar la división entre cero.
- Mostrar un mensaje si la opción no es válida.
- Permitir finalizar el programa.

### Comprobaciones

Prueba la calculadora con números positivos, negativos y cero. Comprueba qué ocurre al elegir una opción incorrecta y al intentar dividir entre cero.

---

## Práctica 2. Comprobador de rutas

**Objetivo:** practicar entrada de datos, condiciones y operadores de comprobación de archivos.

### Enunciado

Crea un script llamado `comprobar_ruta.sh` que solicite al usuario una ruta y compruebe qué tipo de elemento representa.

### Requisitos

El programa debe distinguir, al menos, entre:

- Una ruta que no existe.
- Un directorio.
- Un archivo regular.

Utiliza las condiciones y los operadores de comprobación explicados en el material.

### Comprobaciones

Prueba una ruta existente que sea un directorio, otra que sea un archivo regular y una ruta inexistente.

---

## Práctica 3. Tabla de multiplicar

**Objetivo:** practicar bucles y operaciones aritméticas.

### Enunciado

Crea un script llamado `tabla.sh` que pida un número entero y muestre su tabla de multiplicar del 1 al 10.

### Requisitos

- Leer el número con `read`.
- Utilizar un bucle.
- Calcular cada producto.
- Mostrar cada operación de forma clara.

### Ampliación

Modifica el programa para que permita repetir la tabla con otro número sin tener que volver a ejecutar el script.

---

## Práctica 4. Análisis de argumentos

**Objetivo:** practicar los parámetros posicionales y los códigos de salida.

### Enunciado

Crea un script llamado `analizar_argumentos.sh` que reciba información desde la línea de comandos.

### Requisitos

El script debe:

1. Mostrar el nombre del script.
2. Mostrar el número de argumentos recibidos mediante `$#`.
3. Mostrar los argumentos mediante `$@`.
4. Comprobar si se ha recibido al menos un argumento.
5. Terminar con un código de salida apropiado según el resultado.

### Ejemplos de ejecución

```bash
./analizar_argumentos.sh
./analizar_argumentos.sh archivo.txt
./analizar_argumentos.sh "mi archivo.txt" informe.txt
```

Observa la diferencia entre pasar un argumento con espacios entre comillas y pasar varios argumentos independientes.

---

## Práctica 5. Menú interactivo

**Objetivo:** practicar `select`, `case`, funciones y bucles.

### Enunciado

Crea un script llamado `menu.sh` que muestre un menú con las siguientes opciones:

1. Mostrar un saludo.
2. Mostrar la fecha del sistema.
3. Mostrar el directorio actual.
4. Salir.

### Requisitos

- Utilizar `select` para presentar las opciones.
- Utilizar `case` para decidir qué acción ejecutar.
- Organizar al menos una de las acciones mediante una función.
- Repetir el menú hasta que el usuario elija salir.

### Comprobaciones

Prueba todas las opciones disponibles y observa el comportamiento del menú al introducir una selección no contemplada.

---

## Práctica 6. Funciones y operaciones

**Objetivo:** organizar un script mediante funciones.

### Enunciado

Crea un script llamado `operaciones.sh` que solicite dos números enteros y disponga de funciones independientes para realizar las operaciones aritméticas básicas.

### Requisitos

- Definir funciones para sumar, restar y multiplicar.
- Definir una función para dividir.
- Pasar los valores necesarios a las funciones.
- Comprobar que el divisor no sea cero.
- Mostrar los resultados.
- Diferenciar el valor que una función devuelve mediante `return` del resultado numérico que se quiere mostrar.

### Comprobaciones

Prueba cada operación y revisa qué ocurre al intentar dividir entre cero.

---

## Práctica 7. Depuración de scripts

**Objetivo:** utilizar las herramientas de depuración del material.

### Enunciado

Crea un script que solicite un nombre y muestre un saludo. Introduce temporalmente un error sintáctico y prueba las distintas opciones de depuración.

### Tareas

1. Utiliza `bash -n` para comprobar la sintaxis.
2. Utiliza `bash -v` para observar las instrucciones que Bash muestra antes de ejecutarlas.
3. Utiliza `bash -x` para seguir la ejecución y observar las expansiones.
4. Corrige el error.
5. Ejecuta el script de nuevo y comprueba el resultado.

### Preguntas

- ¿Qué opción comprueba la sintaxis sin ejecutar el script?
- ¿Qué opción muestra las líneas de entrada del script?
- ¿Qué opción permite seguir las instrucciones y sus expansiones durante la ejecución?

---

## Práctica 8. Interfaz con `dialog`

**Objetivo:** practicar las opciones de `dialog` explicadas en el documento.

### Enunciado

Si dispones de `dialog` en tu sistema, crea un pequeño menú textual que permita mostrar un mensaje, solicitar un dato y pedir confirmación antes de salir.

### Requisitos

Investiga y utiliza las opciones del material que correspondan a estas tareas:

- Mostrar un mensaje informativo mediante `--msgbox`.
- Solicitar un dato mediante `--inputbox`.
- Pedir confirmación mediante `--yesno`.
- Mostrar varias opciones mediante `--menu`.

### Comprobaciones

Prueba el comportamiento de las ventanas y observa cómo responde el programa cuando el usuario confirma o cancela una operación.

Esta práctica requiere que `dialog` esté instalado y disponible en el sistema.

---

## Práctica final. Gestor de operaciones

**Objetivo:** integrar los principales contenidos de la unidad.

### Enunciado

Desarrolla un script llamado `gestor.sh` que muestre un menú desde el que el usuario pueda realizar diferentes tareas.

### Funcionalidades obligatorias

1. Mostrar un saludo.
2. Realizar una operación aritmética entre dos enteros.
3. Comprobar si una ruta existe y distinguir directorios de archivos regulares.
4. Mostrar los argumentos recibidos cuando se inicia el script.
5. Finalizar el programa mediante una opción del menú.

### Requisitos técnicos

- Incluir `#!/bin/bash`.
- Utilizar variables y entrada mediante `read`.
- Utilizar funciones para organizar las operaciones.
- Utilizar `case` para gestionar las opciones.
- Utilizar un bucle para mantener el menú activo.
- Comprobar los casos de error previsibles.
- Utilizar `exit` para finalizar el script.
- Revisar la sintaxis antes de dar el trabajo por terminado.

### Entrega

El proyecto debe incluir:

- El archivo `gestor.sh`.
- Una explicación breve de su funcionamiento.
- Ejemplos de ejecución.
- Una lista de pruebas realizadas y sus resultados.

## Criterios de autoevaluación

Antes de dar por finalizada cada práctica, comprueba que:

- [ ] El script tiene la línea inicial `#!/bin/bash`.
- [ ] Las variables se utilizan correctamente.
- [ ] La entrada del usuario se procesa como se espera.
- [ ] Las condiciones contemplan los casos previstos.
- [ ] Los bucles terminan cuando corresponde.
- [ ] Las funciones tienen una finalidad clara.
- [ ] Los errores previsibles se gestionan mediante mensajes adecuados.
- [ ] La sintaxis del script se ha comprobado.
- [ ] El programa se ha probado con varias entradas.

