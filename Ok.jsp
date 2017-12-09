<html>
<meta http-equiv="REFRESH" content="2;url=http://localhost:1994/yogi/home.jsp">

<head>


<style>
 /* Style inputs with type="text", select elements and textareas */
input[type=text], select, textarea {
    width: 100%; /* Full width */
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
    border: none;
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
<body background="turnpike-blur.jpgw=1200.jpg">
<%@ page language="java" %>
<%@ page import="java.sql.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
         <%@ page import="java.text.SimpleDateFormat" %>
         <%@ page import="java.text.DateFormat" %>
         <%@ page import="java.util.Date" %>
		
			 
<table width="1200" height="102" >
  <tr>
    <td width="205" height="89"><img src="head.png" width="400" height="88" alt="Logo" />
    <hr color="blue"/></td>
    <td width="772"><table width="800" height="88" border="0">
      <tr>
        <td width="713" align="right" class="right">24X7 Customer Support -| 
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
      <tr>
        <td></td>
      </tr>
    </table>
    <hr color="blue"/></td>
  </tr>
  </table>

  <%  try   
		  {
       PreparedStatement ps;
        Connection conn;
        ResultSet rs= null;
       Class.forName("oracle.jdbc.driver.OracleDriver");
        conn=DriverManager.getConnection("jdbc:oracle:thin:@YOGI-PC:1521:xe","system","12345");
      
				
	 ps=conn.prepareStatement("insert into ContactUs values(?,?,?,?,?)"); 

	 ps.setString(1,request.getParameter("firstname"));
	 ps.setString(2,request.getParameter("lastname"));
	 ps.setString(3,request.getParameter("mailid"));
	 ps.setString(4,request.getParameter("country"));
	 ps.setString(5,request.getParameter("subject"));	
	 %> <br><br><br><br><br><br><center><h1><font color="Cyan">Thanku You! to Contact with Us<%
 
rs = ps.executeQuery();
rs.close (); 
ps.close (); 
 conn.close ();
}
catch (SQLException e) { 
out.println (e); 
}
	%>