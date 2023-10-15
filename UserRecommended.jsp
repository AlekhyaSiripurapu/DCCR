<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Recommend</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium600w.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style6 {font-size: 22px}
.style9 {color: #FFFFFF}
.style10 {font-weight: bold}
.style11 {font-weight: bold}
.style12 {font-weight: bold}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style6">DCCR Deep Collaborative Conjunctive Recommender for Rating Prediction
</a><a href="index.html"></a></h1>
      </div>
      <div class="searchform"></div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="314" alt="" /></a> <a href="#"><img src="images/slide2.jpg"  width="960" height="314" alt="" /></a> <a href="#"><img src="images/slide3.jpg"  width="960" height="314" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
      <div class="rss">
        <p>&nbsp;</p>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home</span></a></li>
          <li><span><a href="Admin.jsp">Admin</a></span></li>
          <li class="active"><a href="User.html"><span>User</span></a></li>
          <li><span><a href="Register.html">Register</a></span></li>
          <li><a href="contact.html"><span></span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>User Recommended </span></h2>
          <div class="clr"></div>
          <p>  
		   <%@ include file="connect.jsp" %>
			<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
		  <%

    String uname=(String)application.getAttribute("uname");	

	String from="",to="",s3="",details="",id="",dt="";
	int i=0,j=0;

      	try 
	{
      		
      		
			
        
           String query="select * from imagerecommend where recommendto='"+uname+"'"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		from=rs.getString(1);
		 to=rs.getString(2);
		details=rs.getString(3);
		id=rs.getString(4);

		
		
	
		   %>

<table width="453" border="0" align="center">
  <tr>
    <td width="179" bgcolor="#FF0000"><div align="left" class="style5 style9 style10">
      <div align="center">Product ID</div>
    </div></td>
    <td width="264"><%=id%></td>
  </tr>
  <tr>
    <td bgcolor="#FF0000"><div align="left" class="style5 style9 style11">
      <div align="center">Details</div>
    </div></td>
    <td><%=details%></td>
  </tr>
  <tr>
    <td bgcolor="#FF0000"><div align="left" class="style5 style9 style12">
      <div align="center">View the Topic</div>
    </div></td>
    <td><div align="left"><a href="AllRecommendedPost11.jsp?id=<%=id%>&from=<%=from%>&to=<%=to%>"><strong>View&nbsp;</strong></a></div></td>
  </tr>
</table>

<p align="center"><strong>

  <%
out.println("------------------------------------------------------------------------------------------------------------");
	 
	   }
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%></p>
<p align="right"><a href="UserMain.jsp">Back</a></p>
        </div>
        <div class="article">
          <h2>&nbsp;</h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li></li>
            <li><a href="UserMain.jsp">User Main <br />
            </a></li>
            <li><a href="User.html">Log Out<br />
            </a></li>
            <li></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
          <div class="clr"></div>
          <ul class="ex_menu"><li></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">&nbsp;</p>
      <p class="rf">&nbsp;</p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>
