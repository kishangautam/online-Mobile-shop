<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>REG</title>
<style type="text/css">
.right {text-align: right;
}
</style>
</head>

<body background="b98c9470ddaeaeb750279ccd1e38ee40.jpg">
 <%@ page language="java" %>
        <table width="1200" height="102" border="0">
          <tr>
            <td width="400" height="96"><img src="head.png" width="400" height="88" alt="Logo" /></td>
            <td width="726" class="right">24X7 Customer Support - <a href="contact.jsp">Contact us</a> | <a href="home.jsp">Home</a> |
              <% if(session.getAttribute("uname")==null) {
			%>
              <a href="login.jsp">Login</a>
              <%} else {
				%>
              <a href="logout.jsp">Logout</a>
              <%}%></td>
          </tr>
        </table><hr color="blue"/><br><br><br><center><h2>
        <%@ page import="java.sql.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
       
<%
        String m=null, mn=null;
        String s=request.getParameter("name");
        String s1=request.getParameter("id");
        String s2=request.getParameter("password");
        String s3=request.getParameter("date");
        String s4=request.getParameter("address");
		String s5=request.getParameter("phone");
        PreparedStatement ps;
        Connection con;
        ResultSet rs= null;
       Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@YOGI-PC:1521:xe","system","12345");
      
         Statement st=con.createStatement();
       
          ps= con.prepareStatement("insert into register1 values (?,?,?,?,?,?)");
            ps.setString(1,s);
            ps.setString(2,s1);
            ps.setString(3,s2);
            ps.setString(4,s3);
            ps.setString(5,s4);
           ps.setString(6,s5);
               int insertResult = ps.executeUpdate();
             if (insertResult!=0)
            {
                 out.println("Successfully registered!");
            }          
        %>
        <h3>
             <center> <script type="text/javascript">
var d=new Date();
function Redirect()
{
    window.location="login.jsp";
}
setTimeout('Redirect()', 3000);
document.write("Redirect to Login Page");
</script>
                
</body>
</html>