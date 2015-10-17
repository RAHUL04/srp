<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.*" %>
<%!

String name;
String select;
String loc;
%>
<%

 name=request.getParameter("wpm");


 
 String uid=(String)session.getAttribute("user");
  String id=(String)session.getAttribute("name");


 Class.forName("com.mysql.jdbc.Driver").newInstance();

// Open new connection.
java.sql.Connection conn;

conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/srp","root","");

Statement ps=conn.createStatement();


// Get the query results and display them.



name="^"+name;
String select="Select * from seeker where phone='"+uid+"';";
ResultSet rel=ps.executeQuery(select);
if(rel==null)
out.println("WE DONT HAVE");
else
{


	
while(rel.next())
{
 loc="^"+rel.getString(5);
 out.println(loc);
		
}
	

 select="Select * from expert where (address REGEXP '"+loc+"')and(name REGEXP '"+name+"');";

ResultSet rell=ps.executeQuery(select);
try{
while(rell.next())
{
	out.println("|NAME :"+rell.getString(1));
		out.println();
	out.println("|OCCUPATION :"+rell.getString(3));
		out.println();
		
		out.println("|EXPERIENCE :"+rell.getString(4));
		out.println("|ADDRESS :"+rell.getString(5));
		out.println("|PHONE-NO :"+rell.getString(6));
	
		out.println("<br>");
}
}
catch(SQLException se){
      //Handle errors for JDBC
      se.printStackTrace();
   }






ps.close();
conn.close(); 
}
%>

