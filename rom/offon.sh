#!/bin/sh
#Komeil Majidi 2019
# D Setting

rm  /www/luci-static/internet.txt 

while [ true ] ; do
interr=`ping -q -w1 -c1 google.com &>/dev/null && echo online || echo offline`


if [ $interr == "online"  ]; then
      echo 1 > /www/luci-static/internet.txt 
	  break
     
else
      echo 0 > /www/luci-static/internet.txt 

fi

sleep 1
done

while [ true ] ; do
interr=`ping -q -w1 -c1 google.com &>/dev/null && echo online || echo offline`


if [ $interr == "online"  ]; then
      echo 1 > /www/luci-static/internet.txt 
     
else
      echo 0 > /www/luci-static/internet.txt 

fi

sleep 30
done



