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
      <tr>
        <td><form id="form1" name="form1" method="post" action="search.jsp">
          
        </form></td>
      </tr>
    </table>
   </td>
  </tr>
  </table>
  <hr color="blue"/>
  <table width="400" height="300" border="2px" bgcolor="yellow" align="center">
 
<center><tr bgcolor="cyan">
 <td><center>Customer Name</td>
<td> <center><%=session.getAttribute("uname")%></td>
</tr>
<tr>
<td><center>Quantity</td>
<td><center>
<%out.print(request.getParameter("qun"));%>
</td>
</tr>
<tr bgcolor="cyan">
<td><center>Product Name</td>
<td><center><%out.print(request.getParameter("pdn"));%></td>
</tr>
<tr>
<td><center>Order</td>
<td><center>
 <% 
out.println("Cash on delivery");
 %> 
</td>
</tr>
<tr bgcolor="cyan">
<td><center>Price</td>
<td><center>
<%
out.println(Integer.parseInt(request.getParameter("qun"))*Integer.parseInt(request.getParameter("pri")));
%> Rs.</td>
</tr>
<tr>
<td><center>Phone No.</td>
<td><center><% 
       PreparedStatement ps1;
       PreparedStatement ps2;
       PreparedStatement ps3;
        Connection conn;
        ResultSet rs1= null;
        ResultSet rs2= null;
        ResultSet rs3= null;
       Class.forName("oracle.jdbc.driver.OracleDriver");
        conn=DriverManager.getConnection("jdbc:oracle:thin:@YOGI-PC:1521:xe","system","12345");
      %> 

<% 
String a =String.valueOf(session.getAttribute("uname"));
String sql1 = "SELECT Phone from register1 where name=?"; 
String sql2 = "SELECT Address from register1 where name=?";   
String sql3 = "insert into orderProduct values(?,?,?,?,?,?,?,?)"; 

try {  
ps1 = conn.prepareStatement (sql1); 
ps1.setString (1,a);  
rs1 = ps1.executeQuery (); 
if (rs1.next ()) { 
out.println (rs1.getString ("phone")); 
} else { 
request.setAttribute("err", "user name or password error!"); 
}
ps2 = conn.prepareStatement (sql2); 
ps2.setString (1,a);  
rs2 = ps2.executeQuery ();

%>
</td>
</tr>
<tr bgcolor="cyan"><td><center>Address</td>
<td><center>
<%
if (rs2.next ()) { 
out.println (rs2.getString ("Address")); 
} else { 
request.setAttribute("err", "user name or password error!"); 
}

int st=Integer.parseInt(request.getParameter("qun"))*Integer.parseInt(request.getParameter("pri"));
Date date=new Date();
DateFormat sdf=new SimpleDateFormat("dd-MM-yyyy");
String str=sdf.format(date);
Calendar c=Calendar.getInstance();
c.setTime(sdf.parse(str));
c.add(Calendar.DATE,3);
String str2=sdf.format(c.getTime());
ps3 = conn.prepareStatement (sql3);
ps3.setString (1,a); 
ps3.setString (2,request.getParameter("qun"));
ps3.setString (3,request.getParameter("pdn"));
ps3.setString (4,"Cash on delivery");
ps3.setString (5,String.valueOf(st));
ps3.setString (6,rs1.getString ("phone"));
ps3.setString (7,rs2.getString ("Address"));
ps3.setString (8,str2);
rs3 = ps3.executeQuery ();
rs1.close (); 
rs2.close (); 
rs3.close (); 
ps1.close (); 
ps2.close (); 
ps3.close (); 
conn.close ();
conn.close ();

} catch (Exception e) { 
out.println(e);
} 
%></td></tr></center>
</table>
<table width="400" height="300">
<form action="order.jsp" method="post"></br>
<center><input type="submit" name="cod" value="Place order"></center>
</form>
</table>
</table>
