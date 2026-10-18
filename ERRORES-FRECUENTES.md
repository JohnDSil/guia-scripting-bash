
# Errores frecuentes al practicar Bash

## 1. El script no muestra el texto esperado

**Revisa:**
- Que la instrucción `echo` esté escrita correctamente.
- Que el mensaje esté entre comillas cuando corresponda.
- Que hayas guardado los cambios en el archivo correcto.

**Prueba:**

```bash
echo "Hola, mundo"
```

## 2. Una variable no muestra el valor esperado

**Revisa:**
- Que hayas asignado un valor a la variable.
- Que el nombre sea el mismo al asignarla y consultarla.
- Que no hayas añadido espacios alrededor de `=` en una asignación sencilla.

**Ejemplo:**

```bash
nombre="Ana"
echo "$nombre"
```

## 3. Las comillas cambian el resultado

Las comillas simples muestran el texto de forma literal. Las comillas dobles permiten la expansión de variables.

**Prueba:**

```bash
nombre="Ana"
echo "$nombre"
echo '$nombre'
```

Compara las dos salidas.

## 4. Una operación no produce el resultado esperado

**Revisa:**
- Que los valores numéricos sean los esperados.
- Que los operadores estén escritos correctamente.
- Que en el ejemplo con `expr` haya espacios entre los elementos de la operación.
- Que `bc` esté disponible si utilizas ese ejemplo.

**Prueba:**

```bash
a=5
b=3
echo $((a+b))
expr 5 + 3
```

## 5. Un condicional no entra en la rama esperada

**Revisa:**
- La condición.
- Los valores comparados.
- La estructura `if`, `then`, `else` y `fi`.
- Que la entrada sea adecuada para la comparación utilizada.

## 6. Un bucle no termina

**Revisa:**
- La condición de repetición.
- El valor inicial del contador.
- Que el contador cambie cuando sea necesario.
- La condición de salida.

Un `while` o un `until` puede repetir indefinidamente si la condición nunca cambia de forma que permita terminar.

## 7. Los parámetros están vacíos

**Revisa:**
- Cómo has ejecutado el script.
- Si has proporcionado argumentos.
- Qué parámetro estás consultando.

**Ejemplo:**

```bash
echo "Primer parámetro: $1"
echo "Total de parámetros: $#"
```

## 8. No sabes por qué falla el script

El material presenta estas opciones de comprobación:

```bash
bash -n archivo.sh
bash -v archivo.sh
bash -x archivo.sh
```

- `bash -n`: comprobar la sintaxis.
- `bash -v`: observar el contenido leído durante la ejecución.
- `bash -x`: seguir la ejecución con información de depuración.

## 9. Un ejemplo de dialog no funciona

Comprueba si `dialog` está disponible en el entorno donde ejecutas el script. Guardar el ejemplo en GitHub no instala la herramienta.

## 10. Método de diagnóstico

1. Relee el mensaje de error.
2. Comprueba el nombre del archivo.
3. Revisa las comillas, variables y estructura del código.
4. Utiliza las opciones de depuración estudiadas.
5. Corrige una cosa cada vez.
6. Ejecuta de nuevo el ejemplo y compara el resultado.
