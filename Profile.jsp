<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Log in</title>
<style type="text/css">

/* Style the submit button with a specific background color etc */
button[type=submit] {
    background-color: lightgray;
    color: white;
  padding: 10px 30px;
    border: 2px;
    border-radius: 8px;
    cursor: pointer;
}

/* When moving the mouse over the submit button, add a darker green color */
button[type=submit]:hover {
    background-color: red;
}
.right {	text-align: right;
}
</style>
<link href="italics.css" rel="stylesheet" type="text/css" />
</head>

<body background="SplitShire_Blur_Background_XVI-1800x1200.jpg">

<center> 

  <table width="1200" height="102" border="0">
    <tr>
      <td width="400" height="96"><img src="head.png" width="400" height="88" alt="Logo" /></td>
      <td width="726" class="right">24X7 Customer Support -  <a href="ContactUs.jsp">Contact us</a> | <a href="home.jsp">Home</a> |
        <% if(session.getAttribute("uname")==null) {
			%>
               <jsp:forward page="login.jsp"/> 

		<%  } else {
				%>
				<%=session.getAttribute("uname")%>
                <a href="logout.jsp">Logout</a> |  <a href="Cart.jsp">Cart</a>
                <%}%>

       </td>
    </tr>
  </table>
  <hr color="blue"/><br/><br/>
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
		 String a =String.valueOf(session.getAttribute("uname"));
		
		
		 ps=conn.prepareStatement("SELECT * from register1 where name=?");
		 ps.setString(1,a); 
         
         rs = ps.executeQuery(); 
		 
		 while(rs.next())
		 {
		 %>
		  
		 
		 
		<table width="502" height="350" align="center" border="5"> 
		   <tr bgcolor="Yellow"> 
		<td width="157"><h3><center><font color="darkblue">Name</td><td><h3><center><font color="blue"><%out.print(rs.getString("Name"));%></td>
		  </tr>
		   <tr bgcolor="cyan"> 
		<td width="100"><h3><center><font color="DARKGREEN">Id</td><td><h3><center><center> <font color="green"><%out.print(rs.getString("id")); %></td>
		  </tr>
		   <tr bgcolor="Yellow">
		<td width="100"><h3><center><font color="darkblue">Phone</td><td><h3><center><font color="blue"><%out.print(rs.getString("phone"));%></td>
		   </tr>
           <tr bgcolor="cyan">
		<td width="100"><h3><center><font color="darkgreen">Address</td><td><h3><center><font color="green"><%out.print(rs.getString("Address"));%></td>
		   </tr>
            <tr bgcolor="Yellow">
		<td width="100"><h3><center><font color="darkblue">DOB</td><td><h3><center><font color="blue"><%out.print(rs.getString("dateb"));%></td>
		   </tr>		   
		</table>
		 
		 <table align="center">
		 <tr><td><center>
		 <form action="VerificationADD.jsp">
		 <button type="submit">Change Address</Button></form></td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		 
		<td><center>
		 <form action="VerificationPH.jsp">
		 <button type="submit">Update Contact No.</Button></form></td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		<td> <center>
		<form action="OrderList.jsp">
		 <button type="submit">Check Orders</Button></form></td></tr></table>
		 <%}		 
rs.close (); 
ps.close (); 
conn.close ();
}
catch (SQLException e) { 
out.println (e); 
} 
		 %>
		 <br/><br/> <br/><br/>
		
		 </body>
		 </html>