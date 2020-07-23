<?php


  $ipv4 = $_POST['ipv4'];
  $netmask = $_POST['netmask'];

  $start = $_POST['start'];
  $limit = $_POST['limit'];
  $lease = $_POST['lease'];
  $rooter = $_POST['rooter'];
  $rooterasli = "$rooter" ;
  
  if ( $rooterasli == "enable" ) {
	  
	$output33 = shell_exec(" echo 1 > /www/luci-static/bank.txt "  );
	$output19 = shell_exec("uci set firewall.@rule[1].src='*' "  );
	$output18 = shell_exec("uci set firewall.@rule[1].dest='lan' "  );
	$output19 = shell_exec("uci set firewall.cfg01e63d.forward='ACCEPT' "  );
	$output20 = shell_exec("uci set firewall.cfg03dc81.network='wan wan6' "  );

  }
  
  
    if ( $rooterasli == "disable" ) {
	  
	$output33 = shell_exec(" echo 0 > /www/luci-static/bank.txt "  );
	$output19 = shell_exec("uci set firewall.@rule[1].src='wan' "  );
	$output18 = shell_exec("uci delete firewall.@rule[1].dest "  );
	$output19 = shell_exec("uci set firewall.cfg01e63d.forward='REJECT' "  );
	$output20 = shell_exec("uci set firewall.cfg03dc81.network='wan wan6 wan1 wan1_6 VPN_PPTP VPN_L2TP' "  );
        
	
  }



   	$output1 = shell_exec("uci set network.lan.ipaddr='$ipv4' "  );
   	$output2 = shell_exec("uci set network.lan.netmask='$netmask' "  );
   	$output3 = shell_exec("uci set dhcp.lan.start='$start' "  );
   	$output3 = shell_exec("uci set dhcp.lan.limit='$limit' "  );
   	$output4 = shell_exec("uci set dhcp.lan.leasetime='$lease' "  );
	$output5 = shell_exec("uci commit"  );
	$outputyu3 = shell_exec( "./../../bashmci/lan.sh"  );







	










?>
