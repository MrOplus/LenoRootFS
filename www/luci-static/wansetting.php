

<?php



  $switchh = $_POST['switchltw'];
  $switchll = "$switchh" ;

  $protoo = $_POST['proto'];
  $protoasli = "$protoo";
  
  $ipv4ad = $_POST['ipv4ad'];
  $ipv4net = $_POST['ipv4net'];
  $ipv4get = $_POST['ipv4get'];
  $ipv6ad = $_POST['ipv6ad'];
  $ipv6get = $_POST['ipv6get'];



 


 
 if ( $switchll == "disable" ) {
	 
   	$output1 = shell_exec("uci set network.@switch_vlan[0].ports='0 1 2 3 4 6t' "  );
   	$output1 = shell_exec("uci delete network.@switch_vlan[1].ports='' "  );
   	$output2 = shell_exec("uci commit "  );
   	$output3 = shell_exec("/etc/init.d/network reload "  );
   	$output3 = shell_exec("echo 2 > /www/luci-static/lanwan.txt "  );
	
	
		 if ( $protoasli == "dhcp") {
		 $output34 = shell_exec("uci set network.wan.proto='dhcp' "  );
		 $output74 = shell_exec("uci set network.wan.ipaddr='' "  );
		 $output94 = shell_exec("uci set network.wan.netmask='' "  );
		 $output454 = shell_exec("uci set network.wan.ip6addr='' "  );
		 $output04 = shell_exec("uci set network.wan.gateway='' "  );
		 $output324 = shell_exec("uci set network.wan.ip6gw='' "  );
		 	$output2 = shell_exec("uci commit "  );
		  	$output3 = shell_exec("/etc/init.d/network restart "  );
			$outputw3 = shell_exec("./../../bashmci/wanasl.sh"  );
		
}

	 if ( $protoasli == "static") {
		 $output34 = shell_exec("uci set network.wan.proto='static' "  );
		 $output74 = shell_exec("uci set network.wan.ipaddr='$ipv4ad' "  );
		 $output94 = shell_exec("uci set network.wan.netmask='$ipv4net' "  );
		 $output454 = shell_exec("uci set network.wan.ip6addr='$ipv6ad' "  );
		 $output04 = shell_exec("uci set network.wan.gateway='$ipv4get' "  );
		 $output324 = shell_exec("uci set network.wan.ip6gw='$ipv6get' "  );
		 	$output2 = shell_exec("uci commit "  );
		  	$output3 = shell_exec("/etc/init.d/network restart "  );
			$outputw43 = shell_exec("./../../bashmci/wanasl.sh"  );
		
}

}
 



 if ( $switchll == "enable" ) {
	   	$output1 = shell_exec("uci set network.@switch_vlan[0].ports='1 2 3 4 6t' "  );
   	$output1 = shell_exec("uci set network.@switch_vlan[1].ports='0 6t' "  );
   
  
   	$output3 = shell_exec("echo 1 > /www/luci-static/lanwan.txt "  );
	
	 if ( $protoasli == "dhcp") {
		 $output34 = shell_exec("uci set network.wan.proto='dhcp' "  );
		 $output74 = shell_exec("uci set network.wan.ipaddr='' "  );
		 $output94 = shell_exec("uci set network.wan.netmask='' "  );
		 $output454 = shell_exec("uci set network.wan.ip6addr='' "  );
		 $output04 = shell_exec("uci set network.wan.gateway='' "  );
		 $output324 = shell_exec("uci set network.wan.ip6gw='' "  );
		 	$output2 = shell_exec("uci commit "  );
		  	$output3 = shell_exec("/etc/init.d/network restart "  );
			$outputw3 = shell_exec("./../../bashmci/wanasl.sh"  );
		
}

	 if ( $protoasli == "static") {
		 $output34 = shell_exec("uci set network.wan.proto='static' "  );
		 $output74 = shell_exec("uci set network.wan.ipaddr='$ipv4ad' "  );
		 $output94 = shell_exec("uci set network.wan.netmask='$ipv4net' "  );
		 $output454 = shell_exec("uci set network.wan.ip6addr='$ipv6ad' "  );
		 $output04 = shell_exec("uci set network.wan.gateway='$ipv4get' "  );
		 $output324 = shell_exec("uci set network.wan.ip6gw='$ipv6get' "  );
		 	$output2 = shell_exec("uci commit "  );
		  	$output3 = shell_exec("/etc/init.d/network restart "  );
			$outputw43 = shell_exec("./../../bashmci/wanasl.sh"  );
		
}

 }

	










?>
