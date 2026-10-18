
#!/bin/bash

# Ejemplo 6: bucle for
echo "Bucle for"
for numero in 1 2 3 4 5
do
    echo "$numero"
done

# Ejemplo 7: bucle while
echo "Bucle while"
contador=1

while [ "$contador" -le 5 ]
do
    echo "$contador"
    contador=$((contador+1))
done

# Ejemplo 8: bucle until
echo "Bucle until"
contador=1

until [ "$contador" -gt 5 ]
do
    echo "$contador"
    contador=$((contador+1))
done
