<!DOCTYPE html>

<!--
_______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______
\______\\______\\______\\______\\______\\______\\______\\______\\______\\______\\______\\______\\______\\______\
  __                     ____                                    __                                          __      
 _\ \ _      _______    /\  _`\   __          __                /\ \__  __                     _______      _\ \ _   
/\_` ' \    /\______\   \ \ \/\ \/\_\     __ /\_\    ___  __  __\ \ ,_\/\_\    ___    ___     /\______\    /\_` ' \  
\/_>   <_   \/______/_   \ \ \ \ \/\ \  /'_ `\/\ \  /'___\\ \/\ \\ \ \/\/\ \  / __`\/' _ `\   \/______/_   \/_>   <_ 
  /\_, ,_\    /\______\   \ \ \_\ \ \ \/\ \L\ \ \ \/\ \__/ \ \_\ \\ \ \_\ \ \/\ \L\ \\ \/\ \    /\______\    /\_, ,_\
  \/_/\_\/    \/______/    \ \____/\ \_\ \____ \ \_\ \____\ \____/ \ \__\\ \_\ \____/ \_\ \_\   \/______/    \/_/\_\/
     \/_/                   \/___/  \/_/\/___L\ \/_/\/____/\/___/   \/__/ \/_/\/___/ \/_/\/_/                   \/_/ 
                                          /\____/                                                                    
 /\______\\______\\______\\______\\_____  \_/__/   _____\\______\\______\\______\\______\\______\\______\\______\\______\                                                                    
 \/______//______//______//______//______         ______//______//______//______//______//______//______//______//______/
 
///////////////////////////////////////////
//  Created By Dan Perkins @ Digicution  //
//       http://www.digicution.com       //
///////////////////////////////////////////

//-->

<title>Responsive HTML5 Google Maps Current User Location Demo - Digicution</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!-- Include Google Maps API -->
<script src="http://maps.google.com/maps/api/js?sensor=false"></script>

<!-- Include jQuery -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>

<!-- Geolocation JS -->
<script type="text/javascript">
	
	function showMap() {
	 
		//If HTML5 Geolocation Is Supported In This Browser
	    if (navigator.geolocation) {
			    
		    //Use HTML5 Geolocation API To Get Current Position
	        navigator.geolocation.getCurrentPosition(function(position){
		        
		        //Get Latitude From Geolocation API
		        var latitude = position.coords.latitude;
		        
		        //Get Longitude From Geolocation API
		        var longitude = position.coords.longitude;
		        
				
				
		        //Define New Google Map With Lat / Lon
		        var coords = new google.maps.LatLng(latitude, longitude);
		        
		        //Specify Google Map Options
		        var mapOptions = {
		            zoom: 15,
		            center: coords,
		            mapTypeControl: true,
		            navigationControlOptions: {style: google.maps.NavigationControlStyle.SMALL}, mapTypeId: google.maps.MapTypeId.ROADMAP};
		            map = new google.maps.Map(document.getElementById("mapContainer"), mapOptions);
		            var marker = new google.maps.Marker({
		                position: coords,
		                map: map,
		                title: "You Are Here!"
		    		});
		 
				}
			);
			
	    }else {
		    
		    //Otherwise - Gracefully Fall Back If Not Supported... Probably Best Not To Use A JS Alert Though :)
	        alert("Geolocation API is not supported in your browser.");
	    }
	    
	}   
    
	//Once Page Is Populated - Initiate jQuery
	$(document).ready(function() {
		
	  //Show The Map
	  showMap();
	 
	  // When The Viewing Window Is Resized
	  $(window).resize(function() {
		  
		  //CSS Resizes Container So Lets Recall The Map Function
		  showMap();
		  
	  });
	 
	});
        
</script>

<!-- Map Container Styling -->
<style type="text/css">

/* #Full Screen CSS (Desktop)
================================================== */
#mapContainer {
    height: 500px;
    width: 920px;
    border:10px solid #eaeaea;
    margin-top:20px;
    margin-bottom:20px;
}

/* #Tablet (Portrait)
================================================== */
@media only screen and (min-width: 768px) and (max-width: 959px) {
	#mapContainer {
	    height: 500px;
	    width: 708px;
	}
}	
	
/*  #Mobile (Portrait)
================================================== */
@media only screen and (max-width: 767px) {
	#mapContainer {
	    height: 260px;
	    width: 260px;
	}
}	

/* #Mobile (Landscape)
================================================== */
@media only screen and (min-width: 480px) and (max-width: 767px) {
	#mapContainer {
	    height: 400px;
	    width: 400px;
	}
}	



body {
  background: #DDD;
  font-size: 15px;
}

#wrap {
  margin: 50px 100px;
  display: inline-block;
  position: relative;
  height: 60px;
  float: right;
  padding: 0;
  position: relative;
}

input[type="text"] {
  height: 60px;
  font-size: 55px;
  display: inline-block;
  font-family: "Lato";
  font-weight: 100;
  border: none;
  outline: none;
  color: #555;
  padding: 3px;
  padding-right: 60px;
  width: 0px;
  position: absolute;
  top: 0;
  right: 0;
  background: none;
  z-index: 3;
  transition: width .4s cubic-bezier(0.000, 0.795, 0.000, 1.000);
  cursor: pointer;
}
  input[type=password]  {     width: 150px;
    display: block;
    margin-bottom: 10px;
   
       opacity: 0.1;
   }

input[type="text"]:focus:hover {
  border-bottom: 1px solid #BBB;
}

input[type="text"]:focus {
  width: 700px;
  z-index: 1;
  border-bottom: 1px solid #BBB;
  cursor: text;
}

input[type="submit"] {
  height: 67px;
  width: 63px;
  display: inline-block;
  color: red;
  float: right;
  background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAMAAABg3Am1AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAADNQTFRFU1NT9fX1lJSUXl5e1dXVfn5+c3Nz6urqv7+/tLS0iYmJqampn5+fysrK39/faWlp////Vi4ZywAAABF0Uk5T/////////////////////wAlrZliAAABLklEQVR42rSWWRbDIAhFHeOUtN3/ags1zaA4cHrKZ8JFRHwoXkwTvwGP1Qo0bYObAPwiLmbNAHBWFBZlD9j0JxflDViIObNHG/Do8PRHTJk0TezAhv7qloK0JJEBh+F8+U/hopIELOWfiZUCDOZD1RADOQKA75oq4cvVkcT+OdHnqqpQCITWAjnWVgGQUWz12lJuGwGoaWgBKzRVBcCypgUkOAoWgBX/L0CmxN40u6xwcIJ1cOzWYDffp3axsQOyvdkXiH9FKRFwPRHYZUaXMgPLeiW7QhbDRciyLXJaKheCuLbiVoqx1DVRyH26yb0hsuoOFEPsoz+BVE0MRlZNjGZcRQyHYkmMp2hBTIzdkzCTc/pLqOnBrk7/yZdAOq/q5NPBH1f7x7fGP4C3AAMAQrhzX9zhcGsAAAAASUVORK5CYII=) center center no-repeat;
  text-indent: -10000px;
  border: none;
  position: absolute;
  top: 0;
  right: 0;
  z-index: 2;
  cursor: pointer;
  opacity: 0.4;
  cursor: pointer;
  transition: opacity .4s ease;
}

input[type="submit"]:hover {
  opacity: 0.8;
}
    </style>


        <script src="js/prefixfree.min.js"></script>








<link rel="stylesheet" href="css/search.css" type="text/css" />
<link rel="stylesheet" href="css/reset.css" type="text/css" />
<link rel="stylesheet" href="css/styles.css" type="text/css" />
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">


<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/slider.js"></script>
<script type="text/javascript" src="js/superfish.js"></script>
 <script src="js/prefixfree.min.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />

<!--
deiform, a free CSS web template by ZyPOP (zypopwebtemplates.com/)

Download: http://zypopwebtemplates.com/

License: Creative Commons Attribution
//-->
<script>
function search(){
alert("update");

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

	var wpm = document.getElementById('search').value;

	var queryString = "?wpm=" + wpm ;
	ajaxRequest.open("GET", "update.jsp" + queryString, true);
	ajaxRequest.send(null);
	}
</script>
<body>
<div id="container" class="width">

    <header>
	<div class="width">

    		<h1><a href="/">SEEKERT</a></h1>

		<nav>

    			<ul class="sf-menu dropdown">


        			<li class="selected"><a href="index.html">Home</a></li>

            			

					



				<li>

					<a href="#">SERVICES</a>

					<ul>
                				
                   				<li><a href="searchbox.jsp">SEARCH A SEEKER</a></li>
                   				<li><a href="searchroute.jsp">FIND A ROUTE</a></li>
                			</ul>

            			</li>

				<li><a href="#">Contact</a></li>
       			</ul>


			<div class="clear"></div>
    		</nav>
       	</div>

	<div class="clear"></div>


    </header>


    <div id="intro">

	<div class="width">

		<div class="intro-content">
  <body>
<P><strong> YOUR LOCATION IS MARKED WITH RED </STRONG></P>
      <div class="log" width="1500" id="div3" align="left">
<%
String name=(String)session.getAttribute("name");
if(name==null)
{
   String site = new String("seeker.html");
   response.setStatus(response.SC_MOVED_TEMPORARILY);
   response.setHeader("Location", site);
}
else
out.print("Hello "+name);
%>
<a href="logout.jsp"><input type='button' value="LOG-OUT"  /></a>
   
</div>

<div id="bo">
<input id="search" type="textbox" placeholder="UPDATE YOUR Location?">
   <input type="button" value="UPDATE" onClick="return (search());"/>
</div>



	<!-- Map Container -->
    <div id="mapContainer"></div>
    
</body>
<head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <style>
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      #map {
        height: 100%;
      }
.controls {
  margin-top: 10px;
  border: 1px solid transparent;
  border-radius: 2px 0 0 2px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  height: 32px;
  outline: none;
  box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
}

#pac-input {
  background-color: #fff;
  font-family: Roboto;
  font-size: 15px;
  font-weight: 300;
  margin-left: 12px;
  padding: 0 11px 0 13px;
  text-overflow: ellipsis;
  width: 300px;
}

#pac-input:focus {
  border-color: #4d90fe;
}

.pac-container {
  font-family: Roboto;
}

#type-selector {
  color: #fff;
  background-color: #4d90fe;
  padding: 5px 11px 0px 11px;
}

#type-selector label {
  font-family: Roboto;
  font-size: 13px;
  font-weight: 300;
}

    </style>
    <title>Places Searchbox</title>
    <style>
      #target {
        width: 345px;
      }
    </style>
  </head>
  <body>
	
    <input id="pac-input" class="controls" type="text" placeholder="Search Box">
    <div id="map"></div>
    <script>
// This example adds a search box to a map, using the Google Place Autocomplete
// feature. People can enter geographical searches. The search box will return a
// pick list containing a mix of places and predicted search terms.

function initAutocomplete() {
  var map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: -33.8688, lng: 151.2195},
    zoom: 13,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  });

  // Create the search box and link it to the UI element.
  var input = document.getElementById('pac-input');
  var searchBox = new google.maps.places.SearchBox(input);
  map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

  // Bias the SearchBox results towards current map's viewport.
  map.addListener('bounds_changed', function() {
    searchBox.setBounds(map.getBounds());
  });

  var markers = [];
  // [START region_getplaces]
  // Listen for the event fired when the user selects a prediction and retrieve
  // more details for that place.
  searchBox.addListener('places_changed', function() {
    var places = searchBox.getPlaces();

    if (places.length == 0) {
      return;
    }

    // Clear out the old markers.
    markers.forEach(function(marker) {
      marker.setMap(null);
    });
    markers = [];

    // For each place, get the icon, name and location.
    var bounds = new google.maps.LatLngBounds();
    places.forEach(function(place) {
      var icon = {
        url: place.icon,
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(17, 34),
        scaledSize: new google.maps.Size(25, 25)
      };

      // Create a marker for each place.
      markers.push(new google.maps.Marker({
        map: map,
        icon: icon,
        title: place.name,
        position: place.geometry.location
      }));

      if (place.geometry.viewport) {
        // Only geocodes have viewport.
        bounds.union(place.geometry.viewport);
      } else {
        bounds.extend(place.geometry.location);
      }
    });
    map.fitBounds(bounds);
  });
  // [END region_getplaces]
}
  </script>
    <script src="https://maps.googleapis.com/maps/api/js?libraries=places&callback=initAutocomplete"
         async defer></script>
  </body>

</html>