#!/bin/sh
#Komeil Majidi 2019
#LAN LED


while [ true ] ; do
   LAN=`swconfig dev switch0 show | fgrep 'link: port:0 ' | cut -d ' ' -f 3 | cut -d ':' -f 2 `
   LANN=`swconfig dev switch0 show | fgrep 'link: port:1 ' | cut -d ' ' -f 3 | cut -d ':' -f 2 `
           
       bitii=` cat www/luci-static/bitrateacs.txt`

if [ $bitii == 1 ]; then

 ./bitrate.sh &
 echo 0 > www/luci-static/bitrateacs.txt
 
 fi                                                              
             
                                                                                   
 if [ $LAN == up ] || [ $LANN == up ]  ; then                              
                                                        
  echo "1" > /sys/class/gpio/gpio6/value                                   
                                          
  fi 
  
   if [ $LAN == up ] ; then                              
                                                        
  echo 1 > /www/luci-static/lan1.txt                                  
                                          
  fi
  
     if [ $LAN == down ] ; then                              
                                                        
  echo 2 > /www/luci-static/lan1.txt                                  
                                          
  fi
  
   if  [ $LANN == up ]  ; then                              
                                                        
  echo 1 > /www/luci-static/lan2.txt                                    
                                          
  fi 
  
     if  [ $LANN == down ]  ; then                              
                                                        
  echo 2 > /www/luci-static/lan2.txt                                    
                                          
  fi 
  
 if    [ $LAN == down ] && [ $LANN == down ]  ; then                                                 
                                                        
  echo "0" > /sys/class/gpio/gpio6/value                
 fi                                                     
                                                        
                                                        
sleep 2                                 
done
