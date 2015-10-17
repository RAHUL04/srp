<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>


<%!

String name;
String rate;
%>
<%
 
name=request.getParameter("name");
rate=request.getParameter("rate");
int no = Integer.parseInt(rate);
Class.forName("com.mysql.jdbc.Driver").newInstance();

// Open new connection.
java.sql.Connection conn;

conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/srp","root","");

Statement ps=conn.createStatement();

String select="Select * from expert where name='"+name+"';";
ResultSet rel=ps.executeQuery(select);
if(rel==null)
out.println("WE DONT HAVE");
else
{

	
	
while(rel.next())
{
		String phone=rel.getString(7);
		no = no+Integer.parseInt(phone);
}
			

String update="Update expert set rating='"+no+"' where name='"+name+"';";
int flag=ps.executeUpdate(update);


if(flag==1)
	out.println("rated");


}


// Close the connection.

ps.close();
conn.close();

%>
