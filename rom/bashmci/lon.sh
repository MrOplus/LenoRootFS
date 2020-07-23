#!/bin/sh
#Komeil Majidi 2019

#echo $! > /tmp/lan.pid # male zire ejraee ha toyee startup masalan zire ejra background signal masalan
uname=`uci show easycwmp.@local[0].username | sed  s/\'//g `
pass=`uci show easycwmp.@local[0].password | sed  s/\'//g `
url=`uci show easycwmp.@acs[0].url | sed  s/\'//g `
unameac=`uci show easycwmp.@acs[0].username | sed  s/\'//g `
passac=`uci show easycwmp.@acs[0].password | sed  s/\'//g `
per=`uci show  easycwmp.@acs[0].periodic_interval | sed  s/\'//g `

unameshow="${uname:28}"
passshow="${pass:28}"
urlshow="${url:23}"
unameacshow="${unameac:28}" 
passacshow="${passac:28}"
pershow="${per:37}"



 rm /www/luci-static/kma.html
{
echo "<!DOCTYPE html>"
echo "<html>"
echo "<body onload=\"redblood()\" >"
echo	"<meta name=\"viewport\" content=\"initial-scale=1.0\">"
echo		"<link rel=\"stylesheet\" href=\"/luci-static/bootstrap/cascade.css?v=git-18.228.31946-f64b152\">"
echo		"<link rel=\"stylesheet\" media=\"only screen and (max-device-width: 854px)\" href=\"/luci-static/bootstrap/mobile.css?v=git-18.228.31946-f64b152\" type=\"text/css\" />"
echo		"<link rel=\"shortcut icon\" href=\"/luci-static/bootstrap/favicon.ico\">"
echo		"<script src=\"/luci-static/resources/cbi.js?v=git-18.228.31946-f64b152\"></script>"
echo		"<script src=\"/luci-static/resources/xhr.js?v=git-18.228.31946-f64b152\"></script>"
echo       "<meta http-equiv=\"cache-control\" content=\"no-cache\" />"
echo "<center>"
echo " <form method=\"post\" action=\"/luci-static/tr069.php\"> "
echo "Active-Deactive:<br><select name=\"tract\"><option value=\"enable\">TR-069</option><option value=\"disable\">Disable</option></select><br><br>"
echo "ACS URL:<br><input style=\"width:400px !important\" value=\"$urlshow\" type=\"text\" name=\"aacsurl\" ><br><br>"
echo "ACS UserName:<br><input type=\"text\" value=\"$unameacshow\" name=\"acsunam\" ><br><br>"
echo "ACS UserPassword:<br><input type=\"password\" value=\"secure\" name=\"acspass\" ><br><br>"
echo "Enable Periodic Inform:<br><select name=\"period\"><option value=\"disable\">Disable</option><option value=\"enable\">Enable</option></select><br><br>"
echo "periodic Inform Interval:<br><input value=\"$pershow\" type=\"text\" name=\"periodic\" ><br><br>"
echo "Connection Request User Name:<br><input value=\"$unameshow\" type=\"text\" name=\"conunam\" value=\"autofill\" ><br><br>"
echo "Connection Request Password:<br><input value=\"secure\" type=\"password\" name=\"conpass\" value=\"autofill\" ><br><br>"
echo "<input type=\"submit\" value=\"Save Settings\">"
echo "</form> "
echo "</center>"


echo "</body>"
echo "</html>"

}>> /www/luci-static/kma.html

 

    
