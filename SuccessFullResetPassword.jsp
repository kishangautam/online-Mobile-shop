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
<table width="993" height="102" border="0">
  <tr>
    <td width="400" height="96"><img src="head.png" width="400" height="88" alt="Logo" /></td>
    <td width="726" align="right">24X7 Customer Support - <a href="contact.jsp">Contact us</a> | <a href="home.jsp">Home</a> |<a href="login.jsp">Login</a> </tr>
</table>
<hr color="blue"/>
<center>
<font color="red">
<h3><br><br>
<% out.println("Successfully Reset Password !");
	%>
	</font></br></br>
	<font color="Blue">
    <script type="text/javascript">
function Redirect()
{
    window.location="login.jsp";
}
document.write("You will be redirected to Login page in a few sec.");
setTimeout('Redirect()', 2000);
</script>
Click <a href="login.jsp">here</a> to go to the Login page.
</h3>
</font>
</center>
</body>
</html>