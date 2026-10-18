
# Soluciones de práctica

Estas soluciones son ejemplos de respuesta. Pueden existir otras formas válidas de resolver los ejercicios.

## Nivel 1. Introducción

### Ejercicio 1

```bash
#!/bin/bash
echo "Hola, mundo"
```

### Ejercicio 2

```bash
#!/bin/bash
echo "Primera línea"
echo "Segunda línea"
echo "Tercera línea"
```

### Ejercicio 3

```bash
#!/bin/bash
echo "Estoy practicando Bash"
```

### Ejercicio 4

```bash
bash hola.sh
```

## Nivel 2. Variables y entrada

### Ejercicio 5

```bash
#!/bin/bash
nombre="Ana"
echo "$nombre"
```

### Ejercicio 6

```bash
#!/bin/bash
read -p "Introduce tu nombre: " nombre
echo "Hola, $nombre"
```

### Ejercicio 7

```bash
#!/bin/bash
echo "Fecha: $(date)"
```

### Ejercicio 8

```bash
#!/bin/bash
nombre="Ana"
echo "Hola, $nombre"
echo 'Hola, $nombre'
```

Con comillas dobles se interpreta la variable; con comillas simples se muestra el texto literal.

### Ejercicio 9

```bash
env
```

## Nivel 3. Operaciones

### Ejercicio 10

```bash
#!/bin/bash
a=4
b=6
let suma=a+b
echo "$suma"
```

### Ejercicio 11

```bash
#!/bin/bash
a=10
b=3
resta=$((a-b))
echo "$resta"
```

### Ejercicio 12

```bash
#!/bin/bash
a=4
b=5
resultado=$((a*b))
echo "$resultado"
```

### Ejercicio 13

```bash
expr 4 + 6
```

### Ejercicio 14

```bash
echo "scale=2; 5 / 2" | bc
```

### Ejercicio 15

```bash
basename /home/usuario/documento.txt
```

## Nivel 4. Condicionales

### Ejercicio 16

```bash
#!/bin/bash
read -p "Introduce un número: " numero

if [ "$numero" -gt 0 ]; then
    echo "Positivo"
else
    echo "No es positivo"
fi
```

### Ejercicio 17

```bash
#!/bin/bash
read -p "Introduce un número: " numero

if [ "$numero" -gt 0 ]; then
    echo "Positivo"
elif [ "$numero" -lt 0 ]; then
    echo "Negativo"
else
    echo "Cero"
fi
```

### Ejercicio 18

```bash
#!/bin/bash
if [ -f "datos.txt" ]; then
    echo "Archivo regular encontrado"
else
    echo "No se encuentra el archivo regular"
fi
```

### Ejercicio 19

```bash
#!/bin/bash
read -p "Elige a o b: " opcion

case "$opcion" in
    a) echo "Elegiste a" ;;
    b) echo "Elegiste b" ;;
    *) echo "Opción no reconocida" ;;
esac
```

### Ejercicio 20

La opción `*)` del ejercicio anterior permite responder cuando la entrada no coincide con ninguna de las opciones definidas.

## Nivel 5. Bucles

### Ejercicio 21

```bash
#!/bin/bash
for numero in 1 2 3 4 5 6 7 8 9 10
do
    echo "$numero"
done
```

### Ejercicio 22

```bash
#!/bin/bash
contador=1

while [ "$contador" -le 5 ]
do
    echo "$contador"
    contador=$((contador+1))
done
```

### Ejercicio 23

```bash
#!/bin/bash
contador=1

until [ "$contador" -gt 5 ]
do
    echo "$contador"
    contador=$((contador+1))
done
```

### Ejercicio 24

```bash
#!/bin/bash
for numero in 1 2 3 4 5
do
    if [ "$numero" -eq 4 ]; then
        break
    fi
    echo "$numero"
done
```

### Ejercicio 25

```bash
#!/bin/bash
for numero in 1 2 3 4 5
do
    if [ "$numero" -eq 3 ]; then
        continue
    fi
    echo "$numero"
done
```

### Ejercicio 26

```bash
#!/bin/bash
echo "$RANDOM"
echo "$RANDOM"
echo "$RANDOM"
```

## Nivel 6. Parámetros y funciones

### Ejercicio 27

```bash
#!/bin/bash
echo "Primer parámetro: $1"
```

Ejecución de ejemplo:

```bash
bash parametros.sh Ana
```

### Ejercicio 28

```bash
#!/bin/bash
echo "Número de parámetros: $#"
```

### Ejercicio 29

```bash
#!/bin/bash
saludar() {
    echo "Hola"
}

saludar
```

### Ejercicio 30

```bash
#!/bin/bash
PS3="Elige una opción: "

select opcion in "Saludar" "Salir"
do
    case "$opcion" in
        "Saludar") echo "Hola" ;;
        "Salir") break ;;
        *) echo "Opción no reconocida" ;;
    esac
done
```

## Nivel 7. Depuración

### Ejercicio 31

```bash
bash -n hola.sh
```

### Ejercicio 32

```bash
bash -v hola.sh
```

### Ejercicio 33

```bash
bash -x hola.sh
```

### Ejercicio 34

```bash
true
echo "$?"
```

## Nota

Los resultados de los ejercicios dependen de los valores introducidos y de los archivos disponibles. Para practicar, ejecuta los ejemplos en un entorno compatible con Bash.
