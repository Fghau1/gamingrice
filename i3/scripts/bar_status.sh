#!/bin/bash

# Reads standard i3status output and prepends the active window title from xtitle
i3status | while :; do
    read line
    title=$(xtitle)
    # If no window is focused, default to an empty string or desktop label
    if [ -z "$title" ]; then
        title="Desktop"
    fi
    echo " $title | $line" || exit 1
done
