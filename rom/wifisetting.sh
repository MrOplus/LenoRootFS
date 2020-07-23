#!/bin/sh
#Komeil Majidi 2019
# D Setting

channel=`uci show wireless.default_radio0.disabled | sed "s/'//g" `

channelasli=${channel:33}



if [ $channelasli == 1 ]; then
    echo  "0"  > /sys/class/gpio/gpio3/value


else

   echo  "1"  > /sys/class/gpio/gpio3/value


fi



