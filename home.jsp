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
<body >
<%@ page language="java" %>
<%@ page import="java.sql.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
         <%@ page import="java.text.SimpleDateFormat" %>
         <%@ page import="java.text.DateFormat" %>
         <%@ page import="java.util.Date" %>
		
			 
<table width="1200" height="102" border="0">
  <tr>
    <td width="300" height="89"><img src="head.png" width="400" height="88" alt="Logo" />
    </td>
    <td width="772"><table width="800" height="88" border="0">
      <tr>
        <td width="613" class="right">24X7 Customer Support - <a href="ContactUs.jsp">Contact us</a>  |
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
    <hr color="green"/>
	</td><table width="1210"  bgcolor="lightGreen" border="1">
		<tr><H1><marquee bgcolor="Yellow
	">MULTIBRANDS PHONES</marquee></h1></tr>
          
		<tr><td> <center><form action="Apple.jsp">
           <button type="submit" value="APPLE" /><H4><b>APPLE</form></b></center>
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
     
	
	
 <center><h1><img src="new/unnamed.gif" width="100" height="100"></h1></center>
      </tr>
	  
	
<table bordercolor="cyan" width="1200" height="258" border="3">
         

	 		  
            <td width="228"><table  width="120" height="173" border="0" align="center">
              <H2><img src="new/lg.jpg" width="150" height="100"></h2><tr>
                <td><form action="X_Style.jsp"> 
<input type="hidden" name="product" value="S003"> 
<input name="buy" type="image" value="grand" src="images/_20170426_085010.jpg" width="114" height="165"> 
</form></td>
              </tr>
            </table>
             &nbsp&nbsp&nbsp&nbsp <p class="center1">X Style</p>
            </td>
            <td width="240" class="center1"><table width="117" height="173" border="0" align="center">
              <tr>
                </br></br></br><td width="111"><form action="X_Power.jsp"> 
<input type="hidden" name="product" value="S004">
<input name="buy" type="image" value="s4" src="images/_20170426_085019.jpg" width="100" height="165"> 
</form></td>
              </tr>
            </table>
              <p>X Power</p>
            <td width="224"><table width="120" height="173" border="0" align="center">
              <tr>
                 </br></br></br><td><form action="G_Pad.jsp"> 
<input type="hidden" name="product" value="L001"> 
<input name="buy" type="image" value="g pro" src="images/_20170426_085002.jpg" width="104" height="165"> 
</form></td>
              </tr>
            </table>
              <p class="center1">G Pad III 10.1 FHD</p>
            </td>
          </tr>
		  </tr>
		  
		  
		  <tr bgcolor="lightyellow">		  
            <td width="228"><table width="120" height="173" border="0" align="center">
              <H2><img src="new/samsung.png" width="150" height="100"></h2><tr>
                <td><form action="Samsung_Galaxy_S8.jsp"> 
<input type="hidden" name="product" value="S003"> 
<input name="buy" type="image" value="grand" src="images/_20170426_084955.jpg" width="114" height="165"> 
</form></td>
              </tr>
            </table>
             &nbsp&nbsp&nbsp&nbsp <p class="center1">Samsung Galaxy S8</p>
            </td>
            <td width="240" class="center1"><table width="117" height="173" border="0" align="center">
              <tr>
                </br></br></br><td width="111"><form action="Samsung_Galaxy_S8P.jsp"> 
<input type="hidden" name="product" value="S004">
<input name="buy" type="image" value="s4" src="images/_20170426_084947.jpg" width="100" height="165"> 
</form></td>
              </tr>
            </table>
              <p>Samsung Galaxy S8+</p>
            <td width="224"><table width="120" height="173" border="0" align="center">
              <tr>
                 </br></br></br><td><form action="Samsung_Galaxy_C9Pro.jsp"> 
<input type="hidden" name="product" value="L001"> 
<input name="buy" type="image" value="g pro" src="images/_20170426_084929.jpg" width="104" height="165"> 
</form></td>
              </tr>
            </table>
              <p class="center1">Samsung Galaxy C9 Pro</p>
            </td>
          </tr>
		  
		  
		  
		  <tr> 
            <td width="228"><table width="120" height="173" border="0" align="center">
              <H2><img src="new/nokia.jpg" width="150" height="100"></h2> <tr>
                <td><form action="Nokia_3.jsp"> 
<input type="hidden" name="product" value="S003"> 
<input name="buy" type="image" value="grand" src="images/_20170426_084839.jpg" width="114" height="165"> 
</form></td>
              </tr>
            </table>
              <p class="center1">Nokia 3</p>
            </td>
            <td width="240" class="center1"><table width="117" height="173" border="0" align="center">
              <tr>
                 </br></br></br><td width="111"><form action="Nokia_5.jsp"> 
<input type="hidden" name="product" value="S004">
<input name="buy" type="image" value="s4" src="images/_20170426_084905.jpg" width="100" height="165"> 
</form></td>
              </tr>
            </table></p>
              <p>Nokia 5</p>
            <td width="224"><table width="120" height="173" border="0" align="center">
              <tr>
                 </br></br></br><td><form action="Nokia_6.jsp"> 
<input type="hidden" name="product" value="L001"> 
<input name="buy" type="image" value="g pro" src="images/_20170426_084858.jpg" width="104" height="165"> 
</form></td>
              </tr>
            </table>
              <p class="center1">Nokia 6</p>
            </td>
			
			
			
			 <tr bgcolor="lightyellow"> 
            <td width="228"><table width="120" height="173" border="0" align="center">
              <H2><img src="new/sony.png" width="150" height="100"></h2><tr>
                <td><form action="Xperia_L1.jsp"> 
<input type="hidden" name="product" value="S003"> 
<input name="buy" type="image" value="grand" src="images/_20170426_084826.jpg" width="114" height="165"> 
</form></td>
              </tr>
            </table>
              <p class="center1">Xperia L1</p>
            </td>
            <td width="240" class="center1"><table width="117" height="173" border="0" align="center">
              <tr>
                 </br></br></br><td width="111"><form action="Xperia_XZs.jsp"> 
<input type="hidden" name="product" value="S004">
<input name="buy" type="image" value="s4" src="images/_20170426_084552.jpg" width="100" height="165"> 
</form></td>
              </tr>
            </table></p>
              <p>Xperia XZs</p>
            <td width="224"><table width="120" height="173" border="0" align="center">
              <tr>
                 </br></br></br><td><form action="Xperia_Z5_premium.jsp"> 
<input type="hidden" name="product" value="L001"> 
<input name="buy" type="image" value="g pro" src="images/_20170426_084559.jpg" width="104" height="165"> 
</form></td>
              </tr>
            </table>
              <p class="center1">Xperia Z5 premium</p>
            </td>
          </tr>
		  
		  
		  
		   <tr> 
            <td width="228"><table width="120" height="173" border="0" align="center">
             <H2><img src="new/apple2.jpg" width="150" height="100"></h2> <tr>
                <td><form action="iPad_Pro.jsp"> 
<input type="hidden" name="product" value="S003"> 
<input name="buy" type="image" value="grand" src="images/_20170426_084503.jpg" width="114" height="165"> 
</form></td>
              </tr>
            </table>
              <p class="center1">iPad Pro 9.7</p>
            </td>
            <td width="240" class="center1"><table width="117" height="173" border="0" align="center">
              <tr>
                 </br></br></br><td width="111"><form action="iPhone_8.jsp"> 
<input type="hidden" name="product" value="S004">
<input name="buy" type="image" value="s4" src="images/_20170426_092129.jpg" width="100" height="165"> 
</form></td>
              </tr>
            </table></p>
              <p>iPhone 8</p>
            <td width="224"><table width="120" height="173" border="0" align="center">
              <tr>
                 </br></br></br><td><form action="i_Pad.jsp"> 
<input type="hidden" name="product" value="L001"> 
<input name="buy" type="image" value="g pro" src="images/_20170426_084544.jpg" width="104" height="165"> 
</form></td>
              </tr>
            </table>
              <p class="center1">iPad Air2</p>
            </td>
          </tr>
		  
		   
		   <tr bgcolor="lightyellow"> 		  

           <td width="228"><table width="120" height="173" border="0" align="center">
             <H2><img src="new/htc.png" width="150" height="100"></h2> <tr>
                <td><form action="U_Play.jsp"> 
<input type="hidden" name="product" value="S003"> 
<input name="buy" type="image" value="grand" src="images/_20170426_084537.jpg" width="114" height="165"> 
</form></td>
              </tr>
            </table>
              <p class="center1">U Play</p>
            </td>
            <td width="240" class="center1"><table width="117" height="173" border="0" align="center">
              <tr>
                </br></br></br> <td width="111"><form action="U_Ultra.jsp"> 
<input type="hidden" name="product" value="S004">
<input name="buy" type="image" value="s4" src="images/_20170426_084742.jpg" width="100" height="165"> 
</form></td>
              </tr>
            </table></p>
              <p>U Ultra</p>
            <td width="224"><table width="120" height="173" border="0" align="center">
              <tr>
                </br></br></br> <td><form action="One_X10.jsp"> 
<input type="hidden" name="product" value="L001"> 
<input name="buy" type="image" value="g pro" src="images/_20170426_084723.jpg" width="104" height="165"> 
</form></td>
              </tr>
            </table>
              <p class="center1">One X10</p>
            </td>
          </tr>
		  
          </tr>
        </table></td>
      
    </table>

</body>
</html>
