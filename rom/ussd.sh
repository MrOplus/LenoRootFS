
loster=0

ussdcheck=`cat /www/luci-static/ussdcheck.txt`

if [ $ussdcheck == 1 ]; then 
  echo 'AT+CUSD=1,"*555*1*4*1#"' > /dev/ttyUSB3
   
   fi
if [ $ussdcheck == 2 ]; then
ramzi=`cat /www/luci-static/ramz.txt `
  echo 'AT+CUSD=1,"'*555*1*1*1*1*$ramzi#'"' > /dev/ttyUSB3
  
  fi

if [ $ussdcheck == 3 ]; then 
  echo 'AT+CUSD=1,"*555#"' > /dev/ttyUSB3
   
   fi
   
 if [ $ussdcheck == 4 ]; then
requu=`cat /www/luci-static/requ.txt`


  echo 'AT+CUSD=1,"'$requu'"' > /dev/ttyUSB3
  
  fi
sleep 12
     for lk in $(  cat /ussd.txt | tail -n 1 |  sed -e "s/:/ /g" | sed -e 's/"/ /g'   )
	
      do
	  loster=$((loster+1))
	  if [ $loster == 10 ]; then
       ebarat=$lk
	   echo $ebarat
	   fi
 
      done 
	  
	if [ $ebarat == "Etebar" ]; then 
	
	    tmp=`cat /ussd.txt | tail -n 1 | awk -v FS="(CUSD: 0,\"|\",15)" '{print $2}' `
		echo $tmp
	     rm /www/luci-static/ussdres.html
         {

         echo "$tmp"

         }>> /www/luci-static/ussdres.html

       exit 0	
	 
	
	fi 

	if [ $ebarat == "Invalid" ]; then
	
	 	    tmp=`cat /ussd.txt | tail -n 1  | awk -v FS="(CUSD: 0,\"|\",15)" '{print $2}' `
	     rm /www/luci-static/ussdres.html
         {

         echo "$tmp"

         }>> /www/luci-static/ussdres.html 

	  exit 0 
	fi
	
	checkmatn=`cat /ussd.txt | tail -n 1 `
    checkasli=${checkmatn:54:1}
	echo $checkasli
	echo $checkmatn
	
	if [ $checkasli == 0 ] ; then 
	
	  tmp=`cat /ussd.txt | tail -n 1  | awk -v FS="(CUSD: 0,\"|\",72)" '{print $2}' | sed 's/../\\\x&/g'`
       answer=`echo -n -e "$tmp" | iconv -f UCS-2BE -t UTF-8 `
         echo $answer
	     rm /www/luci-static/ussdres.html
         {
             echo "<link rel=\"stylesheet\" href=\"/leanotek-sms/public/assets/bootstrap/css/bootstrap.min.css\">"
            echo "<style> body {    direction: rtl; }  </style>"
           echo $answer

         }>> /www/luci-static/ussdres.html 
	

	fi 
	
	
		if [ $checkasli == 1 ] ; then 
	
	  tmp=`cat /ussd.txt | tail -n 1  | awk -v FS="(CUSD: 1,\"|\",72)" '{print $2}' | sed 's/../\\\x&/g'`
       answer=`echo -n -e "$tmp" | iconv -f UCS-2BE -t UTF-8 `
        echo $answer
	     rm /www/luci-static/ussdres.html
         {
              echo "<link rel=\"stylesheet\" href=\"/leanotek-sms/public/assets/bootstrap/css/bootstrap.min.css\">"
            echo "<style> body {    direction: rtl; }  </style>"
           echo $answer

         }>> /www/luci-static/ussdres.html 
	
	
	fi 
	
	


 
