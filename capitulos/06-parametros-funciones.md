
# Capítulo 6. Parámetros y funciones

## Objetivos

- Recibir parámetros al ejecutar un script.
- Crear menús con `select`.
- Organizar instrucciones mediante funciones.
- Comprender los códigos de retorno.

## 1. Parámetros de un script

Un script puede recibir argumentos al ejecutarse:

```bash
#!/bin/bash
echo "Primer parámetro: $1"
echo "Número de parámetros: $#"
```

Por ejemplo, si el archivo se llama `argumentos.sh`, puedes ejecutarlo así:

```bash
bash argumentos.sh Ana
```

El material también presenta `$*` y `$@` para referirse al conjunto de parámetros.

## 2. Menús con select

El material presenta `select` para construir menús:

```bash
#!/bin/bash
PS3="Selecciona una opción: "

select opcion in "Saludar" "Salir"
do
    case "$opcion" in
        "Saludar")
            echo "Hola"
            ;;
        "Salir")
            break
            ;;
        *)
            echo "Opción no reconocida"
            ;;
    esac
done
```

La variable `PS3` permite establecer el mensaje de selección.

## 3. Funciones

Una función agrupa instrucciones que se pueden invocar desde distintas partes del script.

```bash
#!/bin/bash

saludar() {
    echo "Hola"
}

saludar
```

## 4. Códigos de retorno

El material presenta `return`, `exit` y `$?`:

- `return` permite devolver un estado desde una función.
- `exit` termina el script con un estado de salida.
- `$?` permite consultar el código de retorno del último comando.

Ejemplo:

```bash
#!/bin/bash
true
echo "$?"
```

## Ejercicios

1. Crea un script que muestre el primer parámetro recibido.
2. Muestra el número de parámetros usando `$#`.
3. Prueba a ejecutar el script con dos argumentos.
4. Crea una función llamada `saludar`.
5. Crea una función que muestre un mensaje y llámala dos veces.
6. Construye un menú sencillo con `select`.
7. Consulta `$?` después de ejecutar un comando.
8. Crea un script que termine mediante `exit`.

## Comprobación

- [ ] He utilizado `$1`.
- [ ] He utilizado `$#`.
- [ ] He creado una función.
- [ ] He probado un menú con `select`.
- [ ] He consultado un código de retorno.
