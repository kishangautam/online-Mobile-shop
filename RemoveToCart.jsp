<html>
<meta http-equiv="REFRESH" content="0.0001;url=http://localhost:1994/yogi/Cart.jsp">
</head>
<body background="b98c9470ddaeaeb750279ccd1e38ee40.jpg">
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
		 String a=String.valueOf(session.getAttribute("uname"));
		 String sql="delete from addtocart where name=? and prod=?";
		 
		 ps=conn.prepareStatement(sql); 
		  ps.setString(1,a);
		  ps.setString(2,request.getParameter("prod"));
		  rs = ps.executeQuery ();		  
		  
rs.close (); 
ps.close (); 
conn.close ();		  
   }	
catch (SQLException e) { 
out.println (e); 
}    
%>
