<html>
<head>


<style>
 /* Style inputs with type="text", select elements and textareas */
input[type=text], select, textarea {
    width: 50%; /* Full width */
    padding: 12px; /* Some padding */ 
    border: 1px solid #ccc; /* Gray border */
    border-radius: 4px; /* Rounded borders */
    box-sizing: border-box; /* Make sure that padding and width stays in place */
    margin-top: 6px; /* Add a top margin */
    margin-bottom: 16px; /* Bottom margin */
    resize: vertical /* Allow the user to vertically resize the textarea (not horizontally) */
}

/* Style the submit button with a specific background color etc */
input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: 2px;
    border-radius: 4px;
    cursor: pointer;
}

/* When moving the mouse over the submit button, add a darker green color */
input[type=submit]:hover {
    background-color: #45a049;
}

/* Add a background color and some padding around the form */
.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
	 
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
<body >
<%@ page language="java" %>
<%@ page import="java.sql.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
         <%@ page import="java.text.SimpleDateFormat" %>
         <%@ page import="java.text.DateFormat" %>
         <%@ page import="java.util.Date" %>
		
			 
<table width="1200" height="102" >
  <tr>
    <td width="205" height="89"><img src="head.png" width="400" height="88" alt="Logo" />
   </td>
    <td width="772"><table width="800" height="88" border="0">
      <tr>
        <td width="713" align="right" class="right">24X7 Customer Support -| <a href="home.jsp">Home</a>
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
   </td>
  </tr>
  </table>
 <hr color="blue"/>
<center><div class="container">
  <form action="Ok.jsp">

    <label for="fname">First Name</label></br> 
    <input type="text" id="fname" name="firstname" placeholder="Your name.."></br>

    <label for="lname">Last Name</label></br>
    <input type="text" id="lname" name="lastname" placeholder="Your last name.."></br>
	
	<label for="mailid">E-mail</label></br>
    <input type="text" id="mail" name="mailid" placeholder="Your E-mail id .."></br>

    <label for="country">Country</label></br>
    <select id="country" name="country">
      <option value="australia">USA</option>
      <option value="canada">DUBAI</option>
      <option value="usa">INDIA</option>
    </select></br>
    <label for="subject">Subject</label></br>
    <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea></br>

    <input type="submit" value="Submit">

  </form>
</div>



<!-- Container element -->
<div class="parallax"></div>
</body>
</html>