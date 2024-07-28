#!/bin/bash


battery_status=$(headsetcontrol -b | grep '%' | awk '{print $2}')

connection_status=$(headsetcontrol --connected) 

icon="󰋎"

# Chequeo de conexion
if echo "$connection_status" | grep -q "true"; then
    color="%{F#00FF00}" 
elif echo "$connection_status" | grep -q "No supported device found"; then
    color="%{F#808080}"
fi

echo "${color}${icon}%{F-} $battery_status"


# Para este script es necesario headsetcontrol (github)
