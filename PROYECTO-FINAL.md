# Proyecto final: Gestor interactivo en Bash

## 1. Objetivo

Desarrollar un script de Bash que permita realizar varias tareas desde un menú interactivo.

El proyecto sirve para poner en práctica los contenidos de la unidad *Lenguajes de Scripting en Sistemas Operativos*: entrada y salida, variables, operaciones aritméticas, condicionales, bucles, parámetros, funciones, códigos de salida y depuración.

## 2. Nombre del archivo

El programa se guardará como:

`gestor.sh`

Debe comenzar con la línea:

```bash
#!/bin/bash
```

## 3. Descripción del programa

El programa mostrará un menú con las siguientes opciones:

1. Mostrar un saludo.
2. Realizar operaciones aritméticas.
3. Comprobar una ruta.
4. Mostrar los argumentos recibidos.
5. Mostrar el directorio actual.
6. Salir.

El menú se repetirá hasta que el usuario seleccione la opción de salida.

## 4. Requisitos funcionales

### Opción 1. Mostrar un saludo

Solicita el nombre del usuario y muestra un mensaje personalizado.

Debe utilizar `read`, variables y `echo`.

### Opción 2. Operaciones aritméticas

Solicita dos números enteros y permite elegir entre:

- Sumar.
- Restar.
- Multiplicar.
- Dividir.

Utiliza una estructura `case` para elegir la operación.

Si se selecciona la división, el programa debe comprobar que el divisor no sea cero.

### Opción 3. Comprobar una ruta

Solicita una ruta y comprueba si:

- Existe.
- Es un directorio.
- Es un archivo regular.
- No existe o no corresponde a ninguno de los tipos anteriores contemplados.

Utiliza los operadores de comprobación de archivos explicados en el temario, como `-e`, `-d` y `-f`.

### Opción 4. Mostrar los argumentos recibidos

El programa debe mostrar:

- El número de argumentos mediante `$#`.
- Los argumentos recibidos mediante `"$@"`.

Para comprobar esta función, ejecuta el programa con argumentos que contengan espacios.

Ejemplo:

```bash
./gestor.sh "primer argumento" segundo
```

### Opción 5. Mostrar el directorio actual

Utiliza un comando del sistema para mostrar el directorio de trabajo actual.

### Opción 6. Salir

Finaliza el programa mediante `exit` o termina el bucle del menú para que el script pueda finalizar normalmente.

## 5. Requisitos técnicos

El proyecto debe cumplir las siguientes condiciones:

- Incluir la línea inicial `#!/bin/bash`.
- Utilizar variables.
- Leer información mediante `read`.
- Mostrar mensajes mediante `echo`.
- Realizar operaciones aritméticas con enteros.
- Utilizar `if` y `case`.
- Utilizar un bucle `while` o una estructura equivalente estudiada.
- Definir funciones para organizar las tareas.
- Utilizar argumentos posicionales y variables especiales.
- Gestionar los casos de error previsibles.
- Revisar la sintaxis y probar la ejecución.

## 6. Organización recomendada

Organiza el código en funciones con responsabilidades diferenciadas. Por ejemplo:

- `saludar`: solicita el nombre y muestra un saludo.
- `operaciones`: solicita los números y muestra el menú de operaciones.
- `comprobar_ruta`: solicita una ruta y comprueba su tipo.
- `mostrar_argumentos`: presenta los argumentos recibidos.
- `mostrar_directorio`: muestra el directorio actual.
- `mostrar_menu`: presenta las opciones disponibles.

Puedes definir funciones adicionales si ayudan a mantener el código organizado.

## 7. Plan de desarrollo

### Fase 1. Crear la estructura

Crea el archivo `gestor.sh`, añade la línea inicial y comprueba que se puede ejecutar.

### Fase 2. Implementar las funciones

Desarrolla y prueba cada función por separado antes de integrarla en el menú.

### Fase 3. Crear el menú

Utiliza un bucle para repetir el menú y `case` para ejecutar la función correspondiente a cada opción.

### Fase 4. Gestionar los errores

Comprueba las entradas y evita situaciones previsibles, como dividir entre cero o elegir una opción no contemplada.

### Fase 5. Depurar

Utiliza las herramientas de depuración de Bash:

```bash
bash -n gestor.sh
bash -v gestor.sh
bash -x gestor.sh
```

Cada opción cumple una finalidad distinta: comprobar la sintaxis, mostrar las líneas leídas y seguir las instrucciones durante la ejecución.

### Fase 6. Probar el programa

Realiza las pruebas de la siguiente sección y corrige los errores que encuentres.

## 8. Pruebas obligatorias

| Prueba | Resultado esperado |
|---|---|
| Elegir la opción de saludo | Solicita el nombre y muestra el saludo. |
| Sumar dos enteros | Muestra la suma correcta. |
| Dividir entre un número distinto de cero | Muestra la división entera. |
| Dividir entre cero | Muestra un mensaje de error. |
| Comprobar una ruta existente que sea directorio | La identifica como directorio. |
| Comprobar un archivo regular | Lo identifica como archivo regular. |
| Comprobar una ruta inexistente | Informa de que no existe. |
| Ejecutar con varios argumentos | Muestra el número y el contenido de los argumentos. |
| Introducir una opción no válida | Muestra un mensaje apropiado. |
| Seleccionar salir | El programa termina. |

## 9. Entrega

El proyecto debe incluir:

1. El archivo `gestor.sh`.
2. Una explicación breve de las funciones.
3. Capturas o ejemplos de las pruebas realizadas.
4. Una descripción de los errores encontrados y cómo se corrigieron.

## 10. Criterios de evaluación

- [ ] El script tiene una estructura correcta.
- [ ] El menú funciona y se repite.
- [ ] Las funciones están correctamente definidas e invocadas.
- [ ] Las operaciones aritméticas producen resultados correctos.
- [ ] Se comprueba la división entre cero.
- [ ] Las rutas se comprueban correctamente.
- [ ] Los argumentos se muestran de forma adecuada.
- [ ] Las opciones no válidas se gestionan.
- [ ] La sintaxis se ha comprobado.
- [ ] Se han realizado las pruebas obligatorias.

## 11. Ampliaciones opcionales

Una vez completados los requisitos obligatorios, puedes ampliar el proyecto:

- Añadir un menú mediante `select`.
- Crear una interfaz de texto con `dialog`, si está instalado.
- Añadir nuevas operaciones.
- Mejorar los mensajes de error.
- Utilizar códigos de salida para indicar si se ha producido un error.

Estas ampliaciones son opcionales y no deben impedir que funcione la versión básica.

## 12. Resultado esperado

Al terminar, tendrás un programa de Bash organizado mediante funciones y capaz de ejecutar distintas tareas desde un menú. El proyecto permitirá demostrar el uso combinado de los conceptos estudiados en la unidad.
