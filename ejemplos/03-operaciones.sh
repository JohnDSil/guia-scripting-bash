
#!/bin/bash

# Ejemplo 3: operaciones aritméticas
a=10
b=3

suma=$((a+b))
resta=$((a-b))
multiplicacion=$((a*b))

echo "Suma: $suma"
echo "Resta: $resta"
echo "Multiplicación: $multiplicacion"

echo "Suma mediante expr:"
expr "$a" + "$b"

echo "División decimal:"
echo "scale=2; 10 / 3" | bc
