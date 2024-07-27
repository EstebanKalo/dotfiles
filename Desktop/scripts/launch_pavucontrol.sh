#!/bin/bash

pavucontrol &
sleep 1

WINDOW_ID=$(xdo id -a pavucontrol)
bspc node "$WINDOW_ID" --to-monitor focused
bspc node "$WINDOW_ID" --flag sticky=on

# No tengo ganas de hacerlo ahora xd
#bspc node "$WINDOW_ID" --to-desktop '^1'
