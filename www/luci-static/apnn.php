

<?php



  $apnname = $_POST['apnname'];
  $apnuname = $_POST['apnuname'];
  $apnpass = $_POST['apnpass'];
  $proto = $_POST['proto'];
  $aut = $_POST['aut'];






	  $outputw1 = shell_exec(" echo 0 > /www/luci-static/apndef.txt "  );
 	 $outputw1 = shell_exec(" echo -e  '$apnname,$apnuname,$apnpass,$proto,$aut \n'   >> /www/luci-static/apnlist.txt"  );
 	 $outputw1 = shell_exec(" ./../../bashmci/apnlist.sh "  );





	










?>
