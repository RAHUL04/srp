<%
   // New location to be redirected
  session.invalidate();
   String site = new String("http://ab1678b.ngrok.com/srp/index.html");
   response.setStatus(response.SC_MOVED_TEMPORARILY);
   response.setHeader("Location", site);

%>
