<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
/* Style the submit button with a specific background color etc */
input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 40px;
    border: 2px;
    border-radius: 4px;
    cursor: pointer;
}

/* When moving the mouse over the submit button, add a darker green color */
input[type=submit]:hover {
    background-color: #45a049;
}

.right {	text-align: right;
}
</style>
</head>
<body background="b98c9470ddaeaeb750279ccd1e38ee40.jpg">
<%@ page language="java" %>
<%@ page import="java.sql.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
		
			 
<table width="1200" height="102" >
  <tr>
    <td width="205" height="89"><img src="head.png" width="400" height="88" alt="Logo" />
    </td>
    <td width="772"><table width="800" height="88" border="0">
      <tr>
        <td width="713" class="right">24X7 Customer Support - Contact us  | <a href="home.jsp">Home</a> | 
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
  <table width="400" height="300" border="2px" bgcolor="cyan" align="center">
 <center>
<tr>
 <td bgcolor="green"><center><font color="Yellow">Customer Name</td>
<td><center><font color="green"> <%=session.getAttribute("uname")%></td>
</tr>
<tr>
<td bgcolor="green"><center><font color="Yellow">Address</td>
<td><center> <font color="green">
 <% 
 try{
       PreparedStatement ps;
        Connection conn;
        ResultSet rs= null;
       Class.forName("oracle.jdbc.driver.OracleDriver");
        conn=DriverManager.getConnection("jdbc:oracle:thin:@YOGI-PC:1521:xe","system","12345");
      
         Statement st=conn.createStatement();
		 String a =String.valueOf(session.getAttribute("uname"));
		
		
		 ps=conn.prepareStatement("SELECT Address from register1 where name=?"); 
	
          ps.setString(1,a); 
         
         rs = ps.executeQuery(); 
 
if(rs.next())
{
String b=rs.getString("ADDRESS");
out.println(b);
}
else{

rs.close (); 
ps.close (); 
conn.close ();
}
 }
catch (SQLException e) { 
out.println (e); 
} 
%> 
</td>
</tr>
<tr>
<td bgcolor="green"><center><font color="Yellow">Quantity</td>
<form action="payment.jsp" method="post">
<td> <font color="green">
<script>
var i=0;
function buttonClickP()
{
	document.getElementById('inc').value=++i;
	
}
function buttonClickM()
{
	document.getElementById('inc').value=--i;
	
}
</script><center>
<button type="button" onclick="buttonClickP()">+</button>
<input bgcolor="green" type="text" id="inc" name="qun" value="1" size="1"></input><button type="button" onclick="buttonClickM()">-</button>

</td>
</tr>
<tr><td bgcolor="green"><center><font color="Yellow">Product</td><td><center><font color="green"><input type="hidden" name="pdn" value="<%out.print(request.getParameter("prod"));%>"><%out.print(request.getParameter("prod"));%></input></td>
</tr>
<tr>
 <td bgcolor="green"><center><font color="Yellow">Price</td> <td><center><font color="green"><input type="hidden" name="pri" value="<%out.print(request.getParameter("pr"));%>"><%out.print(request.getParameter("pr"));%> Rs. PER UNIT</input></font></td>
 </tr></center>
  </table>
  <table  width="450" height="89" align="center">
  <tr>
 <td></br>
  <center> <input type="hidden" name="cc" value="radio3"><h4><font color="white">Only Cash on Delivery Available</input></center> 
  	<center><input type="submit" value="Payment"/></center>
</form>
 </td>
  </tr>
  </table>