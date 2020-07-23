#komeil majidi
#leanotek parameter 2019
imeifrom=$(cat imei.txt)
echo 0 >/www/luci-static/simstatus.txt
#section one get fix parameter and if for validate
#start
while [ true ]; do
  checksix=$(cat /bashmci/six)

  if [ $checksix == 1 ]; then

    ./lon.sh &

  fi

  if [ $shabake == LTE ]; then

    echo 1 >/bashmci/lo

  fi

  if [ $shabake == WCDMA ]; then

    echo 2 >/bashmci/lo

  fi

  if [ $shabake == GSM ]; then

    echo 2 >/bashmci/lo

  fi

  ./datacell.sh

  rm /www/luci-static/param.json
  looper=0
  checknet2=$(cat /bashmci/lo)
  if [ $checknet2 == 1 ]; then

    for lk in $(cat noo.txt | sed -e "s/ok/ /g"); do
      looper=$((looper + 1))

      if [ $looper == 2 ]; then
        qcsq=$lk
      fi

      if [ $looper == 5 ]; then
        temp=$lk
      fi

      if [ $looper == 8 ]; then
        all=$lk
      fi

      if [ $looper == 11 ]; then
        antenlr=$lk
      fi

      if [ $looper == 14 ]; then

        teke=$lk
      fi

      if [ $looper == 15 ]; then

        teke1=$lk
      fi
      if [ $looper == 16 ]; then

        teke2=$lk
      fi
      if [ $looper == 17 ]; then

        teke3=$lk
      fi

      if [ $looper == 18 ]; then

        qwinfo="$teke-$teke1-$teke2-$teke3"

      fi
      if [ $looper == 19 ]; then

        imei=$imeifrom
      fi
      if [ $looper == 21 ]; then

        imsi=$lk
      fi

      if [ $looper == 24 ]; then

        iccid=$lk
      fi
    done
  else

    for lk in $(cat noo.txt | sed -e "s/ok/ /g"); do
      looper=$((looper + 1))

      if [ $looper == 2 ]; then
        qcsq=$lk
      fi

      if [ $looper == 5 ]; then
        temp=$lk
      fi

      if [ $looper == 8 ]; then
        all=$lk
      fi

      if [ $looper == 11 ]; then

        teke=$lk
      fi

      if [ $looper == 12 ]; then

        teke1=$lk
      fi

      if [ $looper == 13 ]; then

        qwinfo="$teke-$teke1"

      fi
      if [ $looper == 14 ]; then

        imei=$imeifrom
      fi
      if [ $looper == 16 ]; then

        imsi=$lk
      fi

      if [ $looper == 19 ]; then

        iccid=$lk
      fi
    done

  fi

  checksimcheck=$(cat /www/luci-static/checksimcheck.txt)
  simast2=$(cat /www/luci-static/simast.txt)

  imsisim="${imsi:0:5}"
  imsicheck="${imsi:0:2}"
  imsilen=${#imsi}
  iccidlen=${#iccid}

  if [ $checksimcheck == 1 ]; then
    if [ $imsilen == 15 ]; then
      if [ $imsicheck == 43 ]; then

        echo 1 >/www/luci-static/simstatus.txt
        echo 0 >/www/luci-static/checksimcheck.txt
        echo 0 >/www/luci-static/checksimcheck.txt

      fi

    fi
  fi

  #end

  #get parameter every 10 sec

  ipv44=$(ifstatus wan1_4 | jsonfilter -e '@["ipv4-address"][0].address')
  ipv66=$(ifstatus wan1_6 | jsonfilter -e '@["ipv6-address"][0].address')
  ccidasl=$iccid
  shomare=0
  addad=0
  addaddd=0
  shomareshh=0
  addadko=0

  #get antena 1 and 2 parameter
  for i in $(echo $antenlr | sed "s/,/ /g"); do
    shomare=$((shomare + 1))

    if [ $shomare == 2 ]; then
      rssi0="$i"

    fi
    if [ $shomare == 3 ]; then
      rsrp0="$i"
    fi
    if [ $shomare == 4 ]; then
      ecio0="$i"
    fi
    if [ $shomare == 5 ]; then
      rssi1="$i"
    fi
    if [ $shomare == 6 ]; then
      rsrp1="$i"
    fi
    if [ $shomare == 7 ]; then
      ecio1="$i"
    fi
  done

  #get band and channel
  for p in $(echo $qwinfo | sed -e 's/ /-/g' -e 's/\"//g' -e "s/,/ /g"); do
    addad=$((addad + 1))

    if [ $addad == 1 ]; then

      aslitype=$p

    fi

    if [ $addad == 3 ]; then
      band="$p"
    fi
    if [ $addad == 4 ]; then
      channel="$p"
    fi

  done

  for jh in $(echo $temp | sed -e "s/,/ /g"); do
    addadko=$((addadko + 1))

    if [ $addadko == 1 ]; then

      tempp=$jh

    fi

  done

  #get mnc mcc and ...
  for p in $(echo $all | sed -e "s/,/ /g"); do

    addaddd=$((addaddd + 1))
    if [ $addaddd == 4 ]; then

      mccgw=$(echo $p | sed -e 's/\"//g')
      echo $mccgw
    fi

    if [ $addaddd == 5 ]; then

      mcc=$p
    fi

    if [ $addaddd == 6 ]; then

      mnc=$p
    fi

    if [ $addaddd == 7 ]; then

      cellid=$p
    fi

    if [ $addaddd == 8 ]; then

      pcid=$p
    fi

    if [ $addaddd == 9 ]; then

      pcidwc=$p
    fi

    if [ $addaddd == 13 ]; then

      tac=$p
    fi
    if [ $addaddd == 10 ]; then

      freq=$p
    fi

    if [ $addaddd == 11 ]; then

      upbandd=$p

      if [ $upbandd == 5 ]; then

        upband=20
      fi
      if [ $upbandd == 4 ]; then

        upband=15
      fi
      if [ $upbandd == 3 ]; then

        upband=10
      fi
      if [ $upbandd == 2 ]; then

        upband=5
      fi
      if [ $upbandd == 1 ]; then

        upband=3
      fi

    fi

    if [ $addaddd == 12 ]; then

      downbandd=$p

      if [ $downbandd == 5 ]; then

        downband=20
      fi
      if [ $downbandd == 4 ]; then

        downband=15
      fi
      if [ $downbandd == 3 ]; then

        downband=10
      fi
      if [ $downbandd == 2 ]; then

        downband=5
      fi
      if [ $downbandd == 1 ]; then

        downband=3
      fi

    fi

  done

  #get shabake rssi and ...
  for n in $(echo $qcsq | sed -e "s/,/ /g"); do
    shomareshh=$((shomareshh + 1))

    if [ $shomareshh == 1 ]; then
      shabake=$(echo $n | sed -e 's/\"//g')
      echo $shabake
    fi

    if [ $shomareshh == 2 ]; then

      rssi=$n

    fi

    if [ $shomareshh == 3 ]; then

      rsrp=$n

    fi

    if [ $shomareshh == 4 ]; then

      sinrr=$n
      sinr=$((sinrr / 10))

    fi

    if [ $shomareshh == 5 ]; then

      rsrq=$n

    fi

  done

  operatvar="MTN Irancell"

  JSON_PARAM='{"RSSI0":"'"$rssi0"'","RSSI1":"'"$rssi1"'","RSRP0":"'"$rsrp0"'","RSRP1":"'"$rsrp1"'","ECIO0":"'"$ecio0"'",
 "IMSI":"'"$imsi"'","IMEI":"'"$imei"'","ICCID":"'"$ccidasl"'","ECIO0":"'"$ecio0"'","ECIO1":"'"$ecio1"'","BAND":"'"$band"'","CHANNEL":"'"$channel"'",
 "MCC":"'"$mcc"'","MNC":"'"$mnc"'","CELLLID":"'"$cellid"'","PCID":"'"$pcid"'","TAC":"'"$tac"'","SHABAKE":"'"$aslitype"'","SHABAKEIF":"'"$shabake"'",
 "RSSI":"'"$rssi"'","RSRP":"'"$rsrp"'","SINR":"'"$sinr"'","RSRQ":"'"$rsrq"'","MCCGW":"'"$mccgw"'","TEMP":"'"$tempp"'","IPV4":"'"$ipv44"'",
 "IPV6":"'"$ipv66"'","FREQ":"'"$freq"'","UPBAND":"'"$upband"'","DOWNBAND":"'"$downband"'","PCIDWC":"'"$pcidwc"'","IMSILON":"'"$imsilen"'","ICCIDLEN":"'"$iccidlen"'","OPERAT":"'"$operatvar"'"}'

  rm /www/luci-static/param.json

  {

    echo $JSON_PARAM

  } >>/www/luci-static/param.json

  #Signal Strenght
  if [ $rssi -gt "90" ]; then
    echo "1" >/sys/class/gpio/gpio1/value
    echo "0" >/sys/class/gpio/gpio2/value
    echo "0" >/sys/class/gpio/gpio0/value
    cp /www/red/signal.jpg /www/luci-static

    rm /www/luci-static/signal.html
    {
      echo "<html>"
      echo "<head>"
      echo "<meta http-equiv=\"cache-control\" content=\"max-age=0\" />"
      echo "<link rel=\"stylesheet\" href=\"/luci-static/overview.css\">"
      echo "<style type=\"text/css\">"
      echo "p {
		  font-size : 20px;
		  font-weight : bold;
		}"
      echo "</style>"
      echo "</head>"
      echo "<body>"

      echo "<center><p> Signal Strenght : Weak </p></center> "

      echo "</body>"
      echo "</html>"
    } >>/www/luci-static/signal.html

  fi

  if [ $rssi -gt "70" ] && [ $rssi -le "90" ]; then
    echo "0" >/sys/class/gpio/gpio1/value
    echo "1" >/sys/class/gpio/gpio2/value
    echo "0" >/sys/class/gpio/gpio0/value
    cp /www/blue/signal.jpg /www/luci-static

    rm /www/luci-static/signal.html
    {
      echo "<html>"
      echo "<head>"
      echo "<meta http-equiv=\"cache-control\" content=\"max-age=0\" />"
      echo "<link rel=\"stylesheet\" href=\"/luci-static/overview.css\">"
      echo "<style type=\"text/css\">"
      echo "p {
		  font-size : 20px;
		  font-weight : bold;
		}"
      echo "</style>"
      echo "</head>"
      echo "<body>"

      echo "<center><p> Signal Strenght : Good </p></center> "

      echo "</body>"
      echo "</html>"
    } >>/www/luci-static/signal.html

  fi

  if [ $rssi -gt "10" ] && [ $rssi -le "70" ]; then
    echo "0" >/sys/class/gpio/gpio2/value
    echo "0" >/sys/class/gpio/gpio1/value
    echo "1" >/sys/class/gpio/gpio0/value
    cp /www/green/signal.jpg /www/luci-static

    rm /www/luci-static/signal.html
    {
      echo "<html>"
      echo "<head>"
      echo "<meta http-equiv=\"cache-control\" content=\"max-age=0\" />"
      echo "<link rel=\"stylesheet\" href=\"/luci-static/overview.css\">"
      echo "<style type=\"text/css\">"
      echo "p {
		  font-size : 20px;
		  font-weight : bold;
		}"
      echo "</style>"
      echo "</head>"
      echo "<body>"

      echo "<center><p> Signal Strenght : Excellent </p></center> "

      echo "</body>"
      echo "</html>"
    } >>/www/luci-static/signal.html

  fi

  #end Signal Strenght

  sleep 8
done
