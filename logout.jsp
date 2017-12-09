<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
.right {text-align: right;
}
</style>
</head>

<body background="b98c9470ddaeaeb750279ccd1e38ee40.jpg">
<%@ page language="java" %>
<table width="1100" height="102" border="0">
  <tr>
    <td width="400" height="96"><img src="head.png" width="400" height="88" alt="Logo" /></td>
    <td width="726" class="right">24X7 Customer Support - <a href="contact.jsp">Contact us</a> | <a href="home.jsp">Home</a> |
      <% if(session.getAttribute("uname")==null) {
			%>
      <a href="login.jsp">Login</a>
      <%} else {
				%>
      <a href="logout.jsp">Logout</a>
      <%}%></td>
  </tr>
</table>
<hr color="blue"/><br><br><br><center><h2>
<% if(session.getAttribute("uname")!=null) {
	session.invalidate();
	out.println("Successfully Logged out.");
	%>
  <br>  <script type="text/javascript">
function Redirect()
{
    window.location="home.jsp";
}
document.write("You will be redirected to main page in a few sec.");
setTimeout('Redirect()', 3000);
</script>
<%
}
else
{%>
<br>
You're already Logged out. 
Click <a href="home.jsp">here</a> to go to the home page.
<%}%>
</body>
</html>