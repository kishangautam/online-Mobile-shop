<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Log in</title>
<style type="text/css">
.right {	text-align: right;
}
</style>
<link href="italics.css" rel="stylesheet" type="text/css" />
</head>
<%@ page language="java" %>
<%@ page import="java.sql.*" %>
         <%@ page import="java.sql.DriverManager.*" %>

<body background="b98c9470ddaeaeb750279ccd1e38ee40.jpg">

<center> 
<form action="ForgetPasswordReset.jsp" method="post">
  <table width="993" height="102" border="0">
    <tr>
      <td width="600" height="96"><img src="head.png" width="400" height="88" alt="Logo" /></td>
      <td width="726" class="right">24X7 Customer Support - <a href="contact.jsp">Contact us</a> | <a href="home.jsp">Home</a> |<a href="login.jsp">Login</a></td>
    </tr>
  </table>
  <hr color="blue"/>
  <%
  String pwd1 =String.valueOf(request.getParameter("password1"));
  String pwd2 =String.valueOf(request.getParameter("password2"));
  if(pwd1.length()!=0 && pwd2.length()!=0) 
  {
	  PreparedStatement ps=null;
        Connection conn;
        ResultSet rs= null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
        conn=DriverManager.getConnection("jdbc:oracle:thin:@YOGI-PC:1521:xe","system","12345");
		String sql= "update register1 set PASSWORD=? where id=?";
		
		if(pwd1.equals(pwd2))
{
try
{
	
		ps = conn.prepareStatement (sql);
		ps.setString (1,request.getParameter("password1"));
		ps.setString (2,String.valueOf(session.getAttribute("id")));
        rs = ps.executeQuery ();
		%>
		<jsp:forward page="SuccessFullResetPassword.jsp" />

		<%

}
catch(Exception e)
{
	out.println(e);
}  
  %>
  <%}
else{
%>
<jsp:forward page="ForgetPasswordReset1.jsp" />

<%
}
  }
  else{
	%>
	<jsp:forward page="ForgetPasswordReset1.jsp" />
<%  
  }
%>