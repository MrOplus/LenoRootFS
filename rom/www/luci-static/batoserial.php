<center>
<body bgcolor="#f7f7f7">

<img width="40%" src="/luci-static/serial.gif"  > 

</center>
    
<?php


  $serialnum = $_POST['seriool'];








   	$output1 = shell_exec(" echo $serialnum > /noremove/serialnumberasli.txt "  );
    $output7 = shell_exec(" echo 1 > /noremove/enacs.txt "  );
	$output5 = shell_exec("cp /noremove/serialnumberasli.txt /www/luci-static/ "  );
	$output65 = shell_exec("cd /noremove/"  );
		$output67 = shell_exec("ls /noremove/"  );
	$output6 = shell_exec("uci set easycwmp.@device[0].serial_number='$serialnum' "  );
    $output64 = shell_exec("uci set easycwmp.@local[0].enable='1' "  );
	$output69 = shell_exec("uci commit "  );
    $outputyu3 = shell_exec( "/etc/init.d/easycwmpd restart"  );
 $outputyu3 = shell_exec( " echo  '0'  > /sys/class/gpio/gpio3/value "  );
			 







	










?>
