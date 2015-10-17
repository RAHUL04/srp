<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.*" %>
<%!

String name;
String select;
%>
<%

 name=request.getParameter("wpm");


 



 Class.forName("com.mysql.jdbc.Driver").newInstance();

// Open new connection.
java.sql.Connection conn;

conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/srp","root","");

Statement ps=conn.createStatement();


// Get the query results and display them.



name="^"+name;


 select="Select * from seeker where (location REGEXP '"+name+"');";

ResultSet rel=ps.executeQuery(select);
try{
while(rel.next())
{
	out.println("|NAME :"+rel.getString(1));
		out.println();
				out.println("|PHONE-NO :"+rel.getString(2));
	
		out.println("|ADDRESS :"+rel.getString(4));
	
	
		out.println("<br>");
}
}
catch(SQLException se){
      //Handle errors for JDBC
      se.printStackTrace();
   }






ps.close();
conn.close(); 

%>

