#!/bin/sh
#Komeil Majidi 2019

#echo $! > /tmp/lan.pid # male zire ejraee ha toyee startup masalan zire ejra background signal masalan
proto=`uci show network.wan.proto | sed  s/\'//g `
ipv4ad=`uci show network.wan.ipaddr | sed  s/\'//g `
ipv4net=` uci show network.wan.netmask | sed  s/\'//g `
ipv6ad=` uci show network.wan.ip6addr | sed  s/\'//g `
ipv4get=` uci show network.wan.gateway | sed  s/\'//g `
ipv6et=` uci show network.wan.ip6gw | sed  s/\'//g `
checken=`cat /www/luci-static/lanwan.txt`
 
if [ $checken == 1 ]; then 

   
     enid="enable"


fi



if [ $checken == 2 ]; then 

   
     enid="disable"


fi


protoasli="${proto:18}"
ipv4adasli="${ipv4ad:19}"
ipv4netasli="${ipv4net:20}"
ipv6adasli="${ipv6ad:20}"
ipv4getasli="${ipv4get:20}"
ipv6etasli="${ipv6et:18}"


 rm /www/luci-static/newwan.html
{


echo "<!DOCTYPE html>"
echo "<html>"
echo "<body onload=\"wanset()\">"
echo "<meta name=\"viewport\" content=\"initial-scale=1.0\">"
echo "<link rel=\"stylesheet\" href=\"/luci-static/mac.css\">"
echo "<link rel=\"stylesheet\" href=\"/luci-static/wificonf.css\">"
echo "<link rel=\"stylesheet\" href=\"/luci-static/bootstrap/cascade.css\">"
echo "<meta http-equiv=\"cache-control\" content=\"no-cache\" />"
echo "<center>"
echo "<iframe name=\"hiddenFrame\" width=\"0\" height=\"0\" border=\"0\" style=\"display: none;\"></iframe>"
echo "<form method=\"post\" onsubmit=\"wificonf()\" action=\"/luci-static/wansetting.php\" target=\"hiddenFrame\">"
echo "<label>Switch Lan to WAN (port1) </label><select  id=\"switchltw\" name=\"switchltw\"><option value=\"enable\" selected>Enable</option><option value=\"disable\">Disable </option></select><br><br>"
echo "<label>WAN Protocol </label><select onchange=\"wanset()\" id=\"wifil\" name=\"proto\"><option value=\"dhcp\" selected>DHCP Client</option><option value=\"static\">Static Address </option></select><br><br>"
echo "<label id=\"v44ad\">IPv4 address </label><input id=\"v4ad\" name=\"ipv4ad\" type=\"text\" value=\"$ipv4adasli\"  title=\"IP Format : ext 192.168.100.100\"   pattern=\"^([0-9]{1,3}\.){3}[0-9]{1,3}$\"  /><br><br> "
echo "<label id=\"v44net\"  >IPv4 netmask </label><input id=\"v4net\" name=\"ipv4net\" type=\"text\" value=\"$ipv4netasli\" title=\"IP Format : ext 225.225.225.225\"  pattern=\"^([0-9]{1,3}\.){3}[0-9]{1,3}$\"  /><br><br> "
echo "<label id=\"v44ge\" >IPv4 gateway </label><input id=\"v4ge\" name=\"ipv4get\" type=\"text\" value=\"$ipv4getasli\" title=\"IP Format : ext 192.168.100.100\"  pattern=\"^([0-9]{1,3}\.){3}[0-9]{1,3}$\"  /><br><br> "
echo "<label id=\"v66ad\" >IPv6 address </label><input id=\"v6ad\" name=\"ipv6ad\" type=\"text\" value=\"$ipv6adasli\"  /><br><br>" 
echo "<label id=\"v66get\" >IPv6 gateway </label><input id=\"v6get\" name=\"ipv6get\" type=\"text\" value=\"$ipv6etasli\"  /><br><br>" 
echo "<label id=\"v66st\" >IPv6 suffix </label><input id=\"v6st\" name=\"ipv6su\" type=\"text\" value=\"1\"  /><br><br>" 
echo "<input type=\"submit\" value=\"Save & Apply\">"
echo "<input type=\"reset\" value=\"Reset\">" 
echo "</form>" 
echo "</center>"
echo "<script>"
echo "

  document.getElementById(\"switchltw\").value =\"$enid\";
  document.getElementById(\"wifil\").value =\"$protoasli\";

"
echo "</script>"
echo "  <script src=\"/luci-static/vendor/jquery/jquery.min.js\"></script>"
echo "  <script src=\"/luci-static/mac.js\"></script>"
echo "  <script src=\"/luci-static/sweet.js\"></script>"
echo "</body>"
echo "</html>"

}>> /www/luci-static/newwan.html


  
   






    
