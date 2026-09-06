#!/bin/sh
if playerctl status >/dev/null 2>&1; then
    status=$(playerctl status)
    if [ "$status" = "Playing" ]; then
        echo "󰎈 $(playerctl metadata --format '{{ artist }} - {{ title }}' | cut -c1-30)"
    elif [ "$status" = "Paused" ]; then
        echo "󰏤 Paused"
    fi
else
    echo ""
fi
