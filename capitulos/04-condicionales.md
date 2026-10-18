
# Capítulo 4. Condicionales

## Objetivos

- Ejecutar instrucciones según una condición.
- Utilizar `if`, `else` y `case`.
- Reconocer las pruebas de archivos incluidas en el material.

## 1. Condicional if

Ejemplo:

```bash
#!/bin/bash
read -p "Introduce un número: " numero

if [ "$numero" -gt 0 ]; then
    echo "Es positivo"
else
    echo "No es positivo"
fi
```

La estructura `if` permite elegir qué instrucciones ejecutar según el resultado de una condición.

## 2. Pruebas sobre archivos

El material incluye operadores para comprobar características de archivos y rutas:

- `-a`
- `-b`
- `-c`
- `-d`
- `-e`
- `-f`
- `-h` o `-L`
- `-k`
- `-p`
- `-s`
- `-t`
- `-S`

Ejemplo de comprobación de un archivo regular:

```bash
if [ -f "datos.txt" ]; then
    echo "El archivo existe y es regular"
else
    echo "No se encuentra un archivo regular con ese nombre"
fi
```

## 3. Condicional case

`case` permite seleccionar acciones según el valor de una expresión.

```bash
#!/bin/bash
read -p "Elige una opción (s/n): " opcion

case "$opcion" in
    s)
        echo "Has elegido sí"
        ;;
    n)
        echo "Has elegido no"
        ;;
    *)
        echo "Opción no reconocida"
        ;;
esac
```

## Ejercicios

1. Pide un número y muestra un mensaje si es mayor que cero.
2. Amplía el ejercicio anterior para distinguir entre positivo, negativo y cero.
3. Comprueba si existe un archivo llamado `datos.txt`.
4. Utiliza `case` para responder a las opciones `s` y `n`.
5. Añade una opción predeterminada para entradas no reconocidas.
6. Busca en el material qué representa cada prueba de archivo enumerada.

## Comprobación

- [ ] He utilizado `if` y `else`.
- [ ] He practicado una prueba de archivo.
- [ ] He creado una estructura `case`.
- [ ] He añadido una opción predeterminada.
