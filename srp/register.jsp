<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>SEEKERT-SEEKER AND EXPERT</title>


<link rel="stylesheet" href="css/reset.css" type="text/css" />
<link rel="stylesheet" href="css/styles.css" type="text/css" />
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">


<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/slider.js"></script>
<script type="text/javascript" src="js/superfish.js"></script>

<script type="text/javascript" src="js/custom.js"></script>

<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />

<!--
deiform, a free CSS web template by ZyPOP (zypopwebtemplates.com/)

Download: http://zypopwebtemplates.com/

License: Creative Commons Attribution
//-->
</head>
<body>
<div id="container" class="width">

    <header>
	<div class="width">

    		<h1><a href="/">SEEKERT</a></h1>

		<nav>

    			<ul class="sf-menu dropdown">


        			<li class="selected"><a href="index.html">Home</a></li>

            			<li>

					<a href="examples.html"> CONNECT WITH US</a>

					<ul>
                				<li><a href="three-column.html">LOGIN</a></li>
						<li><a href="one-column.html">SIGN UP</a></li>
                    				<li><a href="#">DASHBOARD</a></li>
                			</ul>

            			</li>



				<li>

					<a href="#">SERVICES</a>

					<ul>
                				<li><a href="#">YOUR LOCATION</a></li>
                   				<li><a href="#">SEARCH A EXPERT</a></li>
                   				<li><a href="#">SEARCH A SERVICE</a></li>
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
	<%!

String name;
String phone;
String address;
String password;

String location;
String exp;

%>
<%


name=request.getParameter("name");
phone=request.getParameter("reg");
password=request.getParameter("pass");
location=request.getParameter("loc");

address=request.getParameter("address");


Class.forName("com.mysql.jdbc.Driver").newInstance();

// Open new connection.
java.sql.Connection conn;

conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/srp","root","");

Statement ps=conn.createStatement();
String query = "INSERT INTO seeker (name,phone,password,address,location) VALUES ('"+name+"','"+phone+"','"+password+"','"+address+"','"+location+"');";

// Get the query results and display them.
int i= ps.executeUpdate(query);
if (i<0)
	out.println("error");
else
	out.println("THANKS");

ps.close();
conn.close();
%>



     <div class="footer-bottom">
            <p>&copy; YourSite 2014. by VILLAN</p>
         </div>
    </footer>
</body>
</html>
