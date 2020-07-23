
    
<?php



  $cell = $_POST['cell'];
  $modecell = "$cell" ;

  
  if ( $modecell == "auto") {
	  
   $outputyu = shell_exec( "./../../bashmci/auto.sh"  );

  }elseif ( $modecell == "4g"){
	  
	     $outputyu = shell_exec( "./../../bashmci/4g.sh"  );

	  
  }elseif ( $modecell == "3g"){
	  
	     $outputyu = shell_exec( "./../../bashmci/3g.sh"  );

	  
  }elseif ( $modecell == "2g"){
	  
	     $outputyu = shell_exec( "./../../bashmci/2g.sh"  );

	  
  }
  






?>
