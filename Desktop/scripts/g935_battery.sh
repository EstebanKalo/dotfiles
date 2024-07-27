#!/bin/bash

battery_status=$(headsetcontrol -b | grep '%' | awk '{print $2}')

# notify-send "Battery Status" "Headset battery is at: ${battery_status}"


