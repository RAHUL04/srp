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


String select="Select * from notification where sphone='"+uid+"';";

ResultSet rel=ps.executeQuery(select);
if(rel==null)
out.println("WE DONT HAVE");
else
{
	out.println("~~~~~~~~~RATINGS~~~~~~~~</br>");
	String prev=null;

while(rel.next())
{
		String phone=rel.getString(2);
	
		Statement p=conn.createStatement();
		String selectt="Select * from expert where phone='"+phone+"';";
		ResultSet re=p.executeQuery(selectt);
			
		while(re.next())
		{
			String s=re.getString(1);
			if(s!=prev)
			{
	out.println("NAME-"+re.getString(1));
	out.println("</br>YOUR SCORE");
	out.println("<fieldset class=\"score\">");
	out.println(" <legend>Score:</legend>");
   out.println(" <input type=\"radio\" id=\"score-5\" name=\"score\" value=\"5\"  />");
  out.println("<label title=\"5 stars\" for=\"score-5\">5 stars</label>");
   out.println("<input type=\"radio\" id=\"score-4\" name=\"score\" value=\"4\" />");
  out.println("<label title=\"4 stars\" for=\"score-4\">4 stars</label>");
   out.println("<input type=\"radio\" id=\"score-3\" name=\"score\" value=\"3\" />");
  out.println("<label title=\"3 stars\" for=\"score-3\">3 stars</label>");
   out.println("<input type=\"radio\" id=\"score-2\" name=\"score\" value=\"2\" />");
  out.println("<label title=\"2 stars\" for=\"score-2\">2 stars</label>");
  out.println("<input type=\"radio\" id=\"score-1\" name=\"score\" value=\"1\" />");
  out.println("<label title=\"1 stars\" for=\"score-1\">1 stars</label>");
  out.println("</fieldset>");
out.println("<button id=\"" +re.getString(1)+  "\"onClick=\"stars()\">RATE-IT</BUTTON></BR>");
prev=s;
			}
		}
}
}
}
	%>