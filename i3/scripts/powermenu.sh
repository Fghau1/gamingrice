#!/bin/bash

options="⏻ Shutdown\n⏾ Reboot\n Lock\n Logout\n Suspend"

chosen=$(echo -e "$options" | rofi -dmenu -i -p "Power" -theme-str 'window {width: 300px;}')

case "$chosen" in
    "⏻ Shutdown")
        systemctl poweroff
        ;;
    "⏾ Reboot")
        systemctl reboot
        ;;
    " Lock")
        i3lock
        ;;
    " Logout")
        i3-msg exit
        ;;
    " Suspend")
        systemctl suspend
        ;;
esac
