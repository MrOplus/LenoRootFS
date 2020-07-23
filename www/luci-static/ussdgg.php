


    <script language="javascript" type="text/javascript">
   var d = Math.floor(Math.random() * 1254547890);
      
            window.location.href = "/luci-static/ussdfi.html?var="+d;
    
    </script>

<?php

       $requ = $_POST['requ'];

	$dellll = shell_exec("rm /www/luci-static/requ.txt"  );
	$dellll = shell_exec("echo $requ > /www/luci-static/requ.txt"  );

	
	$dellll = shell_exec("rm /www/luci-static/ussdcheck.txt"  );
	$dellll = shell_exec("echo 4 > /www/luci-static/ussdcheck.txt"  );
	$dellll = shell_exec("./../../ussd.sh"  );




	










?>
