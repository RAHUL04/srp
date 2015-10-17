<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
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

<%!String name;
String aut;
String pub;
String des;
String seller;
	String buyer;
	String product;
	String update;
%>

<%
 String uid=(String)session.getAttribute("user");
  String id=(String)session.getAttribute("name");
  name=request.getParameter("name");
  aut=request.getParameter("reg");
  des=request.getParameter("pass");
  
  

  
  Class.forName("com.mysql.jdbc.Driver").newInstance();

// Open new connection.
java.sql.Connection conn;

conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/srp","root","");

Statement ps=conn.createStatement();
if(name != null)
 update="Update seeker set name='"+name+"' where phone='"+uid+"';";
int flag=ps.executeUpdate(update);
if(flag==1)
	out.println(" UPDATED");
if(aut != "null")
 update="Update seeker set phone='"+aut+"' where phone='"+uid+"';";
 flag=ps.executeUpdate(update);
if(flag==1)
	out.println(" UPDATED");
if(des != "null")
 update="Update seeker set password='"+des+"' where phone='"+uid+"';";
flag=ps.executeUpdate(update);
if(flag==1)
	out.println(" UPDATED");
%>

     <div class="footer-bottom">
            <p>&copy; YourSite 2014. by VILLAN</p>
         </div>
    </footer>
</body>
</html>
