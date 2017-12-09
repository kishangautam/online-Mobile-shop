<html>
<head>
<title>Untitled Document</title>
<style type="text/css">
/* Style the submit button with a specific background color etc */
button[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 40px;
    border: 2px;
    border-radius: 4px;
    cursor: pointer;
}

/* When moving the mouse over the submit button, add a darker green color */
button[type=submit]:hover {
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
        <td width="713" class="right">24X7 Customer Support -  <a href="home.jsp">Home</a> | 
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
  int Tamt=Integer.valueOf(request.getParameter("amt"));
  try{
	  if(Tamt!=0)
	  {
	   
       PreparedStatement ps;
       PreparedStatement ps2;
       PreparedStatement ps3;
        Connection conn;
        ResultSet rs= null;
        ResultSet rs2= null;
        ResultSet rs3= null;
      
       Class.forName("oracle.jdbc.driver.OracleDriver");
        conn=DriverManager.getConnection("jdbc:oracle:thin:@YOGI-PC:1521:xe","system","12345");
      
         Statement st=conn.createStatement();
		 String a=String.valueOf(session.getAttribute("uname"));
		 String sql="select * from addtocart where name=?";
		 String sql2="select address from register1 where name=?";
		 
		 ps=conn.prepareStatement(sql); 
		 ps2=conn.prepareStatement(sql2); 
		 ps3=conn.prepareStatement("select Phone from register1 where name=?"); 
		  ps.setString(1,a);
		  ps2.setString(1,a);
		  ps3.setString(1,a);
		  rs = ps.executeQuery ();
		  rs2 = ps2.executeQuery ();
		  rs3 = ps3.executeQuery ();
		  int i=1;
		  int amt=0;
		  %>
		  <center><table width="400" height="50" border="2" bgcolor="lightgreen">
		  <tr>
		  <td>Customer Name</td>
		  <td> <%=session.getAttribute("uname")%> </td>
		  </tr>
		  <tr>
		  <td>Address</td>
		  <td><% if(rs2.next()){ out.print(rs2.getString("address")); session.setAttribute("address",rs2.getString("address"));} %></td>
		  </tr>
		  <tr>
		  <td>Phone No.</td>
		  <td><% if(rs3.next()){ out.print(rs3.getString("Phone")); session.setAttribute("phone",rs3.getString("Phone"));} %></td>
		  </tr>
		  
		  </table><table border="2" width="400" height="50" bgcolor="green">
		 <tr>
		   <td  width="25" height="30"><font color="yellow">No.</font></td>
		  <td width="108" height="50"><font color="yellow">Product Name</font></td>
		  <td width="40" height="50"><font color="yellow">Price</font></td>
		 </tr> 
		  </table></center><form action="Payment2.jsp">
		   <%
		  while(rs.next()==true)		  {
		  %>
		  <center><table border="2" width="400" height="50" bgcolor="yellow">
	       <tr><font color="green">
		   <td width="30" height="30"><font color="green">
		   <% out.print(i); i++;%>.
		   </font></td>
	       <td width="130" height="50"><font color="green">
		   <input type="hidden" name="prod" value="<% out.print(rs.getString("prod")); %>"><% out.print(rs.getString("prod")); %></input>
		   </font></td>
		   <td width="50" height="50"><font color="green">
		   <input type="hidden" name="pr" value="<% out.print(rs.getString(3)); %>">
		   <% out.print(rs.getString(3)); amt=amt+Integer.parseInt(rs.getString(3));%> Rs.</input>
		   </font></td>
		   </tr></font> </font></table>
		  
		   </center>
		<%			  
		  }
		  %>
		<table align="center" bgcolor="cyan" border="2" width="400" height="50"><td><font color="blue">
		<center><input type="hidden" value="<%out.print(amt);%>" name="amt">TOTAL AMOUNT :&nbsp <%out.print(amt);%>&nbspRS. </center>
		</font>
		</td></table>
		<table align="center"> <td><center>
  </br>
 <center> <input type="hidden" name="cc" value="radio3"><h4><font color="white">Only Cash on Delivery Available</input></center>
	</center>
	

 </td>
 </table>
 <center><Button type="submit">Place Order</button></center>
 </form>
	  <%				  
rs.close (); 
ps.close ();   
 
rs2.close (); 
ps2.close ();   

rs3.close (); 
ps3.close ();
conn.close ();  }else{
		  %> <jsp:forward page="Cart.jsp" /> <%		  
   }
  }   
catch (SQLException e) { 
out.println (e); 
}    
%>