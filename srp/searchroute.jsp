<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <title>Directions service (complex)</title>
	
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
    <style>
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      #map {
         height: 500px;
    width: 920px;
    border:10px solid #eaeaea;
    margin-top:20px;
    margin-bottom:20px;
	  position:center;
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
    
	 
    <div id="panel">
    <b>Start: </b>
   <input id="start" type="textbox" placeholder="What're you looking for ?">
    <b>End: </b>
    <input id="end" type="textbox" placeholder="What're you looking for ?">
	 <input id="submit" type="button" value="search">
    </div>
    <div id="map"></div>
    &nbsp;
    <div id="warnings_panel" style="width:100%;height:10%;text-align:center"></div>
    <script>
function initMap() {
  var markerArray = [];

  // Instantiate a directions service.
  var directionsService = new google.maps.DirectionsService;

  // Create a map and center it on Manhattan.
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

  // Create a renderer for directions and bind it to the map.
  var directionsDisplay = new google.maps.DirectionsRenderer({map: map});

  // Instantiate an info window to hold step text.
  var stepDisplay = new google.maps.InfoWindow;

  // Display the route between the initial start and end selections.
  calculateAndDisplayRoute(
      directionsDisplay, directionsService, markerArray, stepDisplay, map);
  // Listen to change events from the start and end lists.
  var onChangeHandler = function() {
    calculateAndDisplayRoute(
        directionsDisplay, directionsService, markerArray, stepDisplay, map);
  };

    document.getElementById('submit').addEventListener('click',onChangeHandler);
}

function calculateAndDisplayRoute(directionsDisplay, directionsService,
    markerArray, stepDisplay, map) {
  // First, remove any existing markers from the map.
  for (var i = 0; i < markerArray.length; i++) {
    markerArray[i].setMap(null);
  }

  // Retrieve the start and end locations and create a DirectionsRequest using
  // WALKING directions.
  directionsService.route({
    origin: document.getElementById('start').value,
    destination: document.getElementById('end').value,
    travelMode: google.maps.TravelMode.WALKING
  }, function(response, status) {
    // Route the directions and pass the response to a function to create
    // markers for each step.
    if (status === google.maps.DirectionsStatus.OK) {
      document.getElementById('warnings_panel').innerHTML =
          '<b>' + response.routes[0].warnings + '</b>';
      directionsDisplay.setDirections(response);
      showSteps(response, markerArray, stepDisplay, map);
    } else {
      window.alert('Directions request failed due to ' + status);
    }
  });
}

function showSteps(directionResult, markerArray, stepDisplay, map) {
  // For each step, place a marker, and add the text to the marker's infowindow.
  // Also attach the marker to an array so we can keep track of it and remove it
  // when calculating new routes.
  var myRoute = directionResult.routes[0].legs[0];
  for (var i = 0; i < myRoute.steps.length; i++) {
    var marker = markerArray[i] = markerArray[i] || new google.maps.Marker;
    marker.setMap(map);
    marker.setPosition(myRoute.steps[i].start_location);
    attachInstructionText(stepDisplay, marker, myRoute.steps[i].instructions);
  }
}

function attachInstructionText(stepDisplay, marker, text, map) {
  google.maps.event.addListener(marker, 'click', function() {
    // Open an info window when the marker is clicked on, containing the text
    // of the step.
    stepDisplay.setContent(text);
    stepDisplay.open(map, marker);
  });
}

    </script>
    <script src="https://maps.googleapis.com/maps/api/js?signed_in=true&callback=initMap"
        async defer></script>
  </body>
</html>