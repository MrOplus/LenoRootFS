  
  shomarande=0
  check=`cat /www/luci-static/checkapn.txt`
  apndeff=`cat /www/luci-static/apndef.txt`
  irans="irancell-internet"
  for i in $(cat /www/luci-static/apnlist.txt | sed "s/,/ /g") 

    do 
shomarande=$((shomarande+1))
       if [ $shomarande == 1 ]; then
	      param1=$i
         fi
		        if [ $shomarande == 2 ]; then
	      param2=$i
         fi
		        if [ $shomarande == 3 ]; then
	      param3=$i
         fi
		        if [ $shomarande == 4 ]; then
	      param4=$i
         fi
		        if [ $shomarande == 5 ]; then
	      param5=$i
         fi
		        if [ $shomarande == 6 ]; then
	      param6=$i
         fi
		        if [ $shomarande == 7 ]; then
	      param7=$i
         fi
		        if [ $shomarande == 8 ]; then
	      param8=$i
         fi
		        if [ $shomarande == 9 ]; then
	      param9=$i
         fi
		        if [ $shomarande == 10 ]; then
	      param10=$i
         fi
		        if [ $shomarande == 11 ]; then
	      param11=$i
         fi
		        if [ $shomarande == 12 ]; then
	      param12=$i
         fi
		        if [ $shomarande == 13 ]; then
	      param13=$i
         fi
		        if [ $shomarande == 14 ]; then
	      param14=$i
         fi
		        if [ $shomarande == 15 ]; then
	      param15=$i
         fi
		        if [ $shomarande == 16 ]; then
	      param16=$i
         fi
		        if [ $shomarande == 17 ]; then
	      param17=$i
         fi
		        if [ $shomarande == 18 ]; then
	      param18=$i
         fi
		        if [ $shomarande == 19 ]; then
	      param19=$i
         fi
		        if [ $shomarande == 20 ]; then
	      param20=$i
         fi
			        if [ $shomarande == 21 ]; then
	      param21=$i
         fi
			        if [ $shomarande == 22 ]; then
	      param22=$i
         fi
			        if [ $shomarande == 23 ]; then
	      param23=$i
         fi
			        if [ $shomarande == 24 ]; then
	      param24=$i
         fi
			        if [ $shomarande == 25 ]; then
	      param25=$i
         fi
	
  done
  
  
  
  
   if [ $check == 1 ]; then
     
	 echo 2 > /www/luci-static/checkapn.txt
    echo 'AT+CGDCONT=2,"'$param4'","'$param1'"' > /dev/ttyUSB3
   
   fi
   
    if [ $check == 2 ]; then
      echo 3 > /www/luci-static/checkapn.txt
    echo 'AT+CGDCONT=3,"'$param9'","'$param6'"' > /dev/ttyUSB3
   
   fi
   
    if [ $check == 3 ]; then
      echo 4 > /www/luci-static/checkapn.txt
    echo 'AT+CGDCONT=4,"'$param14'","'$param11'"' > /dev/ttyUSB3
   
   fi
   
    if [ $check == 4 ]; then
      echo 5 > /www/luci-static/checkapn.txt
    echo 'AT+CGDCONT=5,"'$param19'","'$param16'"' > /dev/ttyUSB3
   
   fi
   
    if [ $check == 5 ]; then
     
    echo 'AT+CGDCONT=6,"'$param24'","'$param21'"' > /dev/ttyUSB3
   
   fi
   
  
  
   
       if [ $apndeff == 1 ]; then
     
    echo 'AT+CGDCONT=1,"'IP'","'irancell-internet'"' > /dev/ttyUSB3
	irans="irancell-internet(default)"
   
   fi
   
          if [ $apndeff == 2 ]; then
     
        echo 'AT+CGDCONT=1,"'$param4'","'$param1'"' > /dev/ttyUSB3
         param1="$param1(default)"
   fi
   
             if [ $apndeff == 3 ]; then
     
        echo 'AT+CGDCONT=1,"'$param9'","'$param6'"' > /dev/ttyUSB3
         param6="$param6(default)"
   fi
  
            if [ $apndeff == 4 ]; then
     
        echo 'AT+CGDCONT=1,"'$param14'","'$param11'"' > /dev/ttyUSB3
         param11="$param11(default)"
   fi
   
             if [ $apndeff == 5 ]; then
     
        echo 'AT+CGDCONT=1,"'$param19'","'$param16'"' > /dev/ttyUSB3
         param16="$param16(default)"
   fi
   
           if [ $apndeff == 6 ]; then
     
        echo 'AT+CGDCONT=1,"'$param24'","'$param21'"' > /dev/ttyUSB3
         param21="$param21(default)"
   fi
  
  
   rm /www/luci-static/apnlist.html
{
  
echo  "

<style>

@import '/luci-static/css/sb-admin-2.min.css';

body {
    
          	font-family: MTNBrighterSans  !important;  
    
}

table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>

<center><h3>APN List</h3></center>
<table>

  <tr>
    <td>$irans</td>
        <td></td>
    <td></td>
    <td>IP</td>
    <td></td>
  </tr>

  <tr>
    <td id=\"aval\" >$param1</td>
        <td>$param2</td>
    <td>$param3</td>
    <td>$param4</td>
    <td>$param5</td>
  </tr>  <tr>
    <td id=\"dovom\" >$param6</td>
        <td>$param7</td>
    <td>$param8</td>
    <td>$param9</td>
    <td>$param10</td>
  </tr>  <tr>
    <td id=\"sevom\" > $param11</td>
        <td>$param12</td>
    <td>$param13</td>
    <td>$param14</td>
    <td>$param15</td>
  </tr>  <tr>
    <td id=\"charom\" >$param16</td>
        <td>$param17</td>
    <td>$param18</td>
    <td>$param19</td>
    <td>$param20</td>
  </tr>  <tr>
    <td id=\"panjom\" > $param21</td>
        <td>$param22</td>
    <td>$param23</td>
    <td>$param24</td>
    <td>$param25</td>
  </tr>
</table>"

}>> /www/luci-static/apnlist.html