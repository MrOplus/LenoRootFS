<?php






   	$output1 = shell_exec("uci delete wireless.default_radio0.disabled='1' "  );
   	$output2 = shell_exec("uci commit "  );
   	$output3 = shell_exec("/etc/init.d/network reload "  );
   	$output4 = shell_exec("echo 1 > /www/luci-static/wifitoggle.txt "  );
  	 $outputyu = shell_exec( "./../../bashmci/wifiasl.sh"  );








	










?>
