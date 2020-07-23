<?php






   	$output1 = shell_exec("uci set network.@switch_vlan[0].ports='0 1 2 3 4 6t' "  );
   	$output1 = shell_exec("uci delete network.@switch_vlan[1].ports='0 6t' "  );
   	$output2 = shell_exec("uci commit "  );
   	$output3 = shell_exec("/etc/init.d/network reload "  );
   	$output3 = shell_exec("echo 2 > /www/luci-static/lanwan.txt "  );
	$outputw3 = shell_exec("./../../bashmci/wanasl.sh"  );







	










?>
