<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
 /* Style inputs with type="text", select elements and textareas */
input[type=text], select, textarea {
    width: 20%; /* Full width */
    padding: 10px; /* Some padding */ 
    border: 1px solid #ccc; /* Gray border */
    border-radius: 4px; /* Rounded borders */
    box-sizing: border-box; /* Make sure that padding and width stays in place */
    margin-top: 6px; /* Add a top margin */
    margin-bottom: 16px; /* Bottom margin */
    resize: vertical /* Allow the user to vertically resize the textarea (not horizontally) */
}
 /* Style inputs with type="text", select elements and textareas */
input[type=password], select, textarea {
    width: 20%; /* Full width */
    padding: 10px; /* Some padding */ 
    border: 1px solid #ccc; /* Gray border */
    border-radius: 4px; /* Rounded borders */
    box-sizing: border-box; /* Make sure that padding and width stays in place */
    margin-top: 6px; /* Add a top margin */
    margin-bottom: 16px; /* Bottom margin */
    resize: vertical /* Allow the user to vertically resize the textarea (not horizontally) */
}

/* Style the submit button with a specific background color etc */
input[type=reset] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: 2px;
    border-radius: 4px;
    cursor: pointer;
}

/* When moving the mouse over the submit button, add a darker green color */
input[type=reset]:hover {
    background-color: #45a049;
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
    border-radius: 8px;
    background-color: #f2f2f2;
    padding: 20px;
	align
	 
}

.right {	text-align: right;
}
</style>
</head>

<body background="b98c9470ddaeaeb750279ccd1e38ee40.jpg">
<table width="1100" height="102" border="0">
  <tr>
    <td width="400" height="96"><img src="head.png" width="400" height="88" alt="Logo" /></td>
    <td width="726" class="right">24X7 Customer Support -  <a href="home.jsp">Home</a> |
      <% if(session.getAttribute("uname")==null) {
			%>
      <a href="login.jsp">Login</a> | <a href="register.jsp">Signup</a>
      <%} else {
				%>
      <a href="logout.jsp">Logout</a>
      <%}%></td>
  </tr>
</table>
<hr color="blue"/>
<p><strong>Username or Password Incorrect!</strong> Click <a href="register.jsp"><strong>here</strong></a> to register.</p>
<center> 
<form action="loginconf.jsp" method="post">
 <p>&nbsp;</p>
  <center><h2><td colspan="2" class="italics"> User Login </td></h2></center></br>

  
 <tr> 
<td><font color="red">User--ID: </font></td> 
<td> <input type="text" name="id"> </td> </br>
</Tr> 
<tr> 
<td><font color="green">Password: </font></td> 
<td> <input type="password" name="password"> </td> </br>
</Tr>  

&nbsp;&nbsp;<input type="submit" value="Log In">
<input type="reset" value="Clear"></br>
</form>
</tr>
</table>
</Center>
<form action="ForgetPassword.jsp">
<tr><font color="red"></br><center>If you are not remember your Password</center></font>
<center><input type="submit" value="Forget Password"> </tr>
</Form> 
</body>
</html>