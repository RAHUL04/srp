<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%!String name;
String aut;
String pub;
String des;
String seller;
	String buyer;
	String product;
%>
<%
 String uid=(String)session.getAttribute("user");
  String id=(String)session.getAttribute("name");
  aut=request.getParameter("wpm");
  
aut=request.getParameter("wpm");
  
  Class.forName("com.mysql.jdbc.Driver").newInstance();

// Open new connection.
java.sql.Connection conn;

conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/srp","root","");

Statement ps=conn.createStatement();
String update="Update seeker set location='"+aut+"' where phone='"+uid+"';";
int flag=ps.executeUpdate(update);
if(flag==1)
	out.println("Location UPDATED");
else
	out.println("Location not UPDATED"+aut+uid);
%>