#!/bin/sh
# Fetch current weather (Format: Icon Temp)
curl -s "wttr.in?format=%c+%t" | tr -d '+' > /tmp/weather_info
