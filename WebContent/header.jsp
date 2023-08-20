<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<style>
.menu{

height:80px;
background-color:rgba(0,0,0,0.5);
}

.leftmenu img{
padding-left:30px;
font-height:bold;
line-height:5%;
margin-top:2%;
color:blue;
font-size:22px;
font-family:'montserrat',sans-sarif;
width:18%;
float:left;
}
.rightmenu{
margin-top:2%;
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
color:white;
transition:0.1s ease;
text-decoration:none;
}
.rightmenu ul li:hover{
color:green;
background-color:red;
}
</style>
</head>
<body>
    <div class="menu">
      <div class="leftmenu">
          <img src="C:\Users\Asus\Desktop\Rlogo.png" class="logo">
              
      </div>
     <div class="rightmenu">
         <ul>
         <li><a href="index.jsp"  id="firstmenu">Home</a></li>
       <li> <a href="login.jsp">Log In</a></li>
         <li><a href="registration.jsp">Register</a></li>
         <li><a href="adminlog.jsp">Admin</a></li>
         <li><a href="#">About Us</a></li>
         <li><a href="contactus.jsp" target="blank">Contact</a></li>       
         </ul>
     </div>   
   </div>

    
</body>
</html>