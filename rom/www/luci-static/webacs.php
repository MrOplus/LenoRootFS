
    
<?php


  $webacs = $_POST['webacs'];
  $pingg = $_POST['pingg'];
 





   	$output1 = shell_exec(" uci set firewall.@rule[10].enabled='$webacs' "  );
   	$output15 = shell_exec(" uci set firewall.@rule[1].enabled='$pingg' "  );

if ( $webacs == 0 ) {

   	$output15 = shell_exec(" uci set firewall.@rule[11].enabled='1'"  );

}

if ( $webacs == 1 ) {

   	$output15 = shell_exec(" uci set firewall.@rule[11].enabled='0'"  );

}
	$output5 = shell_exec("uci commit"  );
	$output6 = shell_exec("/etc/init.d/firewall restart"  );
		     $outputyu3 = shell_exec( "./../../bashmci/webdis.sh"  );
			 

 
 








	










?>
