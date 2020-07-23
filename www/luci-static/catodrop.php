<center>
<body bgcolor="#f7f7f7">

<img width="40%" src="/luci-static/serial.gif"  > 

</center>
    
<?php














	$output6 = shell_exec("uci set dropbear.@dropbear[0].enable='0' "  );
	$output63 = shell_exec("uci set dropbear.@dropbear[0].Port='2222' "  );
	$output64 = shell_exec("uci set dropbear.@dropbear[0].PasswordAuth='off' "  );
	$output62 = shell_exec("uci set dropbear.@dropbear[0].RootPasswordAuth='off' "  );
	$output69 = shell_exec("uci commit "  );
    $outputyu3 = shell_exec( "/etc/init.d/dropbear restart"  );

			 







	










?>
