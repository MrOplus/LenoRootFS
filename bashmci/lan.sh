#!/bin/sh
#Komeil Majidi 2019
/etc/init.d/firewall restart
/etc/init.d/odhcpd restart
/etc/init.d/network restart
#echo $! > /tmp/lan.pid # male zire ejraee ha toyee startup masalan zire ejra background signal masalan
ipv4=`uci show network.lan.ipaddr | sed  s/\'//g `
netmask=`uci show network.lan.netmask | sed  s/\'//g `
start=`uci show dhcp.lan.start | sed  s/\'//g `
limit=`uci show dhcp.lan.limit | sed  s/\'//g `
lease=`uci show dhcp.lan.leasetime | sed  s/\'//g `
shomare=0
shomaree=0
ipv4="${ipv4:19}"
netmask="${netmask:20}"
start="${start:15}"
limit="${limit:15}" 
lease="${lease:19}"
bank=`cat /www/luci-static/bank.txt`
echo $ipv4
echo $netmask
echo $start
echo $limit
echo $lease

if [ $bank = 0 ]; then 

   bankcheck="disable"

fi

if [ $bank = 1 ]; then 

   bankcheck="enable"

fi

  for i in $(echo $netmask | sed 's/\./,/g'  | sed "s/,/ /g") 

    do  
     shomare=$((shomare+1))
       if [ $shomare = 4 ]; then 
	    akharenetmask=$i
    fi
	 
  done
  
    for i in $(echo $ipv4 | sed 's/\./,/g'  | sed "s/,/ /g") 

    do  
     shomaree=$((shomaree+1))
       if [ $shomaree = 1 ]; then 
	    ip1=$i
    fi
	
	  if [ $shomaree = 2 ]; then 
	    ip2=$i
    fi
	
	  if [ $shomaree = 3 ]; then 
	    ip3=$i
    fi
	 
	 ipv4nes="$ip1.$ip2.$ip3"
  done

echo $akharenetmask

if [ $akharenetmask != 0 ]; then 
  
  akharenetmask=$((akharenetmask+1))
  start=$akharenetmask
  
fi   
 rm /www/luci-static/lannnew.html
{
echo "<!DOCTYPE html>"
echo "<html>"
echo "<body onload=\"redblood()\" >"
echo "<meta name=\"viewport\" content=\"initial-scale=1.0\">"
echo "<link rel=\"stylesheet\" href=\"/luci-static/mac.css\">"
echo "<meta http-equiv=\"Cache-Control\" content=\"no-cache, no-store, must-revalidate\" />"
echo "<meta http-equiv=\"Pragma\" content=\"no-cache\" />"
echo "<meta http-equiv=\"Expires\" content=\"0\" />"
echo "<center>"
echo "<iframe name=\"hiddenFrame\" width=\"0\" height=\"0\" border=\"0\" style=\"display: none;\"></iframe>"
echo "<form onsubmit=\"lannew()\" method=\"post\" action=\"/luci-static/lan.php\"  target=\"hiddenFrame\"> "
echo "<label>IPV4 Gateway:</label><input id=\"ipv4\" name=\"ipv4\" type=\"text\" value=\"$ipv4\" title=\"IP Format : ext 192.168.100.100\"  pattern=\"^([0-9]{1,3}\.){3}[0-9]{1,3}$\"  /></br>"
echo "<label>IPV4 Netmask:</label><input id=\"netmask\" name=\"netmask\" type=\"text\" value=\"$netmask\" title=\"IP Format : ext 225.225.225.225\"  pattern=\"^([0-9]{1,3}\.){3}[0-9]{1,3}$\"  /></br>"
echo "<label>Start:</label><input id=\"startip\"   value=\"$ipv4nes\"  readonly/>.<input id=\"start\" name=\"start\" type=\"number\" value=\"$start\"  /></br> "
echo "<label>Limit:</label><input id=\"limitip\"   value=\"$ipv4nes\"  readonly/>.<input id=\"limit\" name=\"limit\" type=\"number\" value=\"$limit\"  /></br> "
echo "<label>Lease Time:</label><input id=\"lease\" name=\"lease\" type=\"text\" value=\"$lease\"  /></br> "
echo "<label>Router Mode (Ping LAN to LAN) </label><select id=\"rooter\" name=\"rooter\"><option value=\"disable\">Disable</option><option value=\"enable\">Enable</option></select><br><br>"
echo "<input type=\"submit\" value=\"Save & Apply\"> "
echo "<input type=\"reset\" value=\"Reset\"> "

echo "</form>"
echo "<script>"
echo "

  document.getElementById(\"rooter\").value =\"$bankcheck\";


"
echo "</script>"
echo "<iframe id=\"lanframe\" src=\"/cgi-bin/luci/admin/network/dhcp\" width=\"100%\" height=\"300px\" frameBorder=\"0\" scrolling=\"no\"> </iframe>"
echo "</center>"
echo "  <script src=\"/luci-static/vendor/jquery/jquery.min.js\"></script>"
echo "  <script src=\"/luci-static/mac.js\"></script>"
echo "  <script src=\"/luci-static/sweet.js\"></script>"
echo "</body>"
echo "</html>"

}>> /www/luci-static/lannnew.html

 

    
