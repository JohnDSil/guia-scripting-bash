# Bash Scripting en Sistemas Operativos

Repositorio de apuntes, ejercicios y prácticas de **lenguajes de scripting en sistemas operativos**, centrado en Bash.

El objetivo es aprender a crear, ejecutar, depurar y organizar scripts, desde las instrucciones básicas hasta el uso de funciones, menús y cuadros de diálogo.

## 📚 Índice de contenidos

### Capítulos

1. [Introducción a Bash](Introduccion.md)
2. [Entrada, salida y variables](02-entrada-salida-variables.md)
3. [Operaciones y expresiones](03-operaciones.md)
4. [Condicionales](04-condicionales.md)
5. [Bucles](05-bucles.md)
6. [Parámetros y funciones](06-parametros-funcioines.md)
7. [Depuración y dialog](07-depuracion-dialog.md)

### Ejercicios y prácticas

- [Ejercicios por temas](EJERCICIOS.md) — ejercicios para practicar los contenidos de los capítulos.
- [Prácticas](PRACTICA.md) — actividades prácticas para aplicar lo aprendido.
- [Soluciones de los ejercicios](SOLUCIONES.md) — ejemplos de resolución de los ejercicios propuestos.
- [Errores frecuentes](ERRORES-FRECUENTES.md) — errores habituales y cómo identificarlos o corregirlos.

### Repaso y evaluación

- [Ruta de aprendizaje](RUTA-DE-APRENDIZAJE.md) — guía para estudiar los contenidos progresivamente.
- [Proyecto final](PROYECTO-FINAL.md) — proyecto integrador para aplicar los conocimientos adquiridos.
- [Examen de práctica](EXAMEN.md) — preguntas teóricas y ejercicios prácticos de repaso.
- [Soluciones del examen](SOLUCIONES-EXAMEN.md) — respuestas y posibles soluciones del examen de práctica.

---

## 🚀 Cómo utilizar el repositorio

Se recomienda seguir los capítulos en orden y realizar los ejercicios antes de consultar las soluciones.

1. Estudia el capítulo correspondiente.
2. Prueba los ejemplos en una terminal Linux o en un entorno compatible con Bash.
3. Realiza los ejercicios del tema.
4. Consulta las soluciones cuando hayas intentado resolverlos.
5. Repasa los errores frecuentes.
6. Completa las prácticas y el proyecto final.

## 💻 Cómo ejecutar un script

Crea un archivo con extensión `.sh`, por ejemplo `hola.sh`:

```bash
#!/bin/bash

echo "Hola, mundo"
```

Puedes ejecutarlo directamente con Bash:

```bash
bash hola.sh
```

O conceder permiso de ejecución y ejecutarlo como programa:

```bash
chmod u+x hola.sh
./hola.sh
```

Para comprobar la sintaxis sin ejecutar normalmente las instrucciones:

```bash
bash -n hola.sh
```

Para observar la ejecución con información de depuración:

```bash
bash -x hola.sh
```

## 🧰 Contenidos del repositorio

A lo largo de los capítulos se trabajan los siguientes conceptos:

- Creación y ejecución de scripts Bash.
- Comentarios, estructura y buenas prácticas básicas.
- Entrada y salida mediante `read` y `echo`.
- Variables del shell y variables de entorno.
- Parámetros posicionales y variables especiales.
- Operaciones aritméticas y expresiones.
- Condicionales `if` y `case`.
- Bucles `for`, `while` y `until`.
- Menús mediante `select`.
- Funciones y códigos de retorno.
- Depuración con `bash -n`, `bash -v` y `bash -x`.
- Cuadros de diálogo mediante `dialog`.

## 📁 Estructura del repositorio

```text
.
├── README.md
├── CAPITULO-1.md
├── CAPITULO-2.md
├── CAPITULO-3.md
├── CAPITULO-4.md
├── CAPITULO-5.md
├── CAPITULO-6.md
├── CAPITULO-7.md
├── EJERCICIOS.md
├── PRACTICA.md
├── SOLUCIONES.md
├── RUTA-DE-APRENDIZAJE.md
├── ERRORES-FRECUENTES.md
├── PROYECTO-FINAL.md
├── EXAMEN.md
└── SOLUCIONES-EXAMEN.md
```

*Nota: esta estructura representa los archivos previstos para el repositorio. Comprueba que los nombres y las mayúsculas coincidan con los archivos reales de GitHub para que todos los enlaces funcionen.*

## ⚠️ Recomendaciones

- Ejecuta los scripts únicamente en entornos donde tengas permiso para hacerlo.
- Revisa los comandos antes de ejecutarlos, especialmente si modifican archivos o permisos.
- No utilices permisos excesivamente amplios, como `chmod 777`, sin una necesidad justificada.
- Recuerda que `bash -n` comprueba la sintaxis, pero no garantiza que el script funcione correctamente.

## 🎯 Objetivo final

Al completar el material, deberías poder crear scripts Bash que reciban datos, procesen argumentos, realicen operaciones, tomen decisiones, repitan instrucciones y organicen el código mediante funciones, además de depurar errores y crear menús sencillos.

---
