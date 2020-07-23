

<?php







 

 $outputw1 = shell_exec(" echo 1 > /www/luci-static/apndef.txt "  );
	 
	 $outputw1 = shell_exec(" echo 0 > /www/luci-static/checkapn.txt "  );
 	 $outputw2 = shell_exec(" rm /www/luci-static/apnlist.txt "  );
 	 $outputw3 = shell_exec(" echo 'AT+CGDCONT=2' > /dev/ttyUSB3 "  );
 	 $outputw4 = shell_exec(" echo 'AT+CGDCONT=3' > /dev/ttyUSB3 "  );
 	 $outputw5 = shell_exec(" echo 'AT+CGDCONT=4' > /dev/ttyUSB3 "  );
 	 $outputw6 = shell_exec(" echo 'AT+CGDCONT=5' > /dev/ttyUSB3 "  );
 	 $outputw7 = shell_exec(" echo 'AT+CGDCONT=6' > /dev/ttyUSB3 "  );	
     $outputw9 = shell_exec(" ./../../bashmci/apnlist.sh " );
	 $outputw10 = shell_exec(" echo 1 > /www/luci-static/checkapn.txt "  );





	










?>
