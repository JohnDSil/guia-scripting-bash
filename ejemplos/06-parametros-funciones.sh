
#!/bin/bash

# Ejemplo 9: parámetros
echo "Nombre del script: $0"
echo "Primer parámetro: $1"
echo "Número de parámetros: $#"

# Ejemplo 10: función
saludar() {
    echo "Hola, $1"
}

saludar "Ana"
saludar "Luis"

# Ejemplo 11: código de retorno
true
echo "Código de retorno: $?"
