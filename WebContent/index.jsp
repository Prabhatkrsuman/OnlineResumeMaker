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
*{
margin:0px;
padding:0px;
font-family:Century Gothic;
}
#btn1{
background-color:transparent;
border:none;
font-size:12px;
font-weight:bold;
color:white;
text-transform:uppercase;
border:3px solid 	#ff9999;
width:150px;
line-height:40px;
margin-top:25px;
margin-right:10px;
font-family:'montserrat',sans-sarif;

}
#btn2{
background-color:transparent;
border:none;
font-size:12px;
font-weight:bold;
color:white;
text-transform:uppercase;
border:3px solid 	#ff9999;
width:150px;
line-height:40px;
margin-top:25px;
font-family:'montserrat',sans-sarif;
}
/*.bgimage{
background-image:url("https://images.unsplash.com/photo-1526948531399-320e7e40f0ca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80");
width: 100%;
 height: 100vh;
background-repeat: no-repeat;
background-size: 100% 100%;
background-attachment: fixed;
 margin: 0px 0px 20px 0px;

}*/
.menu{
width:100%;
height:80px;
background-color:rgba(0,0,0,0.2);
}
.leftmenu{

line-height:80px;
float:left;
}
.leftmenu img{
padding-left:30px;
font-height:bold;
line-height:100px;
color:pink;
font-size:22px;
font-family:'montserrat',sans-sarif;
}
.rightmenu{
margin-top:30px;
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
transition:0.6s ease;
text-decoration:none;
}
.rightmenu ul li:hover{
color:green;
background-color:red;
}
.text{
width:100%;
margin-top:30%;
text-transform:uppercase;
text-align:center;
color:yellow;
}
.logo{
width:50%;
background:transparent;

}
.text h2{
font-size:62px;
font-family:'montserrat',sans-sarif;
font-weight:500px;
margin:10px 0px;
}
.text h3{
font-size:18px;
font-family:'Open Sans',sans-sarif;
}
header{
background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url("https://images.unsplash.com/photo-1526948531399-320e7e40f0ca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80");
height:150vh;
background-size:cover;
background-position:center,fixed;


}
</style>
</head>
<body>

<div class="bgimage">
<header>
    <div class="menu">
      <div class="leftmenu">
           <img src="C:\Users\Asus\Desktop\Rlogo.png" class="logo">
              
      </div>
     <div class="rightmenu">
         <ul>
         <li><a href="index.jsp"  id="firstmenu">Home</a></li>
         <li><a href="login.jsp">Log In</a></li>
         <li><a href="registration.jsp">Register</a></li>
         <li><a href="adminlog.jsp">Admin</a></li>
         <li><a href="#">About Us</a></li>
         <li><a href="contactus.jsp" target="blank">Contact</a></li>        
         </ul>
     </div>   
   </div>
    <div class="text">
        <P ><font size="5" color="#ff0040"><b>MAKE YOUR OWN RESUME</b></font></p>
         <h4>DESIGN . DEVLOPMENT . BRANDING</h4>
         <h2>CREATIVE & EXPERIENCED</h2>
         <h3>"If you can DREAM it, you can DO it."</h3>
        <a href="login.jsp"> <button id="btn1">Sign In</button></a>
        <a href="registration.jsp"> <button id="btn2">Sign Up</button></a>
         
    </div>   
      
</header>
  
  
  
    <jsp:include page="footer.jsp" /> 
</div>



</body>
</html>