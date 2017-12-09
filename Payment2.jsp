<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
/* Style the submit button with a specific background color etc */
input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 40px;
    border: 2px;
    border-radius: 4px;
    cursor: pointer;
}

/* When moving the mouse over the submit button, add a darker green color */
input[type=submit]:hover {
    background-color: #45a049;
}

.right {	text-align: right;
}

</style>
</head>
<body background="b98c9470ddaeaeb750279ccd1e38ee40.jpg">
<%@ page language="java" %>
<%@ page import="java.sql.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
		  <%@ page import="java.text.SimpleDateFormat" %>
         <%@ page import="java.text.DateFormat" %>
         <%@ page import="java.util.Date" %>
         <%@ page import="java.util.Calendar" %>
		
			 
<table width="1200" height="102" >
  <tr>
    <td width="205" height="89"><img src="head.png" width="400" height="88" alt="Logo" />
    </td>
    <td width="772"><table width="800" height="88" border="0">
      <tr>
        <td width="713" class="right">24X7 Customer Support - <a href="home.jsp">Home</a> | 
        <% if(session.getAttribute("uname")==null) {
			%>
           <jsp:forward page="login1.jsp" />
            <%} else {
				%>
				<%=session.getAttribute("uname")%>
                <a href="logout.jsp">Logout</a>
                <%}%>
                </td>
      </tr>
      <tr>
        <td><form id="form1" name="form1" method="post" action="search.jsp">
          
        </form></td>
      </tr>
    </table>
   </td>
  </tr>
  </table>
  <hr color="blue"/>
  
  <% String str3="";
       PreparedStatement ps1;
       PreparedStatement ps2;
       PreparedStatement ps3;
       PreparedStatement ps4;
       PreparedStatement ps5;
        Connection conn;
        ResultSet rs1= null;
        ResultSet rs2= null;
        ResultSet rs3= null;
        ResultSet rs4= null;
        ResultSet rs5= null;
        Class.forName("oracle.jdbc.driver.OracleDriver");
        conn=DriverManager.getConnection("jdbc:oracle:thin:@YOGI-PC:1521:xe","system","12345");
      %> 

<% 
String a =String.valueOf(session.getAttribute("uname")); 
String b =String.valueOf(session.getAttribute("uid")); 
String sql1 = "SELECT * from register1 where name=? and id=?";   
String sql2 = "SELECT prod from addtoCart where name=?";    
String sql3 = "SELECT pr from addtoCart where name=?";    
String sql4 = "insert into orderProduct2 values(?,?,?,?,?,?,?)"; 
String sql5 = "delete from addtocart where name=?"; 

try { 
ps1 = conn.prepareStatement (sql1);  
ps2 = conn.prepareStatement (sql2); 
ps3 = conn.prepareStatement (sql3); 
ps4 = conn.prepareStatement (sql4); 
ps5 = conn.prepareStatement (sql5); 

Date date=new Date();
DateFormat sdf=new SimpleDateFormat("dd-MM-yyyy");
String str=sdf.format(date);
Calendar c=Calendar.getInstance();
c.setTime(sdf.parse(str));
c.add(Calendar.DATE,3);
String str2=sdf.format(c.getTime());
str3=str2;
ps1.setString (1,a);      
ps1.setString (2,b); 
rs1 = ps1.executeQuery ();
%><%

ps2.setString (1,a);
rs2 = ps2.executeQuery ();

ps3.setString (1,a);
rs3 = ps3.executeQuery ();

while(rs2.next())
{
if(rs3.next()||rs1.next()) {	%>

	
	<%
ps4.setString (1,a); 
ps4.setString (2,rs2.getString("prod")); 
ps4.setString (3,"cash on delivery"); 
ps4.setString (4,rs3.getString("pr")); 

ps4.setString (5,String.valueOf(session.getAttribute("phone"))); 
ps4.setString (6,String.valueOf(session.getAttribute("address")));

ps4.setString (7,str2);
}

rs4 = ps4.executeQuery ();
}

ps5.setString (1,a);
rs5 = ps5.executeQuery ();

ps1.close (); 
ps2.close (); 
ps3.close (); 
ps4.close (); 
ps5.close (); 


rs1.close (); 
rs2.close (); 
rs3.close (); 
rs4.close (); 
rs5.close (); 
conn.close ();
}
catch (Exception e) { 
out.println(e);
}
 

%>



</br></br></br></br>
<h2> <center><script type="text/javascript">
var d=new Date();
function Redirect()
{
    window.location="home.jsp";
}
setTimeout('Redirect()', 5000);
document.write("Order will be Deliverd! Before ");
</script>
<%out.println(str3);%>
</h2>
<center><h4>Click <a href="home.jsp">here</a> to Return the home page.</h4>

