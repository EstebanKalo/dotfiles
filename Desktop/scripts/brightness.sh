#!/bin/bash


if [ "$#" -ne 2 ]; then
    echo "Uso: $0 <comando> <valor>"
    echo "Comandos disponibles: increase, decrease"
    exit 1
fi

# Args
command=$1
value=$2

# Nombre de la salida pantalla
output=$(xrandr --current | grep " connected" | awk '{ print $1 }')

# Brillo actual
current_brightness=$(xrandr --verbose | grep -i brightness | awk '{ print $2 }')

# Brillo maximo
max_brightness=1.0

# Sube o baja el brillo
case $command in
    increase)
        new_brightness=$(echo "$current_brightness + $value" | bc)
        ;;
    decrease)
        new_brightness=$(echo "$current_brightness - $value" | bc)
        ;;
    *)
        echo "Comando inválido. Usa 'increase' o 'decrease'."
        exit 1
        ;;
esac

if (( $(echo "$new_brightness > $max_brightness" | bc -l) )); then
    new_brightness=$max_brightness
elif (( $(echo "$new_brightness < 0.1" | bc -l) )); then
    new_brightness=0.1
fi

xrandr --output $output --brightness $new_brightness

echo "Brillo ajustado a $new_brightness"
