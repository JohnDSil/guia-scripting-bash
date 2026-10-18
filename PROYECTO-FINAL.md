
# Proyecto final: menú de práctica en Bash

## Objetivo

Crear un script que permita seleccionar distintas acciones desde un menú y practicar variables, entrada, condicionales, bucles, funciones y códigos de retorno.

## Requisitos

El programa debe:

- Mostrar un menú.
- Permitir que el usuario elija una opción.
- Mostrar un saludo.
- Solicitar y mostrar un nombre.
- Mostrar un ejemplo de operación aritmética.
- Permitir salir del menú.

## Paso 1. Crear el archivo

Crea un archivo llamado `proyecto-final.sh`.

## Paso 2. Copiar el código inicial

```bash
#!/bin/bash

saludar() {
    echo "Hola, estudiante"
}

pedir_nombre() {
    read -p "Introduce tu nombre: " nombre
    echo "Hola, $nombre"
}

mostrar_operacion() {
    a=10
    b=5
    resultado=$((a+b))
    echo "La suma de $a y $b es $resultado"
}

PS3="Selecciona una opción: "

select opcion in "Saludar" "Introducir nombre" "Mostrar suma" "Salir"
do
    case "$opcion" in
        "Saludar")
            saludar
            ;;
        "Introducir nombre")
            pedir_nombre
            ;;
        "Mostrar suma")
            mostrar_operacion
            ;;
        "Salir")
            echo "Fin del programa"
            break
            ;;
        *)
            echo "Opción no reconocida"
            ;;
    esac
done

exit 0
```

## Paso 3. Probar el programa

Ejecuta el script en un entorno compatible con Bash y prueba todas las opciones.

## Paso 4. Comprender el código

Responde a estas preguntas:

1. ¿Para qué sirve cada función?
2. ¿Qué hace `select`?
3. ¿Qué función tiene `case`?
4. ¿Por qué aparece `break` en la opción de salida?
5. ¿Qué hace `exit 0`?
6. ¿Cómo modificarías los números de la operación?
7. ¿Qué ocurre si seleccionas una opción no reconocida?

## Paso 5. Ampliaciones opcionales

- Añade otra opción al menú.
- Crea una función que muestre la fecha con `date`.
- Añade una operación diferente.
- Modifica los mensajes que muestra el programa.
- Comprueba la sintaxis con `bash -n proyecto-final.sh`.
- Revisa la ejecución con `bash -x proyecto-final.sh`.

## Lista de comprobación

- [ ] He creado el archivo.
- [ ] El menú aparece correctamente.
- [ ] He probado cada opción.
- [ ] He entendido las funciones.
- [ ] He comprobado la sintaxis.
- [ ] He respondido a las preguntas.

## Reflexión final

¿Qué conceptos he utilizado?

¿Qué parte me ha costado más?

¿Qué cambiaría del programa?

¿Qué necesito repasar?
