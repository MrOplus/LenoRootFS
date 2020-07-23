#!/bin/sh
#Komeil Majidi 2019

#echo $! > /tmp/lan.pid # male zire ejraee ha toyee startup masalan zire ejra background signal masalan
ssid=`uci show wireless.default_radio0.ssid | sed  s/\'//g `
pass=`uci show wireless.default_radio0.key | sed  s/\'//g `
enc=`uci show wireless.default_radio0.encryption | sed  s/\'//g `
mode=`uci show wireless.default_radio0.mode | sed  s/\'//g `


unameshow="${ssid:29}"
passshow="${pass:28}"
ensshow="${enc:35}"
modeshow="${mode:29}" 






 rm /www/luci-static/wificonf.html
{
echo "<!DOCTYPE html>"
echo "<html>"
echo "<body onload=\"redblood()\" >"
echo "<meta name=\"viewport\" content=\"initial-scale=1.0\">"
echo "<link rel=\"stylesheet\" href=\"/luci-static/mac.css\">"
echo "<meta http-equiv=\"cache-control\" content=\"no-cache\" />"
echo "<center>"
echo  "<form method=\"post\" onsubmit=\"looloo()\" action=\"/luci-static/wificonf.php\">" 
echo  "<br><br>"
echo  "Wi-Fi Enable/Disable :<select name=\"wifil\"><option value=\"enable\" >Enable</option><option value=\"disable\" selected>Disable</option></select><br><br>"
echo  "<br><br> Mode :<select name=\"modeo\"><option value=\"bgn\">b/g/n</option><option value=\"bg\">b/g</option></select>"
echo  "Channel: <select id=\"channel\"  name=\"channel\"><option value=\"1\">1 (2412 MHz)</option><option value=\"2\">2 (2417 MHz)</option><option value=\"3\">3 (2422 MHz)</option><option value=\"4\">4 (2427 MHz)</option><option value=\"5\">5 (2432 MHz)</option><option value=\"6\">6 (2437 MHz)</option><option value=\"7\">7 (2442 MHz)</option><option value=\"8\">8 (2447 MHz)</option><option value=\"9\">9 (2452 MHz)</option><option value=\"10\">10 (2457 MHz)</option><option value=\"11\" selected>11 (2462 MHz)</option></select>"
echo "Width:<select name=\"width\" id=\"width\"><option value=\"20\">20 MHz</option><option value=\"40\">40 MHz</option></select>"
echo "<br><br>"
echo "Wi-Fi Mode :<select id=\"modew\" name=\"modew\"><option value=\"ap\">Access Point</option><option value=\"sta\">Client</option></select>"
echo  "SSID :<input id=\"ssid\" name=\"ssid\" type=\"text\" value=\"$unameshow\"  /> <input style=\"width:20px; height:20px\" name=\"hooden\" value=\"1\" type=\"checkbox\" value=\"hidden\" >Hidden SSID<br><br>"
echo "Encryption :<select id=\"encryption\" name=\"encryption\"><option value=\"psk\">WPA-PSK</option><option value=\"psk2\">WPA2-PSK</option><option value=\"psk-mixed\">WPA-PSK/WPA2-PSK Mixed Mode</option></select>"
echo  "Key: <input id=\"passwifi\" name=\"passwifi\" type=\"password\" value=\"$passshow\"    /> <input style=\"width:20px; height:20px\" id=\"showpad\" type=\"checkbox\" onclick=\"showpass()\">Show Password<br><br>"
echo "<input type=\"submit\" value=\"Save Settings\">"
echo "<img id=\"loopoo\" src=\"\" >" 
echo "</form> "
echo "</center>"
echo "<script>"
echo "function filed() {
  document.getElementById(\"modew\").value =\"$modeshow\";
  document.getElementById(\"encryption\").value =\"$ensshow\";
}"
echo "</script>"
echo  "<script src=\"/luci-static/mac.js\"></script>"
echo "</body>"
echo "</html>"

}>> /www/luci-static/wificonf.html

./../wifimac.sh

    
