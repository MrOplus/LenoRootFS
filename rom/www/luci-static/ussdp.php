


    <script language="javascript" type="text/javascript">
   var d = Math.floor(Math.random() * 1254547890);
      
            window.location.href = "/luci-static/ussdfi.html?var="+d;
    
    </script>

<?php

       $ramzz = $_POST['ramzz'];

	$dellll = shell_exec("rm /www/luci-static/ramz.txt"  );
	$dellll = shell_exec("echo $ramzz > /www/luci-static/ramz.txt"  );

	
	$dellll = shell_exec("rm /www/luci-static/ussdcheck.txt"  );
	$dellll = shell_exec("echo 2 > /www/luci-static/ussdcheck.txt"  );
	$dellll = shell_exec("./../../ussd.sh"  );




	










?>
