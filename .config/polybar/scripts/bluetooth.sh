#!/bin/sh

bluetooth_print() {
    bluetoothctl | while read -r; do
        if [ "$(systemctl is-active "bluetooth.service")" = "active" ]; then
            printf ' '

            # Auto run the xmodmap when connect to the bluetooth device
            xmodmap ~/.Xmodmap

            # New start
            # TODO: Display one device at the time
            device_info=$(bluetoothctl info "$device" | grep "Alias" | cut -d ' ' -f 2-)  
            printf "%s" "$device_info"
            
            # auto_run_xmodmap=$(bluetoothctl info | grep "Connected" | cut -d ' ' -f 2-)
            # if [ "$(auto_run_xmodmap)" = "yes" ] xmodmap ~/.Xmodmap;

            # if ["$(device_info)" = "Keyboard"] then 
            #     xmodmap ~/.Xmodmap
            #     printf "%s" "$device_info"
            # fi

             # New end

            # devices_paired=$(bluetoothctl paired-devices | grep Device | cut -d ' ' -f 2)
            # counter=0

            # for device in $devices_paired; do
            #     device_info=$(bluetoothctl info "$device")

            #     if echo "$device_info" | grep -q "Connected: yes"; then
            #         device_alias=$(echo "$device_info" | grep "Alias" | cut -d ' ' -f 2-)

            #         if [ $counter -gt 0 ]; then
            #             printf ", %s" "$device_alias"
            #         else
            #             printf " %s" "$device_alias"
            #         fi

            #         counter=$((counter + 1))
            #     fi
            # done

            printf '\n'
        else
            echo "#2"
        fi
    done
}

bluetooth_open() {
    blueman-manager
}
bluetooth_toggle() {
    if bluetoothctl show | grep -q "Powered: no"; then
        bluetoothctl power on >> /dev/null
        sleep 1

        devices_paired=$(bluetoothctl paired-devices | grep Device | cut -d ' ' -f 2)
        echo "$devices_paired" | while read -r line; do
            bluetoothctl connect "$line" >> /dev/null
        done
    else
        devices_paired=$(bluetoothctl paired-devices | grep Device | cut -d ' ' -f 2)
        echo "$devices_paired" | while read -r line; do
            bluetoothctl disconnect "$line" >> /dev/null
        done

        bluetoothctl power off >> /dev/null
    fi
}

case "$1" in
    --toggle)
        bluetooth_open
        ;;
    *)
        bluetooth_print
        ;;
esac


