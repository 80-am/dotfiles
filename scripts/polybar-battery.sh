#!/bin/sh

battery_print() {
    path_ac="/sys/class/power_supply/AC"
    path_battery_0="/sys/class/power_supply/BAT0"
    path_battery_1="/sys/class/power_supply/BAT1"

    ac=0
    battery_level_0=0
    battery_level_1=0
    battery_max_0=0
    battery_max_1=0

    if [ -f "$path_ac/online" ]; then
        ac=$(cat "$path_ac/online")
    fi

    if [ -f "$path_battery_0/energy_now" ]; then
        battery_level_0=$(cat "$path_battery_0/energy_now")
    fi

    if [ -f "$path_battery_0/energy_full" ]; then
        battery_max_0=$(cat "$path_battery_0/energy_full")
    fi

    if [ -f "$path_battery_1/energy_now" ]; then
        battery_level_1=$(cat "$path_battery_1/energy_now")
    fi

    if [ -f "$path_battery_1/energy_full" ]; then
        battery_max_1=$(cat "$path_battery_1/energy_full")
    fi

    battery_level=$(("$battery_level_0 + $battery_level_1"))
    battery_max=$(("$battery_max_0 + $battery_max_1"))

    battery_percent=$(("$battery_level * 100"))
    battery_percent=$(("$battery_percent / $battery_max"))


    echo "$battery_percent %"
}

path_pid="/home/adaber/repos/dotfiles/scripts/polybar-battery.pid"

case "$1" in
    --update)
        pid=$(cat $path_pid)

        if [ "$pid" != "" ]; then
            kill -10 "$pid"
        fi
        ;;
    *)
        echo $$ > $path_pid

        trap exit INT
        trap "echo" USR1

        while true; do
            battery_print

            sleep 30 &
            wait
        done
        ;;
esac

