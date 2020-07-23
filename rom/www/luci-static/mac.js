var macelem = document.getElementById("MAC");
macelem.addEventListener('keyup', function() {
    var mac = macelem.value,index=(mac.match(/\:/g)||[]).length;
    if(index < 5 && index*3+2 == mac.length)
    {
        mac += ":";index++;
    }
    macelem.value = mac.substr(0,17);
});

var macelemm = document.getElementById("MAC2");
macelemm.addEventListener('keyup', function() {
    var mac = macelemm.value,index=(mac.match(/\:/g)||[]).length;
    if(index < 5 && index*3+2 == mac.length)
    {
        mac += ":";index++;
    }
    macelemm.value = mac.substr(0,17);
});


var macelemmm = document.getElementById("MAC3");
macelemmm.addEventListener('keyup', function() {
    var mac = macelemmm.value,index=(mac.match(/\:/g)||[]).length;
    if(index < 5 && index*3+2 == mac.length)
    {
        mac += ":";index++;
    }
    macelemmm.value = mac.substr(0,17);
});

var macelemmma = document.getElementById("MAC4");
macelemmma.addEventListener('keyup', function() {
    var mac = macelemmma.value,index=(mac.match(/\:/g)||[]).length;
    if(index < 5 && index*3+2 == mac.length)
    {
        mac += ":";index++;
    }
    macelemmma.value = mac.substr(0,17);
});

var macelemmmb = document.getElementById("MAC5");
macelemmmb.addEventListener('keyup', function() {
    var mac = macelemmmb.value,index=(mac.match(/\:/g)||[]).length;
    if(index < 5 && index*3+2 == mac.length)
    {
        mac += ":";index++;
    }
    macelemmmb.value = mac.substr(0,17);
});

var macelemmmc = document.getElementById("MAC6");
macelemmmc.addEventListener('keyup', function() {
    var mac = macelemmmc.value,index=(mac.match(/\:/g)||[]).length;
    if(index < 5 && index*3+2 == mac.length)
    {
        mac += ":";index++;
    }
    macelemmmc.value = mac.substr(0,17);
});

var macelemmmd = document.getElementById("MAC7");
macelemmmd.addEventListener('keyup', function() {
    var mac = macelemmmd.value,index=(mac.match(/\:/g)||[]).length;
    if(index < 5 && index*3+2 == mac.length)
    {
        mac += ":";index++;
    }
    macelemmmd.value = mac.substr(0,17);
});

var macelemmme = document.getElementById("MAC8");
macelemmme.addEventListener('keyup', function() {
    var mac = macelemmme.value,index=(mac.match(/\:/g)||[]).length;
    if(index < 5 && index*3+2 == mac.length)
    {
        mac += ":";index++;
    }
    macelemmme.value = mac.substr(0,17);
});

var macelemmmf = document.getElementById("MAC9");
macelemmmf.addEventListener('keyup', function() {
    var mac = macelemmmf.value,index=(mac.match(/\:/g)||[]).length;
    if(index < 5 && index*3+2 == mac.length)
    {
        mac += ":";index++;
    }
    macelemmmf.value = mac.substr(0,17);
});


var macelemmmg = document.getElementById("MAC10");
macelemmmg.addEventListener('keyup', function() {
    var mac = macelemmmg.value,index=(mac.match(/\:/g)||[]).length;
    if(index < 5 && index*3+2 == mac.length)
    {
        mac += ":";index++;
    }
    macelemmmg.value = mac.substr(0,17);
});

function showpass() {
  var x = document.getElementById("passwifi");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}

function looloo() {

    
    document.getElementById("loopoo").style.display = "block";
  
}


// When the user clicks the button, open the modal 
 function asliip() {
 var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];
 
  modal.style.display = "block";
  
    var x = document.getElementById("ipv4").value;
  document.getElementById("showip").innerHTML = x;
   document.getElementById("showip").href = "http://"+x;
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}


function redblood () {

   if ( window.location !== window.parent.location )                         
    {                                               
                                                                     
        // The page is in an iFrames                                 
                                                                             
    }                                              
    else {                                                                   
                                                                     
        var r = /\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b/;                    
                                                                     
       // var a = "http://www.example.com/landing.aspx?referrer=10.11.12.13";
                                                                             
var t =  window.location.href.match(r);                                      
window.location.href = "http://"+t;                                  
} 
}



function lannew() {





var d = Math.floor(Math.random() * 1254547890);
           let timerInterval
Swal.fire({
  
  html: 'please wait to configuration be applied',
     imageUrl: '/luci-static/load.gif',
	 imageHeight: 150,
	 width: 400,
	
	
	   showConfirmButton: false,

  timer: 18000,
  onBeforeOpen: () => {
 
    timerInterval = setInterval(() => {
      Swal.getContent().querySelector('b')
        .textContent = Swal.getTimerLeft()
    }, 100)
  },
  onClose: () => {
    clearInterval(timerInterval)
  }
}).then((result) => {
  if (
    /* Read more about handling dismissals below */
    result.dismiss === Swal.DismissReason.timer
  ) {
      
    Swal.fire({
title: 'Your Modem Settings has been changed',
  text: 'you can access modem panel by this ip',
  html: '<button style="  background-color: #ffcc00;border: none;color: white;width: 150px;height:40px;text-align: center;text-decoration: none;border-radius: 12px;font-size: 16px;cursor: pointer;border-radius: 12px;" onclick="gotolan()" >Go to Panel</button></br></br><button style="  background-color: #ffcc00;border: none;color: white;width: 150px;height:40px;text-align: center;text-decoration: none;border-radius: 12px;font-size: 16px;cursor: pointer;border-radius: 12px;" onclick="okfun()" >OK</button>',
   showConfirmButton: false,

 
})
  }
})



}





function apn() {
	
	var usernameee = document.getElementById("apnuname").value ;
var passs = document.getElementById("apnpass").value ;
 if (usernameee.trim() == '') {
	 
	 document.getElementById("apnuname").value = "-";
	 
 }
  if (passs.trim() == '') {
	 
	 	 document.getElementById("apnpass").value = "-";
 }

var d = Math.floor(Math.random() * 1254547890);
           let timerInterval
Swal.fire({
  
  html: 'please wait to configuration be applied',
     imageUrl: '/luci-static/load.gif',
	 imageHeight: 150,
	 width: 400,
	
	
	   showConfirmButton: false,

  timer: 8000,
  onBeforeOpen: () => {
 
    timerInterval = setInterval(() => {
      Swal.getContent().querySelector('b')
        .textContent = Swal.getTimerLeft()
    }, 100)
  },
  onClose: () => {
    clearInterval(timerInterval)
  }
}).then((result) => {
  if (
    /* Read more about handling dismissals below */
    result.dismiss === Swal.DismissReason.timer
  ) {
      
     window.location.href = "/luci-static/pntest.html?var="+d;                                  

  }
})



}



function gotolan() {

      var x = document.getElementById("ipv4").value;
  window.parent.location= "http://"+x;

}

function okfun() {

  location.reload();

}

function macnew() {
	
	
	 var pist = document.getElementById('MAC').value;
  var pist2 = document.getElementById('MAC2').value;
  var pist3 = document.getElementById('MAC3').value;
  var pist4 = document.getElementById('MAC4').value;
  var pist5 = document.getElementById('MAC5').value;
  var pist6 = document.getElementById('MAC6').value;
  var pist7 = document.getElementById('MAC7').value;
  var pist8 = document.getElementById('MAC8').value;
  var pist9 = document.getElementById('MAC9').value;
  var pist10 = document.getElementById('MAC10').value;
  var pisto = document.getElementById('yoyo').value;
  

  if ( pisto == "black" || pisto == "white" ) {
    if ( pist.length > 0 && pist.length < 17 ) {
  
      
				   Swal.fire(
				  'Invalid MAC Address',
				  'please check your MAC Addresses',
				  'error'
					 )
  
  }else if ( pist2.length > 0 && pist2.length < 17 ) {
  
    
				   Swal.fire(
				  'Invalid MAC Address',
				  'please check your MAC Addresses',
				  'error'
					 )
  
  }else if ( pist3.length > 0 && pist3.length < 17 ) {
  
				   Swal.fire(
				  'Invalid MAC Address',
				  'please check your MAC Addresses',
				  'error'
					 )
  
  }else if ( pist4.length > 0 && pist4.length < 17 ) {
  
				   Swal.fire(
				  'Invalid MAC Address',
				  'please check your MAC Addresses',
				  'error'
					 )
  
  }else if ( pist5.length > 0 && pist5.length < 17 ) {
				   Swal.fire(
				  'Invalid MAC Address',
				  'please check your MAC Addresses',
				  'error'
					 )
  
  }else if ( pist6.length > 0 && pist6.length < 17 ) {
  
				   Swal.fire(
				  'Invalid MAC Address',
				  'please check your MAC Addresses',
				  'error'
					 )
  
  }else if ( pist7.length > 0 && pist7.length < 17 ) {
  
				   Swal.fire(
				  'Invalid MAC Address',
				  'please check your MAC Addresses',
				  'error'
					 )
  }else if ( pist8.length > 0 && pist8.length < 17 ) {
  
				   Swal.fire(
				  'Invalid MAC Address',
				  'please check your MAC Addresses',
				  'error'
					 )
  }else if ( pist9.length > 0 && pist9.length < 17 ) {
  
				   Swal.fire(
				  'Invalid MAC Address',
				  'please check your MAC Addresses',
				  'error'
					 )
  
  
  }else if ( pist10.length > 0 && pist10.length < 17 ) {
  
				   Swal.fire(
				  'Invalid MAC Address',
				  'please check your MAC Addresses',
				  'error'
					 )
	   
	}else {
					  document.getElementById("macnewiframee").action = "/luci-static/macsub.php";
				  var d = Math.floor(Math.random() * 1254547890);
				   let timerInterval
			   Swal.fire({
		  
			   html: 'please wait to configuration be applied',
				 imageUrl: '/luci-static/load.gif',
				 imageHeight: 150,
				 width: 400,
			
			
			   showConfirmButton: false,

			   timer: 8000,
			  onBeforeOpen: () => {
		 
			   timerInterval = setInterval(() => {
				  Swal.getContent().querySelector('b')
				   .textContent = Swal.getTimerLeft()
			  }, 100)
			},
			onClose: () => {
			  clearInterval(timerInterval)
		   }
				  }).then((result) => {
			   if (
			/* Read more about handling dismissals below */
			  result.dismiss === Swal.DismissReason.timer
			   ) {
			  console.log("ok");
			   }
			   })

	
	
	}
  
  }else {
  
  
				  document.getElementById("macnewiframee").action = "/luci-static/macsub.php";
				  var d = Math.floor(Math.random() * 1254547890);
				   let timerInterval
			   Swal.fire({
		  
			   html: 'please wait to configuration be applied',
				 imageUrl: '/luci-static/load.gif',
				 imageHeight: 150,
				 width: 400,
			
			
			   showConfirmButton: false,

			   timer: 8000,
			  onBeforeOpen: () => {
		 
			   timerInterval = setInterval(() => {
				  Swal.getContent().querySelector('b')
				   .textContent = Swal.getTimerLeft()
			  }, 100)
			},
			onClose: () => {
			  clearInterval(timerInterval)
		   }
				  }).then((result) => {
			   if (
			/* Read more about handling dismissals below */
			  result.dismiss === Swal.DismissReason.timer
			   ) {
			  console.log("ok");
			   }
			   })

  }
  
  



}


function wificonf() {

var d = Math.floor(Math.random() * 1254547890);
           let timerInterval
Swal.fire({
  
  html: 'please wait to configuration be applied',
     imageUrl: '/luci-static/load.gif',
	 imageHeight: 150,
	 width: 400,
	
	   showConfirmButton: false,

  timer: 8000,
  onBeforeOpen: () => {
 
    timerInterval = setInterval(() => {
      Swal.getContent().querySelector('b')
        .textContent = Swal.getTimerLeft()
    }, 100)
  },
  onClose: () => {
    clearInterval(timerInterval)
  }
}).then((result) => {
  if (
    /* Read more about handling dismissals below */
    result.dismiss === Swal.DismissReason.timer
  ) {
  console.log("ok");
  }
})


}




function webacspage() {

var d = Math.floor(Math.random() * 1254547890);
           let timerInterval
Swal.fire({
  
  html: 'please wait to configuration be applied',
     imageUrl: '/luci-static/load.gif',
	 imageHeight: 150,
	 width: 400,
	
	   showConfirmButton: false,

  timer: 8000,
  onBeforeOpen: () => {
 
    timerInterval = setInterval(() => {
      Swal.getContent().querySelector('b')
        .textContent = Swal.getTimerLeft()
    }, 100)
  },
  onClose: () => {
    clearInterval(timerInterval)
  }
}).then((result) => {
  if (
    /* Read more about handling dismissals below */
    result.dismiss === Swal.DismissReason.timer
  ) {
   console.log("ok");
  }
})


}


function wanset() {
var polo =  document.getElementById("wifil").value;

if ( polo == "dhcp" ) {
 
document.getElementById("v4ad").style.display = "none"
document.getElementById("v4net").style.display = "none"
document.getElementById("v4ge").style.display = "none"
document.getElementById("v6ad").style.display = "none"
document.getElementById("v6get").style.display = "none"
document.getElementById("v6st").style.display = "none"
document.getElementById("v44ad").style.display = "none"
document.getElementById("v44net").style.display = "none"
document.getElementById("v44ge").style.display = "none"
document.getElementById("v66ad").style.display = "none"
document.getElementById("v66get").style.display = "none"
document.getElementById("v66st").style.display = "none"

document.getElementById("v4ad").value = ""
document.getElementById("v4net").value = ""
document.getElementById("v4ge").value = ""
document.getElementById("v6ad").value = ""
document.getElementById("v6get").value = ""
document.getElementById("v6st").value = ""
}

if ( polo == "static" ) {
 
 document.getElementById("v4ad").style.display = ""
document.getElementById("v4net").style.display = ""
document.getElementById("v4ge").style.display = ""
document.getElementById("v6ad").style.display = ""
document.getElementById("v6get").style.display = ""
document.getElementById("v6st").style.display = ""
 document.getElementById("v44ad").style.display = ""
document.getElementById("v44net").style.display = ""
document.getElementById("v44ge").style.display = ""
document.getElementById("v66ad").style.display = ""
document.getElementById("v66get").style.display = ""
document.getElementById("v66st").style.display = ""

}

}
