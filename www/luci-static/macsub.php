

<?php

  $mode = $_POST['mode'];
  $modeasli = "$mode" ;
  $mac1 = $_POST['mac1'];
  $mac2 = $_POST['mac2'];
  $mac3 = $_POST['mac3'];
  $mac4 = $_POST['mac4'];
  $mac5 = $_POST['mac5'];
  $mac6 = $_POST['mac6'];
  $mac7 = $_POST['mac7'];
  $mac8 = $_POST['mac8'];
  $mac9 = $_POST['mac9'];
  $mac10 = $_POST['mac10'];

 
 if ( $modeasli == "black") {

	$dellll = shell_exec("uci delete wireless.default_radio0.macfilter "  );
	$output1 = shell_exec("uci delete wireless.default_radio0.maclist "  );
	$black = shell_exec("uci set wireless.default_radio0.macfilter='deny' "  );
	$output1 = shell_exec("uci add_list wireless.default_radio0.maclist='$mac1' "  );
	$output2 = shell_exec("uci add_list wireless.default_radio0.maclist='$mac2' "  );
	$output3 = shell_exec("uci add_list wireless.default_radio0.maclist='$mac3' "  );
	$output4 = shell_exec("uci add_list wireless.default_radio0.maclist='$mac4' "  );
	$output5 = shell_exec("uci add_list wireless.default_radio0.maclist='$mac5' "  );
	$output6 = shell_exec("uci add_list wireless.default_radio0.maclist='$mac6' "  );
	$output7 = shell_exec("uci add_list wireless.default_radio0.maclist='$mac7' "  );
	$output8 = shell_exec("uci add_list wireless.default_radio0.maclist='$mac8' "  );
	$output9 = shell_exec("uci add_list wireless.default_radio0.maclist='$mac9' "  );
	$output10 = shell_exec("uci add_list wireless.default_radio0.maclist='$mac10' "  );
	$output11 = shell_exec("uci commit"  );
	$output12 = shell_exec("/etc/init.d/network reload"  );
	$outputkin8 = shell_exec("./../../bashmci/black.sh"  );

}else if ( $modeasli == "white" ) {
	
	$dellllll = shell_exec("uci delete wireless.default_radio0.macfilter "  );
	$output13 = shell_exec("uci delete wireless.default_radio0.maclist "  );
	$white = shell_exec("uci set wireless.default_radio0.macfilter='allow' "  );
	$output14 = shell_exec("uci add_list wireless.default_radio0.maclist='$mac1' "  );
	$output21 = shell_exec("uci add_list wireless.default_radio0.maclist='$mac2' "  );
	$output31 = shell_exec("uci add_list wireless.default_radio0.maclist='$mac3' "  );
	$output41 = shell_exec("uci add_list wireless.default_radio0.maclist='$mac4' "  );
	$output51 = shell_exec("uci add_list wireless.default_radio0.maclist='$mac5' "  );
	$output61 = shell_exec("uci add_list wireless.default_radio0.maclist='$mac6' "  );
	$output71 = shell_exec("uci add_list wireless.default_radio0.maclist='$mac7' "  );
	$output81 = shell_exec("uci add_list wireless.default_radio0.maclist='$mac8' "  );
	$output91 = shell_exec("uci add_list wireless.default_radio0.maclist='$mac9' "  );
	$output101 = shell_exec("uci add_list wireless.default_radio0.maclist='$mac10' "  );
	$output112 = shell_exec("uci commit"  );
	$output121 = shell_exec("/etc/init.d/network reload"  );
	$outputkon8 = shell_exec("./../../bashmci/white.sh"  );
	
	
}else if ($modeasli == "disable") {
	
	$dellllll22 = shell_exec("uci delete wireless.default_radio0.macfilter "  );
	$output13778 = shell_exec("uci delete wireless.default_radio0.maclist "  );
	$output11q2 = shell_exec("uci commit"  );
	$output12r1 = shell_exec("/etc/init.d/network reload"  );
		$outputkodin8 = shell_exec("./../../bashmci/dis.sh"  );
	
}



	










?>
