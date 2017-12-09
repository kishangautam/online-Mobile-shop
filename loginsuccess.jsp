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
   <%@ page import="java.sql.*" %>
   
<table width="1200" height="102" >
  <tr>
    <td width="205" height="89"><img src="head.png" width="400" height="88" alt="Logo" />
    </td>
    <td width="772"><table width="800" height="88" border="0">
      <tr>
        <td width="713" class="right">24X7 Customer Support - <a href="home.jsp">Home</a> | 
        <% if(session.getAttribute("uname")==null) {
			%>
           <jsp:forward page="login1.jsp" />
            <%} else {
				%>
				<%=session.getAttribute("uname")%>
                <a href="logout.jsp">Logout</a>
                <%}%>
                </td>
      </tr>
     </table>
   </td>
  </tr>
  </table>
  <hr color="blue"/>
<br /><br>  <br>  
 <h3><center>Welcome <%=session.getAttribute("uname")%>,
 <p>Click <a href="home.jsp
">here</a> to go to the Home Page.
   </p>
<br/>   
<br/>   
  <script type="text/javascript">
function Redirect()
{
    window.location="home.jsp";
}
document.write("You will be redirected to main page in a few sec.");
setTimeout('Redirect()', 4000);
</script>

</body>
</html>