<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
.right {	text-align: right;
}
 /* Style inputs with type="text", select elements and textareas */
input[type=text], select, textarea {
    width: 100%; /* Full width */
    padding: 4px; /* Some padding */ 
    border: 1px solid #ccc; /* Gray border */
    border-radius: 4px; /* Rounded borders */
    box-sizing: border-box; /* Make sure that padding and width stays in place */
    margin-top: 6px; /* Add a top margin */
    margin-bottom: 10px; /* Bottom margin */
    resize: vertical /* Allow the user to vertically resize the textarea (not horizontally) */
}
 /* Style inputs with type="text", select elements and textareas */
input[type=password], select, textarea {
    width: 100%; /* Full width */
    padding: 4px; /* Some padding */ 
    border: 1px solid #ccc; /* Gray border */
    border-radius: 4px; /* Rounded borders */
    box-sizing: border-box; /* Make sure that padding and width stays in place */
    margin-top: 6px; /* Add a top margin */
    margin-bottom: 10px; /* Bottom margin */
    resize: vertical /* Allow the user to vertically resize the textarea (not horizontally) */
}
 /* Style inputs with type="text", select elements and textareas */
input[type=number], select, textarea {
    width: 100%; /* Full width */
    padding: 4px; /* Some padding */ 
    border: 1px solid #ccc; /* Gray border */
    border-radius: 4px; /* Rounded borders */
    box-sizing: border-box; /* Make sure that padding and width stays in place */
    margin-top: 6px; /* Add a top margin */
    margin-bottom: 10px; /* Bottom margin */
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
</style>
</head>

<body background="b98c9470ddaeaeb750279ccd1e38ee40.jpg">
 <center>
   <table width="1100" height="102" border="0">
     <tr>
       <td width="400" height="96"><img src="head.png" width="400" height="88" alt="Logo" /></td>
       <td width="726" class="right">24X7 Customer Support - <a href="ContactUs.jsp">Contact us</a> | <a href="home.jsp">Home</a> |
<% if(session.getAttribute("uname")==null) {
			%>
         <a href="login.jsp">Login</a>
         <%} else {
				%>
         <a href="logout.jsp">Logout</a>
         <%}%></td>
     </tr>
   </table>
   <hr color="blue"/>
   <strong><em>Register here</em></strong>
   <form action="reg.jsp" method="post"><table><b>
           <tr><td>Name</td><td><input type="text" name="name"></td></tr>
            <tr><td>User ID</td><td><input type="text" name="id"></td></tr>
            <tr><td>Password</td><td><input type="password" name="password"></td></tr>
            <tr><td>Phone No.</td><td><input type="number" name="phone" maxlength="10"></td></tr>
            <tr><td>Date of Birth</td><td><input type="text" name="date"></td></tr>
            <tr><td>Address</td><td><textarea name="address"></textarea></td></tr>
                <br>
                </b></table><br />
     <input type="submit" value="Register" />
                    </form>
            <br><hr color="blue"/>
              Already Registered!! To Login <a href="login.jsp">Click Here</a>
                <hr color="blue"/>
                
    </center>
</body>
</html>