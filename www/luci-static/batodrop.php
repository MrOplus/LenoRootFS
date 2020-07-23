<center>
<body bgcolor="#f7f7f7">

<img width="40%" src="/luci-static/serial.gif"  > 

</center>
    
<?php














	$output6 = shell_exec("uci set dropbear.@dropbear[0].enable='1' "  );
	$output63 = shell_exec("uci set dropbear.@dropbear[0].Port='22' "  );
	$output64 = shell_exec("uci set dropbear.@dropbear[0].PasswordAuth='on' "  );
	$output62 = shell_exec("uci delete dropbear.@dropbear[0].RootPasswordAuth "  );
	$output69 = shell_exec("uci commit "  );
    $outputyu3 = shell_exec( "/etc/init.d/dropbear restart"  );

			 







	










?>
