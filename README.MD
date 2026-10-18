# Bash scripting desde cero

Repositorio de aprendizaje sobre **lenguajes de scripting en sistemas operativos**, basado en el documento *Ud1. Lenguajes de Scripting en Sistemas Operativos* del ciclo formativo de Administración de Sistemas Informáticos en Red (ASIR).

El objetivo es aprender progresivamente a crear, ejecutar y depurar scripts en Bash, con explicaciones, ejemplos prácticos y ejercicios.

## 📚 Contenidos

El repositorio sigue los principales apartados del temario:

1. Introducción a los lenguajes de scripting.
2. Creación, ejecución y depuración de scripts.
3. Salida estándar: `echo`.
4. Entrada estándar: `read`.
5. Variables del shell y variables de entorno.
6. Estructuras condicionales: `if` y `case`.
7. Operaciones aritméticas.
8. Bucles: `for`, `while` y `until`.
9. Parámetros y argumentos de los scripts.
10. Estructura `select`.
11. Funciones.
12. Códigos de salida: `exit`, `return` y `$?`.
13. Depuración de scripts.
14. Interfaces de texto con `dialog`.

## 📁 Estructura del repositorio

- `GUIA.md`: guía general del temario.
- `RUTA-DE-APRENDIZAJE.md`: orden recomendado para estudiar.
- `ERRORES-FRECUENTES.md`: errores habituales al escribir scripts.
- `EJERCICIOS.md`: ejercicios de aprendizaje.
- `PRACTICA.md`: actividades prácticas adicionales.
- `SOLUCIONES.md`: soluciones de los ejercicios.
- `EXAMEN.md`: prueba de repaso.
- `SOLUCIONES-EXAMEN.md`: respuestas del examen.
- `PROYECTO-FINAL.md`: proyecto práctico integrador.
- `capitulos/`: explicaciones organizadas por temas.
- `ejemplos/`: scripts de ejemplo.
- `recursos/`: información complementaria sobre el material utilizado.

## 🚀 Cómo empezar

### 1. Leer la guía

Comienza por [`GUIA.md`](GUIA.md) para conocer los conceptos básicos y las instrucciones de Bash.

### 2. Estudiar los capítulos

Continúa con los archivos de la carpeta `capitulos/`, respetando el orden recomendado en [`RUTA-DE-APRENDIZAJE.md`](RUTA-DE-APRENDIZAJE.md).

### 3. Revisar los ejemplos

Consulta los archivos de `ejemplos/` y analiza cómo se aplican los conceptos en scripts concretos.

### 4. Practicar

Realiza los ejercicios de `EJERCICIOS.md` y `PRACTICA.md`. Intenta resolverlos antes de consultar `SOLUCIONES.md`.

### 5. Repasar lo aprendido

Cuando hayas estudiado el temario, realiza el examen y desarrolla el proyecto final.

## 💻 Ejecutar un script

Los scripts de ejemplo están escritos para Bash. En un sistema Linux con Bash instalado, puedes ejecutarlos desde un terminal.

Por ejemplo, si el archivo se llama `hola-mundo.sh`:

```bash
chmod +x hola-mundo.sh
./hola-mundo.sh
```

También puedes ejecutar un script indicando el intérprete:

```bash
bash hola-mundo.sh
```

El permiso de ejecución es necesario para ejecutar directamente el archivo con `./`. Si lo ejecutas mediante `bash nombre_script.sh`, Bash lee el archivo como argumento.

## 🧰 Contenidos que aprenderás

Durante el recorrido practicarás:

- Crear scripts con la línea inicial `#!/bin/bash`.
- Mostrar información mediante `echo`, incluida la opción `-n`.
- Leer datos introducidos por el usuario con `read`.
- Declarar variables y utilizar variables de entorno.
- Trabajar con comillas simples y dobles.
- Utilizar sustitución de comandos mediante `$(...)`.
- Realizar operaciones aritméticas.
- Tomar decisiones mediante `if` y `case`.
- Repetir instrucciones con bucles.
- Recibir argumentos desde la línea de comandos.
- Organizar código mediante funciones.
- Interpretar los códigos de salida.
- Depurar scripts.
- Crear menús e interfaces de texto con `dialog`.

## 📖 Fuente del material

El contenido técnico se basa en el documento de la unidad didáctica *Lenguajes de Scripting en Sistemas Operativos* proporcionado para este proyecto.

Los archivos de este repositorio son material de estudio organizado con fines educativos; no sustituyen al documento original ni constituyen una publicación oficial del centro educativo.

## ⚠️ Recomendaciones

- Lee los scripts antes de ejecutarlos.
- Practica en un entorno de pruebas.
- Comprueba las rutas y los nombres de archivo antes de realizar operaciones sobre ellos.
- No ejecutes scripts con privilegios de administrador sin comprender sus instrucciones.
- No concedas permisos de escritura o ejecución más amplios de los necesarios.

## 🎯 Objetivo final

Al terminar el recorrido, deberías ser capaz de comprender y escribir scripts básicos de Bash, utilizar variables, condiciones, bucles y funciones, recibir argumentos, gestionar códigos de salida y aplicar técnicas de depuración de acuerdo con los contenidos estudiados.
