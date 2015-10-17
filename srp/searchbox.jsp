<!DOCTYPE html>
<html>
  <head>
    <title>Geocoding service</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <style>

      #map {
          height: 500px;
    width: 920px;
    border:10px solid #eaeaea;
    margin-top:20px;
    margin-bottom:20px;
	  position:center;
      }
	  #bo {
  
  font-size: 25px5px;
 color:white;
}
#panel {
  position:center;
  top: 10px;
  left: 25%;
  z-index: 5;
  background-color: #fff;
  padding: 5px;
  border: 1px solid #999;
  font-size: 25px5px;
  text-align: center;
  opacity:0.5;
}
#seeker {
  position:center;
  top: 10px;
  left: 25%;
  z-index: 5;
  background-color: #fff;
  padding: 5px;
  border: 1px solid #999;
  text-align: center;
  opacity:0.5;
}

/**
 * Provide the following styles for both ID and class, where ID represents an
 * actual existing "panel" with JS bound to its name, and the class is just
 * non-map content that may already have a different ID with JS bound to its
 * name.
 */

#panel, .panel {
  font-family: 'Roboto','sans-serif';
  line-height: 30px;
  padding-left: 10px;
}

#panel select, #panel input, .panel select, .panel input {
  font-size: 15px;
}

#panel select, .panel select {
  width: 100%;
}

#panel i, .panel i {
  font-size: 12px;
}

    </style>
	<link rel="stylesheet" href="css/search.css" type="text/css" />
<link rel="stylesheet" href="css/reset.css" type="text/css" />
<link rel="stylesheet" href="css/styles.css" type="text/css" />
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/notification.css" type="text/css" />

<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/slider.js"></script>
<script type="text/javascript" src="js/superfish.js"></script>
 <script src="js/prefixfree.min.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />

  <script>
  
function notify(){


	var ajaxRequest;  // The variable that makes Ajax possible!



	try{
		// Opera 8.0+, Firefox, Safari
		ajaxRequest = new XMLHttpRequest();

	} catch (e){
		// Internet Explorer Browsers
		try{
			ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			try{
				ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e){
				// Something went wrong
				alert("Your browser broke!");

				return false;
			}
		}
	}
	// Create a function that will receive data sent from the server
	ajaxRequest.onreadystatechange = function(){

		if(ajaxRequest.readyState == 4){
		
	var ajaxDisplay = document.getElementById('boo');

			ajaxDisplay.innerHTML = ajaxRequest.responseText;
			  if(boo.style.display == 'block')
          boo.style.display = 'none';
       else
          boo.style.display = 'block';
	
		}
	}

	


	ajaxRequest.open("GET", "notify.jsp" , true);
	ajaxRequest.send(null);
	}
function count(){


	var ajaxRequest;  // The variable that makes Ajax possible!



	try{
		// Opera 8.0+, Firefox, Safari
		ajaxRequest = new XMLHttpRequest();

	} catch (e){
		// Internet Explorer Browsers
		try{
			ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			try{
				ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e){
				// Something went wrong
				alert("Your browser broke!");

				return false;
			}
		}
	}
	// Create a function that will receive data sent from the server
	ajaxRequest.onreadystatechange = function(){

		if(ajaxRequest.readyState == 4){
		
	var ajaxDisplay = document.getElementById('txt');

			ajaxDisplay.innerHTML = ajaxRequest.responseText;
	
		}
	}

	


	ajaxRequest.open("GET", "count.jsp" , true);
	ajaxRequest.send(null);
	}

	</script>
	</head>
<body  onload="count()">
<div id="container" class="width">

    <header>
	<div class="width">

    		<h1><a href="/">SEEKERT</a></h1>

		<nav>

    			<ul class="sf-menu dropdown">


        			<li class="selected"><a href="index.html">Home</a></li>

            			<li>


            			</li>



				<li>

					<a href="#">SERVICES</a>

					<ul>
                				<li><a href="personlocation.jsp">YOUR LOCATION</a></li>
                   				<li><a href="searchbox.jsp">SEARCH A SEEKER </a></li>
								<li><a href="searchroute.jsp">FIND A ROUTE </a></li>
                   			
                			</ul>

            			</li>

						<li>
												<a href="#"><div class="log" width="1500" id="div3" align="center">
											<%
														String name=(String)session.getAttribute("name");
														if(name==null)
														{
															String site = new String("expert.html");
															response.setStatus(response.SC_MOVED_TEMPORARILY);
															response.setHeader("Location", site);
														}
														else
														out.print("Hello "+name);
											%>
											</div></a>
						</li>
						<li>
										<a href="logout.jsp"><input type='button' value="LOG-OUT"  /></a>
						</li>
<li	<a href="#"><div class="icon" align="center"><img src="images.png" alt="none" width="100%" height="100%"   onclick="notify()"/><div id="txt" ">10</div></div></a></li>
       		


			<div class="clear"></div>
    		</nav>
       	</div>

	<div class="clear"></div>


    </header> 
	 <div id="boo" style="width: 2000px;" style="font-size:200px">

</div>
	 <div id="bo" align="center" >
	SEEKER'S LOCATION
 

  
   </div>
   <input id="seeker" type="textbox" placeholder="SEEKER LOCATION ?"onKeyup=search()>
    <div id="panel">
      <input id="address" type="textbox" placeholder="What're you looking for ?">
      <input id="submit" type="button" value="search">
	  
    </div>
    <div id="map"></div>
	
    <script>
	function search(){


	var ajaxRequest;  // The variable that makes Ajax possible!



	try{
		// Opera 8.0+, Firefox, Safari
		ajaxRequest = new XMLHttpRequest();

	} catch (e){
		// Internet Explorer Browsers
		try{
			ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			try{
				ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e){
				// Something went wrong
				alert("Your browser broke!");

				return false;
			}
		}
	}
	// Create a function that will receive data sent from the server
	ajaxRequest.onreadystatechange = function(){

		if(ajaxRequest.readyState == 4){
			var ajaxDisplay = document.getElementById('bo');

			ajaxDisplay.innerHTML = ajaxRequest.responseText;
	
		}
	}

	var wpm = document.getElementById('seeker').value;

	var queryString = "?wpm=" + wpm ;
	ajaxRequest.open("GET", "searchseeker.jsp" + queryString, true);
	ajaxRequest.send(null);
	}

function initMap() {
 
     var myLatlng1 = new google.maps.LatLng(53.65914, 0.072050);

     var mapOptions = {
         zoom: 10,
         center: myLatlng1,
         mapTypeId: google.maps.MapTypeId.ROADMAP
     };
     var map = new google.maps.Map(document.getElementById('map'),
     mapOptions);

     if (navigator.geolocation) {
         navigator.geolocation.getCurrentPosition(function (position) {
             initialLocation = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
             map.setCenter(initialLocation);
         });
     }
  var geocoder = new google.maps.Geocoder();

  document.getElementById('submit').addEventListener('click', function() {
    geocodeAddress(geocoder, map);
  });
}

function geocodeAddress(geocoder, resultsMap) {
  var address = document.getElementById('address').value;
  geocoder.geocode({'address': address}, function(results, status) {
    if (status === google.maps.GeocoderStatus.OK) {
      resultsMap.setCenter(results[0].geometry.location);
      var marker = new google.maps.Marker({
        map: resultsMap,
        position: results[0].geometry.location
      });
    } else {
      alert('Geocode was not successful for the following reason: ' + status);
    }
  });
}

    </script>
    <script src="https://maps.googleapis.com/maps/api/js?signed_in=true&callback=initMap"
        async defer></script>
  </body>
</html>