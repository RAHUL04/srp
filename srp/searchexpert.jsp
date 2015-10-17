<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>SEEKERT-SEEKER AND EXPERT</title>




        <style>
      /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
      @import url(http://fonts.googleapis.com/css?family=Lato:100,300,400,700);
@import url(https://raw.github.com/FortAwesome/Font-Awesome/master/docs/assets/css/font-awesome.min.css);
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
#bo {
  margin: 50px 100px;
  display: inline-block;
  position: relative;
  height: 60px;
  float: left;
  padding: 0;
  font-size: 25px5px;
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







<link rel="stylesheet" href="css/rating.css" type="text/css" />
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
	ajaxRequest.open("GET", "searchexpert.jsp" + queryString, true);
	ajaxRequest.send(null);
	}
	function order(){


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
		

			alert(ajaxRequest.responseText);
		}
	}

	var wpm = document.getElementById('ping').value;

	var queryString = "?wpm=" + wpm ;
	ajaxRequest.open("GET", "order.jsp" + queryString, true);
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
                			<li><a href="personlocation.jsp">YOUR LOCATION</a></li>
                   			
                   				<li><a href="searchservice.jsp">SEARCH A SERVICE</a></li>
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

    <div id="wrap">

  <strong>SEARCH EXPERT:<input type="text" id="search" onKeyup=search()></strong>
 <br>
 <br>
 <br>
 
<strong>PLACE ORDER:<input type="text" id="ping" onblur=order()
 placeholder="PLACE ORDER"></strong>
</div>

        <script src="js/index.js"></script>
 </body>
</div>
     <div id="bo" align="center" ><font size="10px"></font>
</div>
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

</html>