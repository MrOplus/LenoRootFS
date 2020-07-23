#!/bin/ash

# Turn on the amber blinking on the WPS LED
echo timer > /sys/devices/platform/leds-gpio/leds/netgear:orange:wps/trigger

# Start the WPS process
cd /var/run/hostapd
    for socket in *; do
        [ -S "$socket" ] || continue
        hostapd_cli -i "$socket" wps_pbc
    done
fi

# Wait for the WPS timeout
sleep 120

# Turn off the amber blinking of the WPS LED
echo none > /sys/devices/platform/leds-gpio/leds/netgear:orange:wps/trigger