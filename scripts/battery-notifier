#!/bin/bash

while true; do
    battery_level=$(acpi -b | grep -P -o '[0-9]+(?=%)')
    if [ $battery_level -gt 90 ]; then
        notify-send "Battery Level" "Above 90%: ${battery_level}%"
    fi
    sleep 60  # Check every minute
done
