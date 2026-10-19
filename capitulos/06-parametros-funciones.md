# Capítulo 6. Parámetros y funciones

## Objetivos

- Recibir y utilizar parámetros al ejecutar un script.
- Comprender las variables especiales relacionadas con los argumentos.
- Crear menús interactivos mediante `select`.
- Organizar instrucciones utilizando funciones.
- Comprender los códigos de retorno de los comandos y los scripts.

## 1. Parámetros de un script

Un script Bash puede recibir argumentos cuando se ejecuta. Estos argumentos se identifican mediante parámetros posicionales:

| Parámetro | Significado |
|---|---|
| `$0` | Nombre o ruta utilizada para ejecutar el script. |
| `$1` | Primer argumento. |
| `$2` | Segundo argumento. |
| `$3` | Tercer argumento. |
| `${10}` | Décimo argumento. |
| `$#` | Número de argumentos recibidos. |
| `$@` | Todos los argumentos, tratados individualmente cuando se utiliza correctamente entre comillas. |
| `$*` | Todos los argumentos; entre comillas dobles se expande como una sola cadena separada por el primer carácter de `IFS`. |

### Ejemplo: recibir argumentos

```bash
#!/bin/bash

echo "Script ejecutado: $0"
echo "Primer parámetro: $1"
echo "Segundo parámetro: $2"
echo "Número de parámetros: $#"
```

Si el archivo se llama `argumentos.sh`, podemos ejecutarlo así:

```bash
bash argumentos.sh Ana 25
```

Una salida posible sería:

```text
Script ejecutado: argumentos.sh
Primer parámetro: Ana
Segundo parámetro: 25
Número de parámetros: 2
```

### Utilizar todos los argumentos

Para recorrer los argumentos individualmente, es recomendable utilizar `"$@"`:

```bash
#!/bin/bash

for argumento in "$@"
do
    echo "Argumento: $argumento"
done
```

Si ejecutamos:

```bash
bash argumentos.sh Ana "Juan Pérez" 25
```

El script mostrará tres argumentos, manteniendo `"Juan Pérez"` como un único argumento.

**Importante:** `"$@"` conserva la separación original de los argumentos. En cambio, `"$*"` los reúne en una sola cadena.

## 2. Menús con `select`

La instrucción `select` permite crear menús interactivos a partir de una lista de opciones. Bash muestra las opciones numeradas y solicita al usuario que introduzca una selección.

La variable `PS3` establece el mensaje que aparece al solicitar la opción.

### Ejemplo de menú

```bash
#!/bin/bash

PS3="Selecciona una opción: "

select opcion in "Saludar" "Mostrar fecha" "Salir"
do
    case "$opcion" in
        "Saludar")
            echo "Hola"
            ;;
        "Mostrar fecha")
            date
            ;;
        "Salir")
            echo "Hasta luego"
            break
            ;;
        *)
            echo "Opción no válida"
            ;;
    esac
done
```

En este ejemplo:

- `select` muestra las opciones numeradas.
- `PS3` define el texto de solicitud.
- `opcion` contiene el texto de la opción seleccionada.
- `case` permite ejecutar instrucciones diferentes según la selección.
- `break` termina el bucle y, por tanto, sale del menú.

Si el usuario introduce un número que no corresponde a ninguna opción, la variable `opcion` queda vacía y se ejecuta el caso `*`.

**Nota:** `select` continúa mostrando el menú hasta que se ejecuta `break`, se produce una salida del bucle o termina el script.

## 3. Funciones

Una función agrupa varias instrucciones bajo un nombre. Esto permite reutilizar código y organizar mejor los scripts.

### Definición y llamada

```bash
#!/bin/bash

saludar() {
    echo "Hola"
}

saludar
```

La función se define con su nombre seguido de paréntesis y un bloque de instrucciones entre llaves. Para ejecutarla, se escribe su nombre.

### Funciones con parámetros

Las funciones también pueden recibir argumentos. Dentro de la función, `$1`, `$2` y los demás parámetros posicionales hacen referencia a los argumentos recibidos por esa llamada.

```bash
#!/bin/bash

saludar() {
    echo "Hola, $1"
}

saludar "Ana"
saludar "Luis"
```

Salida:

```text
Hola, Ana
Hola, Luis
```

Los argumentos de una función se manejan de forma independiente de los argumentos posicionales del script mientras se ejecuta la función. Al terminar, se recupera el contexto de parámetros del script.

### Funciones que devuelven un estado

La instrucción `return` permite terminar una función y devolver un código de estado. Por convención, `0` indica éxito y un valor distinto de cero indica algún tipo de error o situación especial.

```bash
#!/bin/bash

comprobar_numero() {
    if [ "$1" -gt 0 ]; then
        return 0
    else
        return 1
    fi
}

comprobar_numero 5

if [ "$?" -eq 0 ]; then
    echo "El número es positivo"
else
    echo "El número no es positivo"
fi
```

En este ejemplo, la función devuelve `0` si el número es mayor que cero y `1` en caso contrario.

**Importante:** `return` devuelve un estado, no un texto o un número para utilizar directamente como resultado de una operación. Para comunicar texto, la función puede utilizar `echo` y su salida puede capturarse con `$(...)`.

## 4. Códigos de retorno

Los comandos y scripts finalizan con un código de estado que permite conocer si la operación se ha realizado correctamente.

- `0`: normalmente indica que la operación se ha completado correctamente.
- Un valor distinto de `0`: normalmente indica un error o alguna condición que no se ha cumplido.

### Consultar el código con `$?`

La variable especial `$?` contiene el código de salida del último comando ejecutado.

```bash
#!/bin/bash

true
echo "$?"
```

Salida:

```text
0
```

El comando `true` finaliza correctamente, por lo que devuelve `0`.

En cambio:

```bash
#!/bin/bash

false
echo "$?"
```

Salida:

```text
1
```

El comando `false` devuelve `1`.

**Importante:** hay que consultar `$?` inmediatamente después del comando que queremos comprobar. Si ejecutamos otro comando antes, `$?` reflejará el resultado de ese otro comando.

### Diferencias entre `return` y `exit`

| Instrucción | Función |
|---|---|
| `return n` | Termina una función y devuelve el código de estado `n`. |
| `exit n` | Termina el script con el código de salida `n`. |
| `$?` | Permite consultar el código de salida del último comando ejecutado. |

Ejemplo de finalización de un script:

```bash
#!/bin/bash

echo "El script ha terminado"
exit 0
```

Para indicar un error:

```bash
#!/bin/bash

echo "Se ha producido un error" >&2
exit 1
```

Después de ejecutar el script, el código de salida puede consultarse desde la terminal:

```bash
bash mi_script.sh
echo $?
```

Si el script termina mediante `exit 0`, el resultado será `0`. Si termina mediante `exit 1`, será `1`.

## Ejercicios

1. Crea un script que muestre el primer parámetro recibido.
2. Muestra el número de argumentos usando `$#`.
3. Modifica el script para mostrar también `$0`, `$1` y `$2`.
4. Ejecuta el script con dos argumentos y comprueba el resultado.
5. Crea un script que recorra todos los argumentos utilizando `"$@"`.
6. Crea una función llamada `saludar` que muestre un mensaje.
7. Modifica la función para que reciba un nombre como parámetro.
8. Llama dos veces a la función con nombres diferentes.
9. Construye un menú sencillo con `select` y una opción para salir.
10. Consulta `$?` después de ejecutar `true` y después de ejecutar `false`.
11. Crea un script que termine mediante `exit 0`.
12. Crea otro script que termine mediante `exit 1` y comprueba su código de salida.

## Comprobación

- [ ] He utilizado `$0`, `$1` y `$#`.
- [ ] He comprendido la diferencia entre `$@` y `$*`.
- [ ] He recorrido argumentos mediante `"$@"`.
- [ ] He creado una función y la he llamado.
- [ ] He pasado argumentos a una función.
- [ ] He construido un menú con `select` y `PS3`.
- [ ] He utilizado `break` para salir de un menú.
- [ ] He consultado un código de retorno mediante `$?`.
- [ ] He comprendido la diferencia entre `return` y `exit`.
