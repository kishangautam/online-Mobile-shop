<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
 
/* Style the submit button with a specific background color etc */
button[type=submit] {
    background-color: lightgreen;
    color: white;
    padding: 1px 70px;
    border: 2px;
    border-radius: 8px;
    cursor: pointer;
}

/* When moving the mouse over the submit button, add a darker green color */
button[type=submit]:hover {
    background-color: red;
}

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
		 String a="iphone 4";
		 String sql="select * from item where prod=?";
		 
		 ps=conn.prepareStatement(sql); 
		  ps.setString(1,a);
		  rs = ps.executeQuery ();
		  %>
<table width="1200" height="102" border="0">
  <tr>
    <td width="300" height="89"><img src="head.png" width="400" height="88" alt="Logo" />
    </td>
    <td width="772"><table width="800" height="88" border="0">
      <tr>
        <td width="613" class="right">24X7 Customer Support - <a href="ContactUs.jsp">Contact us</a>  | <a href="home.jsp">Home</a> | 
        <% if(session.getAttribute("uname")==null) {
			%>
            <a href="login.jsp">Login</a> | <a href="register.jsp">Signup</a>
            <%} else {
				%>
				<%=session.getAttribute("uname")%>
                <a href="logout.jsp">Logout</a> | <a href="Profile.jsp">Profile</a> | <a href="Cart.jsp">Cart</a>
                <%}%>
                </td>
      </tr>
      
    </table>
	 </tr>
    </table>
    <hr color="blue"/>
	</td><table width="1210" height="2"  border="2" bgcolor="lightGreen">
		<tr><center><H1><marquee bgcolor="Yellow
	">MOBILE BRANDS</marquee></h1></center></tr>
          
		<tr><td> <center><form action="Apple.jsp">
           <button type="submit" value="APPLE" /><H4>APPLE</form></center>
		   </td>
           <td> <center><form action="samsung.jsp">
            <button type="submit" value="SAMSUNG" /><H4>SAMSUNG</form></center></td>
           <td> <center><form action="nokia.jsp">
            <button type="submit" value="NOKIA" /><H4>NOKIA</form></center></td>
          
            <td> <center><form action="sony.jsp">
        <button type="submit" value="SONY" /><H4>SONY</form></center></td>
          
            <td height="22"> <center><form action="htc.jsp">
           <button type="submit" value="HTC" /><H4>HTC</form></center></td>
          
            <td> <center><form action="lg.jsp">
         <button type="submit" value="LG" /><H4>LG </form></center></td>
          </center></tr>
        </table>
<h1><font color=""><center><img src="new/apple2.jpg"></center</font></h1></td>
<table width="1200" height="258" border="1">
						<tr>
						<td width="228">
						<table width="120" height="173" border="0" align="center">
						<tr>
						<td><a href="iphone4.jsp"><img src="images/Apple/iphone4.jpg" width="104" height="165"></a></td>
						</tr>
</table>
						<p class="center1">iphone 4</p>
						<p class="center1"><% if(rs.next())out.println("Rs. "+rs.getString("pr"));%></p>
						</td>
						<td width="240" class="center1"><table width="117" height="173" border="0" align="center">
              <tr>
                <td width="111"><form action="iphone5.jsp"> 
<input type="hidden" name="product" value="S002">
<input name="buy" type="image" value="s4" src="images/Apple/iphone5.jpg" width="100" height="165"> 
</form></td>
              </tr>
            </table></p>
              <p>iphone 5s</p>
              <p><% String b1="iphone 5s";
		 String b2="select * from item where prod=?";
		 
		 ps=conn.prepareStatement(b2); 
		  ps.setString(1,b1);
		  rs = ps.executeQuery ();
		  if(rs.next())out.println("Rs. "+rs.getString("pr"));%></p></td>
            <td width="224"><table width="120" height="173" border="0" align="center">
              <tr>
                <td><form action="iphone6.jsp"> 
<input type="hidden" name="product" value="L001"> 
<input name="buy" type="image" value="g pro" src="images/Apple/iphone6.jpg" width="104" height="165"> 
</form></td>
              </tr>
            </table>
              <p class="center1">iphone 6</p>
              <p class="center1"><% String c1="iphone 6";
		 String c2="select * from item where prod=?";
		 
		 ps=conn.prepareStatement(c2); 
		  ps.setString(1,c1);
		  rs = ps.executeQuery ();
		  if(rs.next())out.println("Rs. "+rs.getString("pr"));%></p>
            </td>
          </tr>
        </table><table width="1200" height="258" border="1">
          <tr>
            <td width="228"><table width="120" height="173" border="0" align="center">
              <tr>
                <td><form action="iphone7.jsp"> 
<input type="hidden" name="product" value="S003"> 
<input name="buy" type="image" value="grand" src="images/Apple/iphone7.jpg" width="114" height="165"> 
</form></td>
              </tr>
            </table>
              <p class="center1">iphone 7</p>
              <p class="center1"><% String d1="iphone 7";
		 String d2="select * from item where prod=?";
		 
		 ps=conn.prepareStatement(d2); 
		  ps.setString(1,d1);
		  rs = ps.executeQuery ();
		  if(rs.next())out.println("Rs. "+rs.getString("pr"));%></p>
            </td>
            <td width="240" class="center1"><table width="117" height="173" border="0" align="center">
              <tr>
                <td width="111"><form action="iphone7c.jsp"> 
<input type="hidden" name="product" value="S004">
<input name="buy" type="image" value="s4" src="images/Apple/iphone7c.jpg" width="100" height="165"> 
</form></td>
              </tr>
            </table></p>
              <p>iphone 7c</p>
              <p><% String e1="iphone 7c";
		 String e2="select * from item where prod=?";
		 
		 ps=conn.prepareStatement(e2); 
		  ps.setString(1,e1);
		  rs = ps.executeQuery ();
		  if(rs.next())out.println("Rs. "+rs.getString("pr"));%></p></td>
            <td width="224"><table width="120" height="173" border="0" align="center">
              <tr>
                <td><form action="iphone7p.jsp"> 
<input type="hidden" name="product" value="L001"> 
<input name="buy" type="image" value="g pro" src="images/Apple/iphone7p.jpg" width="104" height="165"> 
</form></td>
              </tr>
            </table>
              <p class="center1">iphone 7p</p>
              <p class="center1"><% String f1="iphone 7p";
		 String f2="select * from item where prod=?";
		 
		 ps=conn.prepareStatement(f2); 
		  ps.setString(1,f1);
		  rs = ps.executeQuery ();
		  if(rs.next())out.println("Rs. "+rs.getString("pr"));%></p>
            </td>
          </tr>
        </table><%		
		  
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