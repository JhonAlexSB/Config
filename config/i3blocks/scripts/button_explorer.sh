#!/bin/bash

# Texto que se mostrará en la barra de i3blocks
echo " "

# Acción al hacer clic en el botón
if [ "$BLOCK_BUTTON" == "1" ]; then
    nautilus &
fi
