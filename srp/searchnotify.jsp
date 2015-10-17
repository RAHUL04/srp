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





	

	

 select="Select * from notification where (sphone REGEXP '"+uid+"')and(ephone REGEXP '"+name+"');";

ResultSet rell=ps.executeQuery(select);
try{
while(rell.next())
{
	out.println("|NAME :"+rell.getString(1));
		out.println();
	out.println("|OCCUPATION :"+rell.getString(3));
		out.println();
		
		
	
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

