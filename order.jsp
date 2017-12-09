<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
.right {
	text-align: right;
}
#form1 {
	text-align: center;
}
.normal {
	text-align: left;
	font-weight: bold;
	font-family: Arial, Helvetica, sans-serif;
}
.unormal {
	font-family: Arial, Helvetica, sans-serif;
}
.center1 {	text-align: center;
}
</style>
</head>
<body background="b98c9470ddaeaeb750279ccd1e38ee40.jpg">
<%@ page language="java" %>
<%@ page import="java.sql.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
         <%@ page import="java.text.SimpleDateFormat" %>
         <%@ page import="java.text.DateFormat" %>
         <%@ page import="java.util.Date" %>
         <%@ page import="java.util.Calendar" %>
		
			 
<table width="1200" height="102" >
  <tr>
    <td width="205" height="89"><img src="head.png" width="400" height="88" alt="Logo" />
    </td>
    <td width="772"><table width="800" height="88" border="0">
      <tr>
        <td width="713" class="right">24X7 Customer Support -  <a href="home.jsp">Home</a> | 
        <% if(session.getAttribute("uname")==null) {
			%>
           <jsp:forward page="login1.jsp" />
            <%} else {
				%>
				<%=session.getAttribute("uname")%>
                <a href="logout.jsp">Logout</a> | <a href="Cart.jsp">Cart</a> |
                <%}%>
                </td>
      </tr>
      <tr>
       
      </tr>
    </table>
    </td>
  </tr>
  </table>
  <hr color="blue"/>
</br></br></br></br>
<h2> <center><script type="text/javascript">
var d=new Date();
function Redirect()
{
    window.location="home.jsp";
}
setTimeout('Redirect()', 3000);
document.write("Order will be Deliverd! Before ");

</script>
<%
Date date=new Date();
DateFormat sdf=new SimpleDateFormat("dd-MM-yyyy");
String str=sdf.format(date);
Calendar c=Calendar.getInstance();
c.setTime(sdf.parse(str));
c.add(Calendar.DATE,3);
String str2=sdf.format(c.getTime());
out.println(str2);
%>
</h2>
<center><h4>Click <a href="home.jsp">here</a> to Return the home page.</h4>