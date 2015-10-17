<%@ page import="java.sql.DriverManager" %>

<%@ page import="java.sql.Statement" %>

<%@ page import="java.sql.ResultSet" %>





<%!



String uid;

String password;

%>

<%



uid=request.getParameter("age");

password=request.getParameter("wpm");

Class.forName("com.mysql.jdbc.Driver").newInstance();



// Open new connection.

java.sql.Connection conn;



conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/srp","root","");



Statement ps=conn.createStatement();



String id=(String)session.getAttribute("user");

// Get the query results and display them.

if(id !=null)
{
	out.println("Welcome to SEEKERT");
}

else
{

String select="Select * from seeker where phone='"+uid+"' and password='"+password+"';";

ResultSet rel=ps.executeQuery(select);

int flag=1;

while(rel.next())

{

	session.setAttribute("user",uid);
	session.setAttribute("name",rel.getString(1));

	out.println("Welcome to SEEKERT");

flag++;

}

if(flag==1)

out.println("WRONG-USER");











// Close the connection.



ps.close();

conn.close();
}

%>

