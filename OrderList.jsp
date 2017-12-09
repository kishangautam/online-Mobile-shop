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
        <td width="713" class="right">24X7 Customer Support - <a href="ContactUs.jsp">Contact us</a>  | <a href="home.jsp">Home</a> | 
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
  <%
  try{
	   
       PreparedStatement ps;
       PreparedStatement ps2;

        Connection conn;
        ResultSet rs= null;
        ResultSet rs2= null;

      
       Class.forName("oracle.jdbc.driver.OracleDriver");
        conn=DriverManager.getConnection("jdbc:oracle:thin:@YOGI-PC:1521:xe","system","12345");
      
     
		 String a=String.valueOf(session.getAttribute("uname"));	
		 String sql="select * from orderproduct where cst=?";		
		 String sql2="select * from orderproduct2 where cst=?";		
		 
		 ps=conn.prepareStatement(sql); 
		 ps2=conn.prepareStatement(sql2); 
		  ps.setString(1,a);
		  ps2.setString(1,a);
		  rs = ps.executeQuery ();
		  rs2 = ps2.executeQuery ();
		  int i=1;
		 int c,b;
		  %>
	  <table border="3" bordercolor="trasparent" width="1200" height="50" bgcolor="green">
		 <tr>
		  <td><center><font color="yellow">No.</font></td>
		  <td><center><font color="yellow">Product Name</font></td>
		  <td><center><font color="yellow">Quantity</font></td>
		  <td><center><font color="yellow">Price</font></td>
          <td><center><font color="yellow">Total Price</font></td>
		  <td><center><font color="yellow">Phone No.</font></td>
		  <td><center><font color="yellow">Order</font></td>
		  <td><center><font color="yellow">Address</font></td>
		  <td><center><font color="yellow">Expected Delivery before</font></td>
		  <td><center><font color="yellow">Cancel Order</font></td>
		 </tr> 
		   <%
		  while(rs.next()==true)		  {
		  %> <form action="removeorder.jsp">
	       <tr bgcolor="yellow"><font color="green">
		   <td width="30" height="30"><center><font color="green">
		   <% out.print(i); ++i;%>.
		   </font></td>
	       <td width="130" height="50"><center><font color="green">
		   <input type="hidden" name="prodt" value="<%out.print(rs.getString("prodt"));%>" ><% out.print(rs.getString("prodt")); %></input>  </font></td>
		   <td width="10" height="10"><center><font color="green">  <% out.print(rs.getString("qt")); %>   </font></td>
		   <td width="130" height="50"><center><font color="green">  <% out.print(rs.getString("price")+" Rs."); %>	  </font></td>
		   <td width="130" height="50"><center><font color="green">
		   <%
		  c=Integer.parseInt(rs.getString("price"));  
		  b=Integer.parseInt(rs.getString("qt")); 
out.print(c*b+" Rs.");		   
		   %>		   </font></td>
		   <td width="130" height="50"><center><font color="green">   <% out.print(rs.getString("phn")); %>		   </font></td>
		   <td width="130" height="50"><center><font color="green">   <% out.print(rs.getString("orderd")); %></font></td>
		   <td width="130" height="50"><center><font color="green">   <% out.print(rs.getString("adres")); %>   </font></td>
		   <td width="130" height="50"><center><font color="green">  <% out.print(rs.getString("dlry")); %>		   </font></td><td><center><input type="submit" value="cancel" /></td>
		    </form></font>
		   </tr>
		   		
		<%}%>	<% while(rs2.next()) { %><form action="removeorder2.jsp">
		  <tr bgcolor="yellow"><font color="green"> 
		  <td width="30" height="30"><center><font color="green">  <% out.print(i); ++i;%>. </font></td>
	       <td width="130" height="50"><center><font color="green"> <input type="hidden" name="prodt2" value="<%out.print(rs2.getString("prodt"));%>" ><% out.print(rs2.getString("prodt")); %></input></font></td>
		   <td width="10" height="10"><center><font color="green">  1  </font></td>
		   <td width="130" height="50"><center><font color="green"> <% out.print(rs2.getString("price")+" Rs."); %> </font></td>
		   <td width="130" height="50"><center><font color="green"> <% out.print(rs2.getString("price")+" Rs."); %> </font></td>
		   <td width="130" height="50"><center><font color="green"> <% out.print(rs2.getString("phn")); %> </font></td>
		   <td width="130" height="50"><center><font color="green"> <% out.print(rs2.getString("orderd")); %> </font></td>
		   <td width="130" height="50"><center><font color="green"> <% out.print(rs2.getString("adres")); %> </font></td>
		   <td width="130" height="50"><center><font color="green"> <% out.print(rs2.getString("dlry")); %> </font></td><td><center><input type="submit" value="cancel" /></td>
		   </tr></font></form>
		<%} %>
		</table>
		<%if(i==1){ %>
		 <jsp:forward page="NoOrder.jsp" />
		 <%}%>
		

<%		
rs.close (); 
rs2.close (); 
ps.close ();    
ps2.close ();    
  }
     
catch (SQLException e) { 
out.println (e); 
}    
%>