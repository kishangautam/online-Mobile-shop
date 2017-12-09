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
		
		<table width="1100" height="102" >
  <tr>
    <td width="205" height="89"><img src="head.png" width="400" height="88" alt="Logo" />
   </td>
    <td width="772"><table width="800" height="88" border="0">
      <tr>
        <td width="713" class="right">24X7 Customer Support - <a href="ContactUs.jsp">Contact us</a>  | 
        <% if(session.getAttribute("uname")==null) {
			%>
           <jsp:forward page="login1.jsp" />
            <%} else {
				%>
				<%=session.getAttribute("uname")%>
                <a href="logout.jsp">Logout</a> | <a href="Cart.jsp">Cart</a> 
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
       PreparedStatement ps=null;
       PreparedStatement ps2;
        Connection conn;
        ResultSet rs= null;
        ResultSet rs2= null;
       Class.forName("oracle.jdbc.driver.OracleDriver");
        conn=DriverManager.getConnection("jdbc:oracle:thin:@YOGI-PC:1521:xe","system","12345");
      
         Statement st=conn.createStatement();
		 String a =String.valueOf(session.getAttribute("uname"));
		
		
		 String sql="select * from addtocart where name=? and prod=?";
		 ps2=conn.prepareStatement(sql); 
		  ps2.setString(1,a); 
          ps2.setString(2,request.getParameter("prod"));
		  rs2 = ps2.executeQuery();
		  if(!rs2.next())
		  {
		  ps=conn.prepareStatement("insert into addtocart values(?,?,?)"); 
          ps.setString(1,a); 
          ps.setString(2,request.getParameter("prod"));   
          ps.setString(3,request.getParameter("pr"));   
          rs = ps.executeQuery(); 
		  rs.close (); 
          ps.close (); 
		  }
 
 rs2.close (); 
 ps2.close ();
conn.close ();
}
catch (SQLException e) { 
out.println (e); 
} 
%>
</br></br></br></br></br>
<center>
<font color="red">
<h2>
<%out.print(request.getParameter("prod"));%> ADDED! to Cart</h2></font>
<br><br><br><br><br><br><br><br><h4><font color="lighblue"><script type="text/javascript">
function Redirect()
{
    window.location="home.jsp";
}
document.write("You will be redirected to main page in a few sec.");
setTimeout('Redirect()',2000);
</script></h4>
</body>
</html>