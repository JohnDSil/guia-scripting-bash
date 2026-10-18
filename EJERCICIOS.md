# Ejercicios de Bash

Estos ejercicios sirven para practicar los conceptos de la unidad *Lenguajes de Scripting en Sistemas Operativos*.

## Instrucciones

- Intenta resolver cada ejercicio antes de consultar las soluciones.
- Guarda cada script en un archivo con extensión `.sh`.
- Incluye `#!/bin/bash` al principio de cada script.
- Cuando sea necesario, concede permiso de ejecución con `chmod +x nombre_script.sh`.
- Ejecuta los scripts y comprueba sus resultados.
- Utiliza nombres de variables descriptivos y comentarios cuando ayuden a comprender el código.

---

## Bloque 1. Creación de scripts y salida estándar

### Ejercicio 1. Hola, mundo

Crea un script llamado `hola.sh` que muestre el mensaje `Hola, mundo`.

### Ejercicio 2. Presentación

Crea un script que muestre tu nombre, tu curso y el objetivo de este repositorio, cada dato en una línea distinta.

### Ejercicio 3. Salida sin salto de línea

Utiliza `echo -n` para mostrar el texto `Introduce tu nombre: ` sin que el cursor pase a la línea siguiente.

### Ejercicio 4. Comillas

Crea un script que muestre una frase entre comillas simples y otra entre comillas dobles. Observa cómo se comportan ambas cuando contienen una variable.

### Ejercicio 5. Sustitución de comandos

Utiliza `$(...)` para guardar en una variable el resultado de un comando y mostrarlo después.

---

## Bloque 2. Entrada y variables

### Ejercicio 6. Leer un nombre

Pide al usuario su nombre mediante `read` y muestra un saludo personalizado.

### Ejercicio 7. Leer varios datos

Solicita el nombre y la edad del usuario. Muestra los dos datos en una frase.

### Ejercicio 8. Variables

Crea las variables `nombre`, `curso` y `centro`. Asigna un valor a cada una y muestra sus contenidos.

### Ejercicio 9. Variables de entorno

Exporta una variable con `export` y consulta las variables del entorno mediante `env`.

### Ejercicio 10. Eliminar una variable

Crea una variable, muestra su valor, elimínala con `unset` y comprueba el resultado.

### Ejercicio 11. Nombre de un archivo

Utiliza `basename` para obtener el nombre de un archivo a partir de una ruta.

---

## Bloque 3. Operaciones aritméticas

### Ejercicio 12. Suma

Pide dos números enteros y muestra su suma.

### Ejercicio 13. Operaciones básicas

Pide dos números enteros y muestra su suma, resta, multiplicación y división entera. Comprueba que el divisor no sea cero antes de dividir.

### Ejercicio 14. Expresiones aritméticas

Resuelve una suma utilizando `$((...))` y otra utilizando `let`. Compara los resultados.

### Ejercicio 15. Comando `expr`

Utiliza `expr` para calcular la suma y la resta de dos números enteros.

### Ejercicio 16. Números decimales

Investiga, siguiendo el apartado de operaciones del material, cómo se puede utilizar `bc` para calcular una operación con decimales.

---

## Bloque 4. Condicionales

### Ejercicio 17. Número positivo, negativo o cero

Pide un número entero e indica si es positivo, negativo o igual a cero.

### Ejercicio 18. Mayor de dos números

Solicita dos números enteros e indica cuál es mayor o si son iguales.

### Ejercicio 19. Comprobar un archivo

Pide una ruta y comprueba si el archivo o directorio existe utilizando una condición apropiada.

### Ejercicio 20. Comprobar un directorio

Pide una ruta y utiliza `-d` para determinar si corresponde a un directorio.

### Ejercicio 21. Comprobar un archivo regular

Pide una ruta y utiliza `-f` para comprobar si corresponde a un archivo regular.

### Ejercicio 22. Menú con `case`

Pide al usuario una opción entre `1`, `2` y `3`. Utiliza `case` para mostrar un mensaje diferente para cada opción y otro para las opciones no contempladas.

---

## Bloque 5. Bucles

### Ejercicio 23. Contar con `for`

Crea un script que muestre los números del 1 al 10 utilizando un bucle `for`.

### Ejercicio 24. Contar con `while`

Repite el ejercicio anterior utilizando `while`.

### Ejercicio 25. Contar con `until`

Utiliza `until` para mostrar los números del 1 al 10. Observa cuándo termina el bucle.

### Ejercicio 26. Sumar números

Utiliza un bucle para calcular la suma de los números enteros del 1 al 10.

### Ejercicio 27. `break` y `continue`

Crea un bucle que recorra varios números. Utiliza `continue` para omitir uno de ellos y `break` para terminar el bucle cuando se cumpla una condición.

---

## Bloque 6. Parámetros y códigos de salida

### Ejercicio 28. Primer argumento

Crea un script que reciba un nombre como primer argumento y lo muestre por pantalla.

Ejemplo de ejecución:

```bash
./saludo.sh Ana
```

### Ejercicio 29. Número de argumentos

Utiliza `$#` para mostrar cuántos argumentos ha recibido un script.

### Ejercicio 30. Mostrar los argumentos

Crea un script que muestre los argumentos recibidos utilizando `$@`. Prueba también con argumentos que contengan espacios.

### Ejercicio 31. Estado de un comando

Ejecuta un comando y muestra su código de salida mediante `$?`. Comprueba qué ocurre cuando el comando termina correctamente y cuando se produce un error.

### Ejercicio 32. Finalizar un script

Utiliza `exit` para finalizar un script con un código de salida elegido. Después, consulta ese código desde el terminal.

---

## Bloque 7. Funciones y menús

### Ejercicio 33. Crear una función

Define una función llamada `saludar` que muestre un saludo. Invócala desde el cuerpo principal del script.

### Ejercicio 34. Función con parámetros

Crea una función que reciba un nombre y lo utilice para personalizar el mensaje que muestra.

### Ejercicio 35. Menú con `select`

Utiliza `select` para presentar varias opciones al usuario. Emplea `case` para ejecutar una acción según la opción seleccionada y permite salir del menú.

### Ejercicio 36. Menú de operaciones

Crea un menú que permita elegir entre sumar dos números, restarlos o salir. Organiza las operaciones mediante funciones.

---

## Bloque 8. Depuración e interfaz de texto

### Ejercicio 37. Comprobar la sintaxis

Crea un script con un error sintáctico y utiliza `bash -n` para comprobar su sintaxis sin ejecutarlo.

### Ejercicio 38. Mostrar las instrucciones

Ejecuta un script de prueba con `bash -v` y observa las líneas que Bash muestra antes de ejecutarlas.

### Ejercicio 39. Rastrear la ejecución

Ejecuta un script con `bash -x` y observa las instrucciones y expansiones que se muestran durante la ejecución.

### Ejercicio 40. Interfaz con `dialog`

Si tienes `dialog` instalado en tu sistema, crea un mensaje sencillo mediante `--msgbox` y una pregunta de confirmación mediante `--yesno`.

---

## Recomendación de estudio

Resuelve los ejercicios en orden. Los primeros permiten practicar instrucciones básicas y los últimos combinan varias partes del temario.

Antes de ejecutar un script, comprueba su contenido y asegúrate de que no realice operaciones no deseadas sobre archivos o directorios.
