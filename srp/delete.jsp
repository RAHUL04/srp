
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.*" %>
<%!

String name;
String aut;
String select;
String des;
%>
<%

 name=request.getParameter("wpm");


 String uid=(String)session.getAttribute("user");

if(uid==null)
{
	out.println("LOGIN AND PROCEED");
} 

else
{
 Class.forName("com.mysql.jdbc.Driver").newInstance();

// Open new connection.
java.sql.Connection conn;

conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/srp","root","");

Statement ps=conn.createStatement();


// Get the query results and display them.





select="delete from notification where sphone='"+uid+"' and ephone='"+name+"';";
int rel=ps.executeUpdate(select);
out.println(uid + name);












// Close the connection.

ps.close();
conn.close(); }
%>