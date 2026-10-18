# Examen de repaso: Lenguajes de scripting en sistemas operativos

## 1. Objetivo

Este examen permite comprobar los conocimientos sobre la creación, ejecución y depuración de scripts Bash, las variables, las estructuras de control, los bucles, los parámetros, las funciones y los códigos de salida.

**Instrucciones:**
- Lee cada pregunta antes de responder.
- Escribe y prueba los scripts cuando sea posible.
- Utiliza comentarios para explicar las partes más importantes del código.
- Comprueba los scripts antes de ejecutarlos.
- Respeta la sintaxis de Bash y las indicaciones de cada ejercicio.

---

## 2. Preguntas teóricas

### Pregunta 1. Creación de scripts

¿Qué es un script de Bash y para qué se utiliza?

### Pregunta 2. Shebang

¿Qué indica la siguiente primera línea de un script?

```bash
#!/bin/bash
```

### Pregunta 3. Permisos y ejecución

Explica cómo dar permiso de ejecución a un archivo llamado `script.sh` y cómo ejecutarlo desde el directorio actual.

### Pregunta 4. Depuración

Explica la diferencia entre las siguientes opciones:

```bash
bash -n script.sh
bash -v script.sh
bash -x script.sh
```

### Pregunta 5. Salida estándar

¿Para qué sirve `echo`? ¿Qué diferencia hay entre `echo "Hola"` y `echo -n "Hola"`?

### Pregunta 6. Comillas

Explica la diferencia entre utilizar comillas simples y comillas dobles en Bash cuando una cadena contiene una variable.

### Pregunta 7. Variables

¿Cómo se asigna un valor a una variable? ¿Qué diferencia hay entre una variable de shell y una variable exportada al entorno?

### Pregunta 8. Parámetros especiales

Indica qué representan las siguientes variables especiales:

- `$0`
- `$1`
- `$#`
- `$@`
- `$?`
- `$$`

### Pregunta 9. Estructuras condicionales

¿Para qué sirven `if`, `elif` y `else`?

### Pregunta 10. Bucles

Explica la diferencia entre los bucles `for`, `while` y `until`.

### Pregunta 11. Funciones

¿Para qué sirve una función en Bash? ¿Qué diferencia hay entre `return` y `exit`?

### Pregunta 12. Código de salida

¿Qué información proporciona `$?` después de ejecutar un comando?

---

## 3. Ejercicios prácticos

### Ejercicio 1. Primer script

Crea un script llamado `saludo.sh` que:

1. Utilice el intérprete Bash.
2. Muestre un saludo por pantalla.
3. Muestre tu nombre en una segunda línea.
4. Incluya comentarios explicativos.

### Ejercicio 2. Entrada de datos

Crea un script que solicite al usuario su nombre mediante `read` y después muestre un mensaje personalizado.

### Ejercicio 3. Variables y entorno

Crea una variable llamada `CURSO` con el valor `Bash`. Expórtala al entorno y muestra su valor por pantalla.

### Ejercicio 4. Operaciones aritméticas

Solicita dos números enteros y muestra:

- Su suma.
- Su resta.
- Su multiplicación.

### Ejercicio 5. Condicional `if`

Escribe un script que solicite un número entero e indique si es positivo, negativo o cero.

### Ejercicio 6. Comprobación de archivos

Solicita una ruta y comprueba si existe. Si existe, indica si es un archivo regular o un directorio. Si no existe, muestra un mensaje adecuado.

### Ejercicio 7. Estructura `case`

Crea un menú que permita seleccionar una de estas opciones:

1. Mostrar un saludo.
2. Mostrar la fecha mediante el comando correspondiente.
3. Mostrar el directorio actual.
4. Salir.

Utiliza `case` para procesar la opción elegida.

### Ejercicio 8. Bucle `for`

Escribe un script que utilice `for` para mostrar los números del 1 al 10.

### Ejercicio 9. Bucle `while`

Crea un script que solicite números enteros hasta que el usuario introduzca el número `0`.

### Ejercicio 10. Bucle `until`

Crea un script que utilice `until` para mostrar los números del 1 al 5.

### Ejercicio 11. Parámetros posicionales

Crea un script que reciba dos parámetros y muestre:

- El nombre del script.
- El primer parámetro.
- El segundo parámetro.
- El número total de parámetros recibidos.

### Ejercicio 12. Validación de parámetros

Crea un script que necesite exactamente dos parámetros. Si no recibe dos, mostrará un mensaje de uso y finalizará con un código de salida distinto de cero.

### Ejercicio 13. Funciones

Crea una función llamada `saludar` que reciba un nombre como argumento y muestre un saludo. Invócala con un nombre de ejemplo.

### Ejercicio 14. Control de ejecución

Escribe un script que ejecute un comando y compruebe su código de salida mediante `$?`. Debe indicar si el comando ha terminado correctamente.

### Ejercicio 15. Depuración

Crea un script sencillo y comprueba su funcionamiento utilizando:

```bash
bash -n script.sh
bash -v script.sh
bash -x script.sh
```

Explica qué información observas en cada ejecución.

---

## 4. Ejercicio integrador

Crea un script llamado `gestor.sh` que muestre un menú repetitivo con las siguientes opciones:

1. Saludar al usuario.
2. Realizar una operación aritmética con dos números enteros.
3. Comprobar si una ruta existe.
4. Mostrar los parámetros recibidos al iniciar el script.
5. Mostrar el directorio actual.
6. Salir.

### Requisitos

- Utilizar `#!/bin/bash`.
- Incluir comentarios.
- Utilizar variables para almacenar los datos.
- Emplear `case` para procesar el menú.
- Utilizar al menos una estructura `if`.
- Utilizar un bucle para repetir el menú.
- Implementar al menos una función.
- Gestionar la opción de salida.
- Comprobar la sintaxis antes de ejecutar el script.

### Pruebas

Comprueba el funcionamiento del programa con estas situaciones:

- Seleccionar cada opción del menú.
- Introducir una opción no válida.
- Introducir una ruta existente.
- Introducir una ruta inexistente.
- Salir del programa correctamente.

---

## 5. Criterios de evaluación orientativos

| Apartado | Puntuación |
|---|---:|
| Preguntas teóricas | 2 puntos |
| Entrada, salida y variables | 1,5 puntos |
| Operaciones y condicionales | 1,5 puntos |
| Bucles y parámetros | 2 puntos |
| Funciones y códigos de salida | 1 punto |
| Ejercicio integrador | 2 puntos |
| **Total** | **10 puntos** |

