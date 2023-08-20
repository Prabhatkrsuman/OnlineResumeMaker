<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.menu{
height:80px;
background-color:rgba(0,0,0,0.2);
color:white;
}
.logo{
width:45%;
background:transparent;
}
.leftmenu{
line-height:40px;
float:left;
}
.leftmenu img{
margin-left:8%;
padding-left:0px;
font-height:bold;
line-height:30px;
margin-top:6.8%;
color:blue;
font-size:22px;
font-family:'montserrat',sans-sarif;
}
.rightmenu{
margin-top:1%;
float:right;
list-style-type:none;
}
.rightmenu ul{
margin-left:0%;

}
.rightmenu ul li {
font-family:'montserrat',sans-sarif;
display:inline-block;
list-style:none;
font-size:15px;
color:purple;
font-weight:bold;
line-height:20px;
margin-left:20px;
text-transform:uppercase;
padding:5px 7px;
transition:0.6s ease;
border:1px solid blue;
}
#firstmenu{
color:orange;
}
.rightmenu ul li a{
color:purple;
transition:0.6s ease;
text-decoration:none;
}
.rightmenu ul li:hover{
color:green;
background-color:red;
}

.sites{
width:40px;
height:40px;
text-align:center;
}
 .u{
margin-left:150px;
margin-top:0px;

float:center;
list-style-type:none;
}
.u li {
font-family:'montserrat',sans-sarif;
display:inline-block;
list-style:none;
font-size:15px;
color:purple;
font-weight:bold;
line-height:15px;
margin-left:20px;
margin-top:6px;
text-transform:uppercase;
padding:4px 4px;
transition:0.6s ease;


}
.u li a{
color:purple;
transition:0.6s ease;
text-decoration:none;
position:center;
}
.u li:hover{
color:green;
background-color:#00ffff;
}

.sites{
width:48px;
height:50px;
text-align:center;
}
 .u{
margin-left:150px;
margin-top:0px;

float:center;
list-style-type:none;
}
.u li {
font-family:'montserrat',sans-sarif;
display:inline-block;
list-style:none;
font-size:15px;
color:purple;
font-weight:bold;
line-height:10px;
margin-left:20px;
text-transform:uppercase;
padding:5px 7px;
transition:0.6s ease;

}
.u li a{
color:purple;
transition:0.6s ease;
text-decoration:none;
}
.u li:hover{
color:green;
background-color:#00ffff;
}
.footer {
   
   left: 0%;
   margin-top:0%;
   background-position:fixed;
   height:85px;
   background-color: rgba(0,0,0,0.5);
   color: white;
   text-align: center;
}





</style>
</head>
<body>
<header>
<div class="menu">
      <div class="leftmenu">
             <img src="C:\Users\Asus\Desktop\Rlogo.png" class="logo">
              
      </div>
     <div class="rightmenu">
         <ul>
         <li><a href="Websites.jsp" id="firstmenu">Home</a></li>
       <li> <a href="login.jsp">Log In</a></li>
         <li><a href="index.jsp">Register</a></li>
         <li><a href="adminlog.jsp">Admin</a></li>
         <li><a href="#">About Us</a></li>
         <li><a href="contactus.jsp" target="blank">Contact</a></li>        
         </ul>
     </div>   
   </div>

</header><br><br>
<form action="Resume.jsp" method="post">
<table border="1" align="center" width="60%" bgcolor="skyblue">
	<th bgcolor="orchid"><h1>RESUME</h1></th>
	<tr><th align="left">
<%!String name;%>

<%name=(String)(session.getAttribute("userid"));%>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/makeresume",
        "root", "12345");



String query = "select * from resume where userid = ?";
PreparedStatement prepStmt = con.prepareStatement(query);
prepStmt.setString(1,name);

ResultSet rs= prepStmt.executeQuery();
while(rs.next())
{%>
	 
	
    <h2><b><%out.println(rs.getString("name"));%></b></h2><%out.println(rs.getString("profile"));%>
	<p> <%out.println(rs.getString("p"));%>-<%
	 out.println(rs.getString("fathername"));%></p>
	<p>Vill.-<%out.println(rs.getString("village"));%></p>
	<p>P.o-<%out.println(rs.getString("postoffice"));%></p>
	<p>P.s-<%out.println(rs.getString("policestation"));%></p>
	<p>Dist.-<%out.println(rs.getString("district"));%></p>
	<p><%out.println(rs.getString("state"));%>-
	<%out.println(rs.getString("pincode"));%></p>
	<p>Email Id.:-<%out.println(rs.getString("email"));%></p>
	<p>Mob No.:-<%out.println(rs.getString("councode"));%><%out.println(rs.getString("mobno"));%></p>
	
	 <table border="2" align="left" width="100%" >
 <tr><th bgcolor="violet"><h3>CARRIER OBJECTIVE</h3></th></tr></table>
 <br><p><%out.println(rs.getString("carrier"));%></p>
 <table border="2" align="left" width="100%">
<tr><th bgcolor="violet"><h3>ACADEMIC PROFILE</h3></tr></table><br><br>
<table border="1" width="100%">
<tr><th>Course</th><th>Board</th><th>School/College Name</th><th>Year of Passing</th><th>CGPA</th><th>% Obtain</th></tr>
<tr><td>Matriculation</td><td><%out.println(rs.getString("board1"));%></td><td><%out.println(rs.getString("mschool"));%></td><td><%out.println(rs.getString("year1"));%></td><td><%out.println(rs.getString("cgpa1"));%></td><td><%out.println(rs.getString("obtain1"));%></td></tr>
<tr><td>Intermediate</td><td><%out.println(rs.getString("board2"));%></td><td><%out.println(rs.getString("ischool"));%></td><td><%out.println(rs.getString("year2"));%></td><td><%out.println(rs.getString("cgpa2"));%></td><td><%out.println(rs.getString("obtain2"));%></td></tr>
<tr><td>B.Tech</td><td><%out.println(rs.getString("board3"));%></td><td><%out.println(rs.getString("bcollege"));%></td><td><%out.println(rs.getString("year3"));%></td><td><%out.println(rs.getString("cgpa3"));%></td><td><%out.println(rs.getString("obtain3"));%></td></tr>
</table><br>
<table border="2" align="left" width="100%">
<tr><th bgcolor="violet"><h3>TECHNICAL SKILLS</h3></th></tr></table>
<table width="60%" border="0">
<ol><li><%out.println(rs.getString("skills"));%></li></ol>

<table border="2" align="left" width="100%">
<tr><th bgcolor="violet"><h3>HOBBIES</h3></th></tr>
</table><br><br>

<ol><li><%out.println(rs.getString("hobbies"));%></li></ol>


<table border="2" align="left" width="100%">
<tr><th bgcolor="violet"><h3>PERSONAL DETAILS</h3></th></tr></table>
<table width="80%" border="0">
<tr><th align="left"><h3>NAME &nbsp &nbsp &nbsp &nbsp &nbsp :<%out.println(rs.getString("fullname"));%></h3>
<h4>Father'sName &nbsp  :<%out.println(rs.getString("fn"));%></h4>
<h4>Mother'sName &nbsp:<%out.println(rs.getString("mn"));%></h4>
<h4>D.O.B &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp      :<%out.println(rs.getString("dob"));%></h4>
<h4>Sex &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp :<%out.println(rs.getString("sex"));%></h4>
<h4>Blood Group &nbsp &nbsp :<%out.println(rs.getString("bgroup"));%></h4>
<h4>Marital Status &nbsp:<%out.println(rs.getString("mstatus"));%></h4>
<h4>Religion &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp :<%out.println(rs.getString("religion"));%></h4>
<h4>Nationality &nbsp &nbsp &nbsp :<%out.println(rs.getString("nationality"));%></h4>
</th></tr></table>

<table border="2" align="left" width="100%">

<tr><th bgcolor="violet"><h3>DECLARATION</h3></th></tr></table>
<table border="0" width="100%">
<tr><th align="left">I hereby declare that all the particulars stated above are true to the best of my knowledge and belief.</th></tr>
<tr><th align="right"><%out.println(rs.getString("signpic"));%></th></tr>
<tr><th align="right"><h3>Signature &nbsp &nbsp</h3></th></tr></table>

<%	
}
%>
</th></tr></table>
</form>
<a href="logout.jsp">LOG OUT</a>
<br><br><br>
<footer>
    <div class="footer">
  <ul class="u">
      <li>  <a href="#"> <img src="https://img.icons8.com/color/2x/twitter.png" class="sites" title="Share on twitter"></a></li>
       <li>  <a href="#"><img src="https://img.icons8.com/dusk/2x/facebook.png" class="sites" title="Share on facebook"></a></li>
      <li>   <a href="#"><img src="https://img.icons8.com/office/80/000000/instagram-new.png" class="sites" title="Share on instagram"></a></li>
       <li> <a href="#"> <img src="https://img.icons8.com/color/2x/linkedin.png" class="sites" title="Share on linkedin"></a></li>
      <li>  <a href="#"> <img src="https://img.icons8.com/color/96/000000/whatsapp.png" class="sites" title="Share on whatsapp"></a></li>
      <li>  <a href="terms.html"target="blank"><img src="https://img.icons8.com/plasticine/100/000000/privacy.png" class="sites">Terms & Privacy</a></li>
      
       </ul>  
</div>
</footer>

</body>
</html>