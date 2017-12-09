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
<%@ page import="java.sql.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
		 <%
   try{
       PreparedStatement ps;
        Connection conn;
        ResultSet rs= null;
       Class.forName("oracle.jdbc.driver.OracleDriver");
        conn=DriverManager.getConnection("jdbc:oracle:thin:@YOGI-PC:1521:xe","system","12345");
      
         Statement st=conn.createStatement();
		 String a="HTC Desire 820G+";
		 String sql="select * from item where prod=?";
		 
		 ps=conn.prepareStatement(sql); 
		  ps.setString(1,a);
		  rs = ps.executeQuery ();
		
		  %><table width="1200" height="102" border="0">
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
  <h1><center> <input type="hidden" name="prod" value="HTC Desire 820G">HTC Desire 820G</input></center></h1>
  <td width="10" height="10"><img src="images/htc/htc-desire-820g-na-original-imae9rrgfwp5vkgf.jpeg" width="400" height="500" />
  </td>
  <td><h3><center>
  Os<hr color="blue"/> <h5>
  lolipop 5.0.2</input>
  </h5> </br>
  Brand<hr color="blue"/><h5>
  HTC
  </h5></br>
  Price<hr color="blue"/><h5>  <% if(rs.next()) out.println("Rs. "+rs.getString("pr"));%><input type="hidden" name="pr" value="<%=rs.getString("pr")%>"></input>

  </h5>
  </td>
  </tr>
 </table>  <h2><center><font color="lightGreen"><a href="spec3h.jsp">Full Technical Descaription</a><br><br>
 <table align="center">
 <td>
 <center>
 <button type="submit"><img width="150" height="80" src="images/Buylogo.jpg"/></button>
 </center></td>
</form>
    <form action="AddtoCart.jsp">
	<td>
 <center><button type="submit"><img width="150" height="80" src="images/AddCart.jpg"/></button> </center></td>
	<input type="hidden" name="prod" value="HTC Desire 820G"></input>
	<input type="hidden" name="pr" value="<%=rs.getString("pr")%>"></input>
</form>
<form action="Cart.jsp">
<td>
 <center><button type="submit"><img width="150" height="80" src="images/gotoCart.jpg"/></button> </center></td>
</form>
  </table>
  </table>
    <%		
		  
rs.close (); 
ps.close (); 
conn.close ();		  
   }	
catch (SQLException e) { 
out.println (e); 
}    
%>
</body>
</html>