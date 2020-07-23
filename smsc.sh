#!/bin/sh
#Komeil Majidi 2019
# D Setting

countsms=`ls /www/smsasli/incom | wc -l`

echo $countsms > /www/luci-static/smscount.txt



while [ true ] ; do

countsms=`ls /www/smsasli/incom | wc -l`

echo $countsms > /www/luci-static/smscount.txt

sleep 10
done




