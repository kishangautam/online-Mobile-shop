<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
 
/* Style the submit button with a specific background color etc */
button[type=submit] {    background-color: white;    color: white;    padding: 10px 60px;    border: 2px;    border-radius: 8px; cursor: pointer;}

/* When moving the mouse over the submit button, add a darker green color */button[type=submit]:hover { background-color: lightgrey;}

.right {	text-align: right;}
#form1 {	text-align: center;}
.normal {	text-align: left;	font-weight: bold;	font-family: Arial, Helvetica, sans-serif;}
.unormal {	font-family: Arial, Helvetica, sans-serif;}
.center1 {	text-align: center;}
</style>
</head>
<body>
<%@ page language="java" %>
<table width="1200" height="102" border="0">
  <tr>
    <td width="205" height="89"><img src="head.png" width="400" height="88" alt="Logo" />
    <hr color="blue"/></td>
    <td width="772"><table width="800" height="88" border="0">
      <tr>
        <td width="713" class="right">24X7 Customer Support - Contact us  | <a href="home.jsp">Home</a> | 
        <% if(session.getAttribute("uname")==null) {
			%>
            <a href="login.jsp">Login</a> | <a href="register.jsp">Signup</a>
            <%} else {
				%>
				<%=session.getAttribute("uname")%>
                <a href="logout.jsp">Logout</a>
                <%}%>
                </td>
      </tr>
      <tr>
        <td><form id="form1" name="form1" method="post" action="search.jsp">
          
        </form></td>
      </tr>
    </table>
    <hr color="blue"/></td>
  </tr>
  <form action="buys001.jsp" >
  <table width="1000" height="100">
  <tr>
  <h1><center> <input type="hidden" name="prod" value="HTC Desire 828">Nokia 3</input></center></h1>
  <td width="10" height="10"><img src="images/_20170426_084839.jpg" width="400" height="500" />
  </td>
  <td><h3><center>
  Os<hr color="blue"/> <h3>
  lolipop 5.0.2</input>
  </h5> </br>
  Brand<hr color="blue"/><h5>
NOKIA
  </h3></br>
  <h3>
  <font color="green">Coming Soon</font>
  </h3>
  </td>
  </tr>
 </table>
   <h2><center><font color="lightGreen"><a href="spec1nAndo.jsp">Full Technical Descaription</a><br><br>


  </table>