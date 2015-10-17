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

  input[type=password]  {     width: 150px;
    display: block;
    margin-bottom: 10px;
   
       opacity:100;
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




    </style>


        <script src="js/prefixfree.min.js"></script>






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

	var wpm = document.getElementById('del').value;

	var queryString = "?wpm=" + wpm ;
	ajaxRequest.open("GET", "searchnotify.jsp" + queryString, true);
	ajaxRequest.send(null);
	}
function del(){
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
	
		}
	}

	var wpm = document.getElementById('del').value;
alert(wpm);
	var queryString = "?wpm=" + wpm ;
	ajaxRequest.open("GET", "delete.jsp" + queryString, true);
	ajaxRequest.send(null);
	}
       

        
</script>
<body >
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
                			<li><a href="spersonlocation.jsp">YOUR LOCATION</a></li>
                   				<li><a href="edit.jsp">EDIT PROFILE</a></li>
                   				<li><a href="searchexpert.jsp">SEARCH A EXPERT</a></li>
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
  <caption><b>DELETET A REQUEST</b></caption>
<input type="number" id="del"  onKeyup=search() onblur=del() />
 <div id="bo">
 </div>
 <div id="boo">
 </div>
   <tr align="center">

<td><form method="POST" action="editpro.jsp" name="form1">

    <table border="2" align="center" cellpadding="7">
<caption><b>EDIT INFO (ENTER YOUR EXISTING VALUE )</b></caption>
   
        <tr>

            <td><strong>Name:</strong></td>

   
            <td>
 
                <input type="text" name="name"/>
            </td>
     
        </tr>

      <tr>

            <td><strong>PHONE number:</strong></td>

   
            <td>
 
                <input type="number" name="reg" />
            </td>
     
        </tr>
     

       
        

       <tr>
            <td><strong>Password:</strong></td>
            <td>
                
                <input type="password" name="pass"/>
            </td>
        </tr>
        <tr>
            <td><strong>Password:</strong></td>
            <td>
                
                <input type="password" name="r_pass"/>
            </td>
        </tr>	
      
        <tr align="center">

            <td>
                <!--Submit Button, Function verify need to be called when we process
                submit button-->
                  <input type="submit" value="Submit" onClick="return (verify());"/>
            </td>

            <td>
                <!--Reset Button-->
                    <input type="Reset" value="Reset" />
            </td>
        </tr>
</form>



        <script src="js/index.js"></script>
 </body>
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
<div id="comment" >
</div>
     <div id="bo" align="center" ><font size="10px"></font>
</div>
</html>