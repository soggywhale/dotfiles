#!/bin/sh

pid=`pidof waybar`
if [[ "$pid" -gt 0 ]]
then
    kill -9 "$pid"
    while pgrep -u $UID -x waybar > /dev/null; do sleep 1; done
fi 

hyprctl dispatch exec waybar 

echo "Waybar launched"
