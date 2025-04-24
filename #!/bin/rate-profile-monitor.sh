#!/bin/bash

set_monitor_config() {
    POWER_MODE=$(powerprofilesctl get)

    if [ "$POWER_MODE" = "power-saver" ]; then
        gnome-monitor-config set -Lp -M eDP-1 -s 2 -m 2880x1920@60.001
    elif [ "$POWER_MODE" = "balanced" ] || [ "$POWER_MODE" = "performance" ]; then
        gnome-monitor-config set -Lp -M eDP-1 -s 2 -m 2880x1920@120.000
    fi
}

set_monitor_config

while true; do
    sleep 60
    set_monitor_config
done

