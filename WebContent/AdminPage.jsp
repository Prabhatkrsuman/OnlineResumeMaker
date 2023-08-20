<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Panel</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style>
body{
margin:0px;
border:0px;
}
#header{
width:100%;
height:120px;
background:grey;
color:white;
}
#sidebar{
width:300px;
height:400px;
background:lightgrey;
float:left;
}
#data{
height:700px;
background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url("https://images.unsplash.com/photo-1492539763615-dd9bfec6ff85?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1053&q=80");
background-repeat:no-repeat;
background-size:cover;
background-position:center,fixed;
}
#adminlogo{
width:70px;
background:white;
border-radius:70px;
}
ul li{
padding:20px;
border-bottom:2px solid grey;
}
ul li:hover{
background:skyblue;
color:white;
}

</style>
</head>
<body>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="adminlog.jsp">Please Login</a>
<%} else {
%>


<div id="header">
<center><img src="C:\Users\Asus\Desktop\Admin-icon.png" id="adminlogo"><br>Welcome to Admin Panel</center>


</div>

<div id="sidebar">
<ul>
    <li>  Add Data  </li>
 <a href="logout.jsp" style="color:black; text-decoration:none;">  <li>  Delete Data  </li></a>
    <li>  Update Data  </li>
   <a href="rtable.jsp" target="blank" style="color:black; text-decoration:none;"> <li>  Registration Table  </li></a>
   <a href="resumetable.jsp" target="blank" style="color:black; text-decoration:none;"> <li>  Resume Details  </li></a>
   <a href="logout.jsp" style="color:black; text-decoration:none;"> <li>  Log Out  </li></a>

</ul>
</div>
<div id="data"><br>
<center><font size="8" color="red">Hello !!</font>
<font size="4" color="pink" ><p>This is Your Admin Page.</p></font></center></


</div>
<%} %>
</body>
</html>