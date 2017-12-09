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
  <%
   try{
       PreparedStatement ps;
        Connection conn;
        ResultSet rs= null;
       Class.forName("oracle.jdbc.driver.OracleDriver");
        conn=DriverManager.getConnection("jdbc:oracle:thin:@YOGI-PC:1521:xe","system","12345");
      
         Statement st=conn.createStatement();
		 String a=String.valueOf(session.getAttribute("uname"));
		 String sql="select * from addtocart where name=?";
		 
		 ps=conn.prepareStatement(sql); 
		  ps.setString(1,a);
		  rs = ps.executeQuery ();
		  int i=1;
		  
		  int amt=0;
		  %>
		  <center><table border="2" width="600" height="50" bgcolor="green">
		 <tr>
		   <td  width="32"><font color="yellow"><center>No.</font></td>
		  <td width="100"><font color="yellow"><center>Product Name</font></td>
		  <td width="37"><font color="yellow"><center>Price</font></td>
		  <td width="60"><font color="yellow"><center>operation</font></td>
		 </tr> 
		  </table></center>
		   <%
		  while(rs.next()==true)		  { 
		  %>
		  <center><table border="2" width="600" height="50" bgcolor="yellow"><form action="RemoveToCart.jsp">
	       <tr><font color="green">
		   <td width="34"><font color="green"><center>
		   <% out.print(i); i++;%>.
		   </font></td>
	       <td width="108"><font color="green">
		   <input type="hidden" name="prod" value="<% out.print(rs.getString("prod")); %>"><center><% out.print(rs.getString("prod")); %></input>
		   </font></td>
		   <td width="40"><font color="green">
		   <input type="hidden" name="pr" value="<% out.print(rs.getString(3)); %>"><center>
		   <% out.print(rs.getString(3)); 
		   amt=amt+Integer.parseInt(rs.getString(3));%> Rs.</input>
		   </font></td>
		   <td width="60"><font color="red"><center><input type="submit" value="Remove"/></td></tr></font> </font></form></table>
		  
		   </center>
		<%			  
		  }
		  %>
		<form action="buys002.jsp"><table align="center" bgcolor="cyan" border="2" width="600" height="50"><td><font color="blue">
		<center><input type="hidden" value="<%out.print(amt);%>" name="amt">TOTAL AMOUNT :&nbsp <%out.print(amt);%>&nbspRS. </center>
		</font></td> <% session.setAttribute("amt",amt); %>
		</td>
		</table></br>
		<center><Button type="submit">Check Out</button> </center></form>
		<%if(i==1){ %>
		 <jsp:forward page="NoCart.jsp" />
		 <%}%>
		<%		
		  
rs.close (); 
ps.close (); 
conn.close ();		  
   }	
catch (SQLException e) { 
out.println (e); 
}    
%>