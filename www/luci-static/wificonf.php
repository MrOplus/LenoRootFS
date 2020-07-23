

<?php



  $wifil = $_POST['wifil'];
  $wifilasli = "$wifil" ;



  $ssid = $_POST['ssid'];
  $encryption = $_POST['encryption'];
  
  $passwifi = $_POST['passwifi'];
  $hooden = $_POST['hooden'];
  $channel = $_POST['channel'];
  $modeo = $_POST['modeo'];
  $width = $_POST['width'];
  $wpsname = $_POST['wpsname'];
  $txpower = $_POST['txpower'];

   $modeoasli = "$modeo" ;
 


 
 if ( $wifilasli == "disable") {
	 
 	 $outputw1 = shell_exec("echo 2 > /www/luci-static/wifitoggle.txt"  );
     $outputw4 = shell_exec("uci set wireless.default_radio0.disabled='1' "  );
	$output112 = shell_exec("uci commit"  );
	$output121 = shell_exec("/etc/init.d/network reload"  );
	$outputkon8 = shell_exec("./../../bashmci/wifiasl.sh"  );

}
 



 if ( $wifilasli == "enable" ) {
	 $outputw4554 = shell_exec("uci delete wireless.default_radio0.disabled='1' "  );
	 $outputw1 = shell_exec("echo 1 > /www/luci-static/wifitoggle.txt"  );
	 $outputw14 = shell_exec("echo $wpsname > /www/luci-static/jjjjjjjjjjjjjjjjjjjjjjjjj.txt"  );

		 $outputw158 = shell_exec(" uci set wireless.radio0.txpower='$txpower' "  );
		 $outputw158 = shell_exec("uci set wireless.default_radio0.wps_pushbutton='$wpsname' "  );
 $outputw158 = shell_exec(" uci set wireless.default_radio0.wpa_disable_eapol_key_retries='$wpsname' "  );
	if ( $modeoasli == "bg" ) {
		 
		    $outputw = shell_exec(" uci delete wireless.radio0.htmode  "  );
		    $outputw = shell_exec("uci set wireless.default_radio0.ssid='$ssid' "  );
    $outputw = shell_exec(" uci set wireless.radio0.htmode='$width'  "  );

    $outputw5 = shell_exec("uci set wireless.default_radio0.encryption='$encryption' "  );
  
    $outputw6 = shell_exec("uci set  wireless.default_radio0.key='$passwifi' "  );
       
        $outputw8 = shell_exec("uci set wireless.default_radio0.hidden='$hooden' "  );
        $outputw8 = shell_exec("uci set wireless.radio0.channel='$channel' "  );
        


 	$outputw1 = shell_exec("uci commit"  );
 	$outputw1 = shell_exec("echo 0 >  /www/luci-static/bgn.txt"  );
	$outputw2 = shell_exec("/etc/init.d/network reload"  );
    $outputw3 = shell_exec("./../../bashmci/wifiasl.sh"  );
		
		
		
	} else {
	  

$outputw = shell_exec(" uci set wireless.radio0.htmode='$width'  "  );
    $outputw = shell_exec("uci set wireless.default_radio0.ssid='$ssid' "  );
    
    $outputw5 = shell_exec("uci set wireless.default_radio0.encryption='$encryption' "  );
  
    $outputw6 = shell_exec("uci set  wireless.default_radio0.key='$passwifi' "  );
   
        $outputw8 = shell_exec("uci set wireless.default_radio0.hidden='$hooden' "  );
        $outputw8 = shell_exec("uci set wireless.radio0.channel='$channel' "  );
        


 	$outputw1 = shell_exec("uci commit"  );
	$outputw1 = shell_exec("echo 1 >  /www/luci-static/bgn.txt"  );
	$outputw2 = shell_exec("/etc/init.d/network reload"  );
    $outputw3 = shell_exec("./../../bashmci/wifiasl.sh"  );

	

	}
	
}


	










?>
