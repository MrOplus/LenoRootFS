#!/bin/sh
#Komeil Majidi 2019
# D Setting

rm noo.txt
checknet=`cat /bashmci/lo`

if [  $checknet == 1 ]; then

timeout 11 cat /dev/ttyUSB3 > noo.txt &
sleep 1
echo "AT+QCSQ" > /dev/ttyUSB3
sleep 1
echo "AT+QTEMP" > /dev/ttyUSB3
sleep 1 
echo 'AT+QENG="servingcell"' > /dev/ttyUSB3
sleep 1 
echo "AT+QRXPWR" > /dev/ttyUSB3
sleep 1 
echo "AT+QNWINFO" > /dev/ttyUSB3 
sleep 1
 echo "AT+GSN" > /dev/ttyUSB3 
sleep 1
echo "AT+CIMI" > /dev/ttyUSB3 
sleep 1 
echo "AT+QCCID" > /dev/ttyUSB3


else 

timeout 11 cat /dev/ttyUSB3 > noo.txt &
sleep 1
echo "AT+QCSQ" > /dev/ttyUSB3
sleep 1
echo "AT+QTEMP" > /dev/ttyUSB3
sleep 1 
echo 'AT+QENG="servingcell"' > /dev/ttyUSB3
sleep 1 

echo "AT+QNWINFO" > /dev/ttyUSB3 
sleep 1

echo "AT+GSN" > /dev/ttyUSB3 
sleep 1
echo "AT+CIMI" > /dev/ttyUSB3 
sleep 1 
echo "AT+QCCID" > /dev/ttyUSB3 

fi
