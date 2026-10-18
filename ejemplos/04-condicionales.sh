
#!/bin/bash

# Ejemplo 4: condicional if
read -p "Introduce un número: " numero

if [ "$numero" -gt 0 ]; then
    echo "El número es positivo"
elif [ "$numero" -lt 0 ]; then
    echo "El número es negativo"
else
    echo "El número es cero"
fi

# Ejemplo 5: selección con case
read -p "Elige s o n: " opcion

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
