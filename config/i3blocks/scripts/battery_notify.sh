#!/bin/bash

# Define el umbral de batería baja y llena
LOW_BATTERY_THRESHOLD=20
FULL_BATTERY_THRESHOLD=95

# Obtén el porcentaje de la batería actual
BATTERY_PERCENTAGE=$(acpi -b | grep -P -o '[0-9]+(?=%)')

# Obtén el estado de carga
BATTERY_STATUS=$(acpi -b | grep -o 'Charging\|Discharging\|Full')

# Notificar cuando la batería esté baja
if [ "$BATTERY_STATUS" = "Discharging" ] && [ "$BATTERY_PERCENTAGE" -le "$LOW_BATTERY_THRESHOLD" ]; then
    notify-send -u critical "Batería baja" "La batería está al $BATTERY_PERCENTAGE%. Conecta el cargador."
fi

# Notificar cuando la batería esté llena
if [ "$BATTERY_STATUS" = "Charging" ] && [ "$BATTERY_PERCENTAGE" -ge "$FULL_BATTERY_THRESHOLD" ]; then
    notify-send -u normal "Batería llena" "La batería está al $BATTERY_PERCENTAGE%. Desconecta el cargador."
fi
