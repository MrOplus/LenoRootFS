#!/bin/sh
#Komeil Majidi 2019
#bitrate

sleep 12

checkukbit=0
checkumbit=0
checkumby=0

checkdkbit=0
checkdmbit=0
checkdmby=0

maxukbit=0
maxumbit=0
maxumby=0

maxdkbit=0
maxdmbit=0
maxdmby=0
while [ true ] ; do
looper=0


if [ $checkukbit == 0 ];then
maxukbit=$upkb

fi

if [ $checkumbit == 0 ];then
maxumbit=$upmb

fi

if [ $checkumby == 0 ];then
maxumby=$upmby

fi

if [ $checkdkbit == 0 ];then
maxdkbit=$dnkb

fi

if [ $checkdmbit == 0 ];then
maxdmbit=$dnmb

fi

if [ $checkdmby == 0 ];then
maxdmby=$dnmby

fi


     for lk in $(  ifconfig wwan0 | tail -n 2 |  sed -e "s/:/ /g"   )
      do
	     looper=$((looper+1))
		  
      if [ $looper == 3 ];then
        tx=$lk
	 
	   fi
	   
	     if [ $looper == 8 ];then
        rx=$lk
	   
	   fi
 
      done  
	  
	  
	  sleep 1
	  tppler=0
	  
	  for tk in $(  ifconfig wwan0 | tail -n 2 |  sed -e "s/:/ /g"  )
      do
	     tppler=$((tppler+1))
      if [ $tppler == 3 ];then
        txp=$tk
	   
	   fi
	   
	     if [ $tppler == 8 ];then
        rxp=$tk
	   
	   fi
 
      done 
downloadrate=$((txp-tx))
uploadrate=$((rxp-rx))


 

dnmb=$((downloadrate*8/1000000))
dnmby=$((dnmb/8))
dnkb=$((downloadrate*8/1000))







#-----------------------------

upmb=$((uploadrate*8/1000000))
upmby=$((upmb/8))
upkb=$((uploadrate*8/1000))
if [ $upkb -gt $maxukbit ]; then

   maxukbit=$upkb 
   checkukbit=1
 fi
 
 if [ $upmb -gt $maxumbit ]; then

   maxumbit=$upmb 
   checkumbit=1
 fi
 
 
  if [ $upmby -gt $maxumby ]; then

   maxumby=$upmby 
   checkumby=1
 fi
 
   if [ $dnkb -gt $maxdkbit ]; then

   maxdkbit=$dnkb 
   checkdkbit=1
 fi
 
    if [ $dnmb -gt $maxdmbit ]; then

   maxdmbit=$dnmb 
   checkdmbit=1
 fi
 
     if [ $dnmby -gt $maxdmby ]; then

   maxdmby=$dnmby 
   checkdmby=1
 fi


 JSON_PARAMM='{"upbandkbit":"'"$upkb"'","downbandkbit":"'"$dnkb"'","upbandmbyte":"'"$upmby"'","downbandmbyte":"'"$dnmby"'","downbandmbit":"'"$dnmb"'","upbandmbit":"'"$upmb"'","maxupbandkbit":"'"$maxukbit"'","maxdownbandkbit":"'"$maxdkbit"'","maxupbandmbyte":"'"$maxumby"'","maxdownbandmbyte":"'"$maxdmby"'","maxdownbandmbit":"'"$maxdmbit"'","maxupbandmbit":"'"$maxumbit"'"}'

     rm /www/luci-static/bandd.json
 {

echo $JSON_PARAMM

}>> /www/luci-static/bandd.json




done
