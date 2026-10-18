# Guía de scripting en Bash desde cero

Esta guía está basada en el documento
"Ud1.- Lenguajes de Scripting en Sistemas Operativos".

## Índice

1. Introducción a los scripts
2. Creación, ejecución y depuración
3. Salida estándar
4. Entrada estándar
5. Variables del Shell
6. Condicionales: if
7. Condicionales: case
8. Operaciones algebraicas
9. Bucles: for, while y until
10. Paso de parámetros
11. Select
12. Funciones
13. Salir y retornar valores
14. Dialog

---

## 1. Introducción a los scripts

Un script Bash es un fichero de texto que contiene comandos
que se ejecutan secuencialmente mediante un intérprete.

Su utilidad principal es automatizar tareas.

Los scripts deben tener una lógica clara, realizar la tarea
para la que se han creado, evitar acciones innecesarias,
incluir comentarios y ser fáciles de comprender y mantener.

Se recomienda seguir el principio KISS:
"Keep It Short and Simple".

### Estructura básica

```bash
#!/bin/bash
# Descripción del script

echo "Hola, mundo"
