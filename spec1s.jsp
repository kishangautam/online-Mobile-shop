<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
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
<table width="1200" height="102" border="0">
  <tr>
    <td width="205" height="89"><img src="head.png" width="400" height="88" alt="Logo" />
    </td>
    <td width="772"><table width="800" height="88" border="0">
      <tr>
        <td width="713" class="right">24X7 Customer Support - Contact us  | <a href="home.jsp">Home</a> | 
        <% if(session.getAttribute("uname")==null) {
			%>
            <a href="login.jsp">Login</a> | <a href="register.jsp">Signup</a>
            <%} else {
				%>
				<%=session.getAttribute("uname")%>
                <a href="logout.jsp">Logout</a>
                <%}%>
                </td>
      </tr>
   
    </table>
	</table>
    <hr color="blue"/>
	<center><h2><Font color="RED">Specification</center><hr color="blue"/><hr color="blue"/>
<TABLE width="1220" height="700" align="center" bgcolor="lightgreen" border="2" bordercolor="cyan">
<tr>
<td>NETWORK Technology</td>
<td>GSM / CDMA / HSPA / LTE</td></tr>
<tr><td>LAUNCH </td><td>Announced	2017,Status	Not Available. </td></tr><tr><td>BODY </td><td>Dimensions 149.4 x 73.9 x 7.7 mm (5.88 x 2.91 x 0.30 in) </td>
</tr><tr><td>WEIGHT</td><td>	159 g (5.61 oz) </td></tr><tr><td>SIM</td>	<td>Single SIM (Nano-SIM) or Dual SIM (Nano-SIM, dual stand-by) </td>
</tr><tr><td>DISPLAY Type</td>	<td>IPS LCD capacitive touchscreen, 16M colors Size	5.3 inches (~70.1% screen-to-body ratio) </td>
</tr><tr><td>RESOLUTION	</td><td>1440 x 2560 pixels (~554 ppi pixel density) </td>
</tr><tr><td>MULTITOUCH	</td><td>Yes </td>
</tr><tr><td>PROTECTION	</td><td>Corning Gorilla Glass 4 - Always-on display </td>
</tr><tr><td>OS	</td><td>Android 6.0.1 (Marshmallow), upgradable to 7.0 (Nougat) </td>
</tr><tr><td>CHIPSET</td><td>Qualcomm MSM8996 Snapdragon 820 CPU	Quad-core (2x2.15 GHz Kryo & 2x1.6 GHz Kryo) </td>
</tr><tr><td>GPU	</td><td>Adreno 530 </td>
<tr><td>MEMORY </td><td>  Card slot	microSD, up to 256 GB (dedicated slot) - single SIM microSD, up to 256 GB (uses SIM 2 slot) - dual Internal	32 GB, 4 GB RAM </td>
</tr><tr><td>CAMERA</td> <td>	Dual Primary 16 MP (29mm, f/1.8) + 8 MP Secondary (12mm, f/2.4), laser autofocus, OIS (3-axis), LED flash.</td>
</tr><tr><td>FEATURES</td><td>	1/2.6" sensor size @ 29mm, 1/3.2" sensor size @ 12mm, geo-tagging, touch focus, face/smile detection, panorama, HDR Video	2160p@30fps, 1080p@30/60fps, HDR, stereo sound rec</td>
</tr><tr><td>BATTERY</td> <td>Removable Li-Ion 2800 mAh battery Stand-by	Up to 400 h (3G)</td>
</tr></table>