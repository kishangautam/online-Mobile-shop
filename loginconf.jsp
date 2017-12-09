<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body background="b98c9470ddaeaeb750279ccd1e38ee40.jpg">

 <%@ page language="java" %>
        <%@ page import="java.sql.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
<% 
       PreparedStatement ps;
        Connection conn;
        ResultSet rs= null;
       Class.forName("oracle.jdbc.driver.OracleDriver");
        conn=DriverManager.getConnection("jdbc:oracle:thin:@YOGI-PC:1521:xe","system","12345");
      
         Statement st=conn.createStatement();
%> 
<% 
boolean flag = false; 

String name = request.getParameter ("id"); 
String password = request.getParameter ("password"); 
%>

<% 
 
String sql = "SELECT name from register1 where id=? And password =?"; 

try {  
ps = conn.prepareStatement (sql); 
ps.setString (1,name); 
ps.setString (2,password); 
rs = ps.executeQuery (); 
if (rs.next ()) { 
out.println (rs.getString ("name")); 
flag = true; 
session.setAttribute("uname", rs.getString ("name")); 
session.setAttribute("uid", rs.getString ("id")); 
} else { 
request.setAttribute("err", "user name or password error!"); 
}

rs.close (); 
ps.close (); 
conn.close ();

} catch (Exception e) { 
out.println (e); 
} 
%>


<% 

if (flag) { 

%>

<jsp:forward page="loginsuccess.jsp" />

<%

} 
else { 
%>

<jsp:forward page="loginfail.jsp"/> 
<% 
} 
%>
</body>
</html>