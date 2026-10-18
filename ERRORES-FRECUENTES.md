# Errores frecuentes en Bash

Este documento recoge errores habituales al crear y ejecutar scripts de Bash. Los ejemplos se relacionan con los contenidos de la unidad *Lenguajes de Scripting en Sistemas Operativos*.

## 1. Olvidar la línea inicial del script

La primera línea identifica el intérprete que se utilizará al ejecutar directamente el archivo.

**Incorrecto o incompleto:**

```bash
echo "Hola, mundo"
```

**Forma recomendada en el temario:**

```bash
#!/bin/bash
echo "Hola, mundo"
```

La línea `#!/bin/bash` indica que el script debe ejecutarse con Bash cuando se utiliza la ejecución directa y el sistema reconoce esa ruta.

## 2. Olvidar el permiso de ejecución

Al ejecutar un archivo directamente con `./`, debe tener permiso de ejecución.

```bash
chmod +x hola.sh
./hola.sh
```

Otra posibilidad es ejecutarlo indicando el intérprete:

```bash
bash hola.sh
```

## 3. Confundir `echo` con `echo -n`

`echo` normalmente termina su salida con un salto de línea. La opción `-n` evita ese salto final.

```bash
#!/bin/bash
echo -n "Introduce tu nombre: "
read nombre
echo "Hola, $nombre"
```

Si se necesita que la entrada se escriba a continuación del mensaje, `-n` resulta útil.

## 4. Confundir las comillas simples y dobles

Las comillas simples conservan literalmente el contenido. Las comillas dobles permiten la expansión de variables.

```bash
#!/bin/bash
nombre="Ana"

echo 'Hola, $nombre'
echo "Hola, $nombre"
```

La primera línea muestra literalmente `$nombre`; la segunda muestra el valor de la variable.

## 5. Escribir mal una asignación

En una asignación de variable de Bash no deben ponerse espacios alrededor de `=`.

**Incorrecto:**

```bash
nombre = "Ana"
```

**Correcto:**

```bash
nombre="Ana"
```

## 6. Olvidar los espacios en una condición

Cuando se utiliza la forma `[ ... ]`, deben respetarse los espacios que delimitan la expresión.

**Incorrecto:**

```bash
if [ "$numero"-gt 0 ]; then
    echo "Positivo"
fi
```

**Correcto:**

```bash
if [ "$numero" -gt 0 ]; then
    echo "Positivo"
fi
```

## 7. Olvidar cerrar una estructura condicional

Un bloque `if` debe terminar con `fi`.

```bash
#!/bin/bash

if [ -f "informe.txt" ]; then
    echo "El archivo existe."
else
    echo "El archivo no existe."
fi
```

En una estructura `case`, el bloque se cierra con `esac`.

## 8. No contemplar una opción desconocida en `case`

El patrón `*` permite tratar las opciones que no coinciden con los casos anteriores.

```bash
#!/bin/bash
read -p "Elige una opción: " opcion

case "$opcion" in
    1)
        echo "Opción 1"
        ;;
    2)
        echo "Opción 2"
        ;;
    *)
        echo "Opción no válida"
        ;;
esac
```

## 9. Crear un bucle que no termina

Un bucle como `while` debe tener una condición que pueda llegar a ser falsa.

**Ejemplo problemático:**

```bash
i=1
while [ "$i" -le 5 ]; do
    echo "$i"
done
```

La variable `i` nunca cambia, por lo que la condición continúa siendo verdadera.

**Corregido:**

```bash
i=1
while [ "$i" -le 5 ]; do
    echo "$i"
    i=$((i + 1))
done
```

## 10. Confundir `while` y `until`

- `while` repite el bloque mientras la condición sea verdadera.
- `until` repite el bloque mientras la condición sea falsa.

```bash
#!/bin/bash
i=1

until [ "$i" -gt 5 ]; do
    echo "$i"
    i=$((i + 1))
done
```

En este ejemplo, el bucle termina cuando `i` es mayor que 5.

## 11. Dividir entre cero

Antes de efectuar una división, comprueba que el divisor no sea cero.

```bash
#!/bin/bash
read -p "Dividendo: " a
read -p "Divisor: " b

if [ "$b" -ne 0 ]; then
    echo "Resultado: $((a / b))"
else
    echo "Error: el divisor no puede ser cero."
fi
```

Este ejemplo presupone que ambas entradas son números enteros válidos.

## 12. Confundir la aritmética entera con la decimal

La expansión aritmética de Bash `$((...))` se utiliza para operaciones con enteros.

```bash
resultado=$((5 + 3))
echo "$resultado"
```

Para operaciones con decimales, el material presenta `bc`, que debe estar disponible en el sistema.

```bash
echo "5.5 + 2.3" | bc
```

## 13. Perder el valor de `$?`

`$?` contiene el código de salida del último comando ejecutado. Si ejecutas otro comando antes de consultarlo, el valor puede cambiar.

**Correcto:**

```bash
ls archivo.txt
estado=$?
echo "Código de salida: $estado"
```

Guarda el resultado inmediatamente después del comando que quieras comprobar.

## 14. Confundir `$@`, `$*` y `$#`

Estas variables especiales tienen propósitos diferentes:

- `$#`: número de argumentos recibidos.
- `$@`: argumentos recibidos.
- `$*`: todos los argumentos considerados conjuntamente, con un comportamiento que depende de cómo se cite la expansión.

Para recorrer los argumentos conservando los que contienen espacios, utiliza:

```bash
for argumento in "$@"; do
    echo "$argumento"
done
```

## 15. Confundir `return` y `exit`

`return` se utiliza para terminar una función y establecer su estado de retorno. `exit` finaliza el script o el shell que lo está ejecutando.

```bash
#!/bin/bash

mi_funcion() {
    return 0
}

mi_funcion
echo "Código de la función: $?"
```

Para finalizar un script con un código específico:

```bash
exit 1
```

No confundas el estado de una función con un resultado numérico que quieras imprimir.

## 16. Olvidar las comillas al usar rutas

Si una ruta contiene espacios, es importante protegerla frente a la separación de palabras.

**Recomendado:**

```bash
ruta="/home/ana/Mis documentos/informe.txt"

if [ -f "$ruta" ]; then
    echo "El archivo existe."
fi
```

Las comillas alrededor de `"$ruta"` permiten utilizar la ruta completa como un único argumento.

## 17. Confundir las opciones de depuración

Bash dispone de opciones distintas para diferentes tareas:

| Opción | Función |
|---|---|
| `bash -n script.sh` | Comprueba la sintaxis sin ejecutar el script. |
| `bash -v script.sh` | Muestra las líneas del script conforme Bash las lee. |
| `bash -x script.sh` | Muestra las instrucciones y expansiones durante la ejecución. |

No son opciones equivalentes: elige la que corresponda al tipo de problema que quieras investigar.

## 18. No comprobar la sintaxis antes de ejecutar

Si sospechas que hay un error sintáctico, comprueba el archivo con:

```bash
bash -n script.sh
```

Esta comprobación ayuda a detectar errores sintácticos, aunque no garantiza que el script vaya a funcionar correctamente en todos los casos.

## 19. Olvidar las comillas al usar `basename`

Si la ruta puede contener espacios, utiliza comillas.

```bash
ruta="/home/ana/Mis documentos/informe.txt"
archivo=$(basename "$ruta")

echo "$archivo"
```

## 20. Dar permisos excesivos

Evita conceder permisos más amplios de los necesarios.

Para poder ejecutar un script como usuario propietario, normalmente basta con:

```bash
chmod u+x script.sh
```

No utilices permisos como `777` de manera automática: permiten a todos los usuarios leer, escribir y ejecutar el archivo.

## 21. Ejecutar un script sin revisar lo que hace

Antes de ejecutar un script, especialmente si trabaja con archivos o directorios:

1. Lee su contenido.
2. Comprueba las rutas utilizadas.
3. Revisa los comandos que modifican o eliminan archivos.
4. Evita ejecutarlo con privilegios elevados si no son necesarios.
5. Prueba primero con datos que puedas recuperar.

## Lista de comprobación

Antes de dar por terminado un script, verifica:

- [ ] Incluye `#!/bin/bash`.
- [ ] Las asignaciones están escritas correctamente.
- [ ] Las variables están entre comillas cuando corresponde.
- [ ] Las estructuras `if`, `case` y los bucles están cerrados.
- [ ] Los bucles tienen una condición de finalización.
- [ ] Las operaciones aritméticas contemplan los casos problemáticos.
- [ ] Los argumentos se interpretan correctamente.
- [ ] Los códigos de salida se comprueban en el momento adecuado.
- [ ] La sintaxis se ha revisado.
- [ ] El script se ha probado antes de utilizarlo con datos importantes.
