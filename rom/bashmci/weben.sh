#!/bin/sh
#Komeil Majidi 2019







 rm /www/luci-static/webacs.html
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
echo " <form method=\"post\" onsubmit=\"webacspage()\" action=\"/luci-static/webacs.php\" target=\"hiddenFrame\" > "
echo "Web Access Remote :<br><select name=\"webacs\"><option value=\"weben\">Enable</option><option value=\"webdis\">Disable</option></select>"
echo "<input type=\"submit\" value=\"Save Settings\"> "
echo "</form> "
echo "</center>"
echo "  <script src=\"/luci-static/vendor/jquery/jquery.min.js\"></script>"
echo "  <script src=\"/luci-static/mac.js\"></script>"
echo "  <script src=\"/luci-static/sweet.js\"></script>"
echo "</body>"
echo "</html>"


}>> /www/luci-static/webacs.html







 

    
