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


String select="Select * from notification where ephone='"+uid+"';";

ResultSet rel=ps.executeQuery(select);
if(rel==null)
out.println("WE DONT HAVE");
else
{
	out.println("~~~~~~~~~NOTIFICATIONS~~~~~~~~</br>");
	
	
while(rel.next())
{
		String phone=rel.getString(1);
	
		Statement p=conn.createStatement();
		String selectt="Select * from seeker where phone='"+phone+"';";
		ResultSet re=p.executeQuery(selectt);
			
		while(re.next())
		{
		out.println("NAME"+" - "+re.getString(1));
		out.println(" | MOBILE-NO"+" - "+re.getString(2));
		out.println(" | ADDRESS"+" - "+re.getString(4));
		out.println(" | LOCATION"+" - "+re.getString(5)+"</br>");
		}
	out.println();
	out.println();out.println();
	 
	
		

}
}
}
	%>