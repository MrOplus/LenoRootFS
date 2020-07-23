#!/bin/sh
#Komeil Majidi 2019

#echo $! > /tmp/lan.pid # male zire ejraee ha toyee startup masalan zire ejra background signal masalan
ssid=`uci show wireless.default_radio0.ssid | sed  s/\'//g `
pass=`uci show wireless.default_radio0.key | sed  s/\'//g `
enc=`uci show wireless.default_radio0.encryption | sed  s/\'//g `
mode=`uci show wireless.default_radio0.mode | sed  s/\'//g `
channel=`uci show wireless.radio0.channel | sed  s/\'//g `
htmode=`uci show wireless.radio0.htmode | sed  s/\'//g `
hidden=`uci show wireless.default_radio0.hidden | sed  s/\'//g `
wpsd=`uci show wireless.default_radio0.wps_pushbutton | sed  s/\'//g `
txpow=`uci show wireless.radio0.txpower | sed  s/\'//g `


unameshow="${ssid:29}"
passshow="${pass:28}"
ensshow="${enc:35}"
modeshow="${mode:29}" 
channelshow="${channel:24}" 
htmodeshow="${htmode:23}" 
hiddenasli=${hidden:31}
checken=`cat /www/luci-static/wifitoggle.txt`
checkbgn=`cat /www/luci-static/bgn.txt`
wpsasli=${wpsd:39}
txpowasli=${txpow:24}


if [ $hiddenasli == 1 ]; then 

   
     checkihid="true"


fi



if [ $wpsasli == 1 ]; then 

   
     wpscheck="true"


fi



if [ $checken == 1 ]; then 


   wifilshow="enable"
   echo $wifilshow
   
   fi
   
  if [ $checken == 2 ]; then 


   wifilshow="disable"
   
   echo $wifilshow
   
   fi
   
   
   if [ $checkbgn == 0 ]; then 


   modeoshow="bg"
   
   fi
   
  if [ $checkbgn == 1 ]; then 


   modeoshow="bgn"
   
   fi
  
   








 rm /www/luci-static/wificonf.html
{
echo "<!DOCTYPE html>"
echo "<html>"
echo "<body>"
echo "<meta name=\"viewport\" content=\"initial-scale=1.0\">"
echo "<link rel=\"stylesheet\" href=\"/luci-static/mac.css\">"
echo "<link rel=\"stylesheet\" href=\"/luci-static/wificonf.css\">"
echo "<link rel=\"stylesheet\" href=\"/luci-static/bootstrap/cascade.css\">"
echo "<meta http-equiv=\"cache-control\" content=\"no-cache\" />"
echo "<center>"
echo "<iframe name=\"hiddenFrame\" width=\"0\" height=\"0\" border=\"0\" style=\"display: none;\"></iframe>"
echo "<form method=\"post\" onsubmit=\"wificonf()\" action=\"/luci-static/wificonf.php\" target=\"hiddenFrame\">"
echo "<br><br>"
echo "<div class=\"row\">"
echo "<div class=\"column\" >"
echo "<label>Wi-Fi Enable/Disable </label><select id=\"wifil\" name=\"wifil\"><option value=\"enable\" selected>Enable</option><option value=\"disable\">Disable</option></select><br><br>"
echo "<label>SSID </label><input id=\"ssid\" name=\"ssid\"  pattern=\"^([0-9,a-z,@,!,#,$,%,^,&,*,_,\-,A-Z]{8,100})\" type=\"text\" value=\"\"  required/><br><br> "
echo "<label>Mode </label><select id=\"modeo\" name=\"modeo\"><option value=\"bgn\">b/g/n</option><option value=\"bg\">b/g</option></select><br><br> "
echo "<label>Channel </label> <select id=\"channel\"  name=\"channel\"><option value=\"auto\">auto</option><option value=\"1\">1 (2412 MHz)</option><option value=\"2\">2 (2417 MHz)</option><option value=\"3\">3 (2422 MHz)</option><option value=\"4\">4 (2427 MHz)</option><option value=\"5\">5 (2432 MHz)</option><option value=\"6\">6 (2437 MHz)</option><option value=\"7\">7 (2442 MHz)</option><option value=\"8\">8 (2447 MHz)</option><option value=\"9\">9 (2452 MHz)</option><option value=\"10\">10 (2457 MHz)</option><option value=\"11\" selected>11 (2462 MHz)</option></select>"
echo "<br><br><label>  Width</label> <select id=\"width\" name=\"width\" id=\"width\"><option value=\"HT20\">20 MHz</option><option value=\"HT40\">40 MHz</option></select><br><br> "
echo "</div>"	
echo "<div class=\"column\" >"
echo "<label>Encryption </label><select id=\"encryption\" name=\"encryption\"><option value=\"psk\">WPA-PSK</option><option value=\"psk2\">WPA2-PSK</option><option value=\"psk2+ccmp\">WPA-PSK/WPA2-PSK Mixed Mode</option></select><br><br> "
echo "<label>TX-Power </label><select id=\"txpower\" name=\"txpower\"><option value=\"23\">High</option><option value=\"20\">Midrange</option><option value=\"15\">Low</option></select><br><br> "
echo "<label>Password </label><input  id=\"passwifi\"    pattern=\"^([0-9,a-z,@,!,#,$,%,^,&,*,_,-,A-Z]{8,20})\" name=\"passwifi\" type=\"password\" class=\"cbi-input-password\" value=\"\" required><div class=\"cbi-button cbi-button-neutral\" title=\"Reveal/hide password\" onclick=\"showpass()\">*</div><br><br>"
echo "<input type=\"checkbox\" name=\"wpsname\" value=\"1\" id=\"switch3\" switch=\"bool\"  />" 
echo "<label for=\"switch3\" data-on-label=\"wps-on\" data-off-label=\"WPS off\"></label></br>"
echo "<input type=\"checkbox\" name=\"hooden\" value=\"1\" id=\"switch4\" switch=\"bool\"  />" 
echo "<label for=\"switch4\" data-on-label=\"Hidden Wi-Fi on\" data-off-label=\"Hidden Wi-Fi off\"></label>"
echo "</div>"
echo "</div>"
echo "<input type=\"submit\" value=\"Save & Apply\">"
echo "<input type=\"reset\" value=\"Reset\"> "
echo "</form> "
echo "</center>"
echo "<script>"
echo "

  document.getElementById(\"modeo\").value =\"$modeoshow\";
  document.getElementById(\"ssid\").value =\"$unameshow\";
  document.getElementById(\"channel\").value =\"$channelshow\";
  document.getElementById(\"passwifi\").value =\"$passshow\";
  document.getElementById(\"width\").value =\"$htmodeshow\";
  document.getElementById(\"encryption\").value =\"$ensshow\";
  document.getElementById(\"wifil\").value =\"$wifilshow\";
  document.getElementById(\"txpower\").value =\"$txpowasli\";
  document.getElementById(\"switch4\").checked =\"$checkihid\";
   document.getElementById(\"switch3\").checked =\"$wpscheck\";

"
echo "</script>"
echo "  <script src=\"/luci-static/vendor/jquery/jquery.min.js\"></script>"
echo "  <script src=\"/luci-static/mac.js\"></script>"
echo "  <script src=\"/luci-static/sweet.js\"></script>"
echo "</body>"
echo "</html>"

}>> /www/luci-static/wificonf.html

channel=`uci show wireless.default_radio0.disabled | sed "s/'//g" `

channelasli=${channel:33}



if [ $channelasli == 1 ]; then
    echo  "0"  > /sys/class/gpio/gpio3/value


else

   echo  "1"  > /sys/class/gpio/gpio3/value


fi



    
