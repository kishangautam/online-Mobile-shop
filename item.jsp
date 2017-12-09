<html>
<head>
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
<body background="102.jpg">

<%@ page language="java" %>
<%@ page import="java.sql.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
		
			 
<table width="1200" height="102" >
  <tr>
    <td width="205" height="89"><img src="head.png" width="400" height="88" alt="Logo" />
    </td>
    <td width="772"><table width="800" height="88" border="0">
      <tr>
        <td width="713" class="right"> 
        <% if(session.getAttribute("uname")==null) {
			%>
           <jsp:forward page="Admin_login.jsp" />
            <%} else {
				%>Admin
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
  <center>
  <style>
  </style>
  </center>
  
  <center><font color="Red"><h2>Online Mobile Shop Database</h2></font></center>
<% 
           try{
       PreparedStatement ps;
        Connection conn;
        ResultSet rs= null;
       Class.forName("oracle.jdbc.driver.OracleDriver");
        conn=DriverManager.getConnection("jdbc:oracle:thin:@YOGI-PC:1521:xe","system","12345");
      
         
		 String a=String.valueOf(session.getAttribute("uname"));
		 if(a.equals("Yogendra"))
		 {
		 String sql="select * from item where admin=?";
		 
		 ps=conn.prepareStatement(sql);
		  ps.setString(1,a);
		  rs = ps.executeQuery ();
		  int i=0;
		 
		  %>   <center><table border="2" width="900" height="20" bgcolor="green">
		 <tr>
		   <td  width="30" height="30"><font color="yellow"><center>No.</font></td>
		  <td width="100" height="50"><font color="yellow"><center>Product Name</font></td>
		  <td width="80" height="50"><font color="yellow"><center>Price</font></td>
		  <td width="100" bgcolor="green"><center><font color="Yellow"><center>Change Price</td>

		 </tr> 
		  </table></center></br><%
while(rs.next()) 
{ 
%> <form action="updatePri.jsp"><center><table border="1" width="900" bordercolor="orange" height="20" bgcolor="yellow">
	       <tr><font color="green">
		   <td width="30" height="30"><font color="red">
		   <center><% i++; out.print(i);%>
		   </font></td>
	       <td width="100" height="50"><font color="green">
		  <center><input type="hidden" name="sn" value="<%=i%> "></input> <% out.print(rs.getString("prod")); %> 
		   </font></td>
		   <td width="80" height="50"><font color="green">
		  <center> <% out.print(rs.getString("pr")+" Rs");%>
		   </font></td>
		 
		 <td width="100"><center><input type="number" min="0" max="100000" name="pr"></input><font color="red"><Button type="submit">New Price</button>

</td>
		 </tr></font> </font></table></form>
		  
		   <%
}
	rs.close (); 
ps.close (); 
conn.close ();	 
}
else
{
	session.invalidate();
	%><jsp:forward page="Admin_login.jsp"/> <%
}



} catch (Exception e) { 
out.println (e); 
} 
%>
</body>
</html>