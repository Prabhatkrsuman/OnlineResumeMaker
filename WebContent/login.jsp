<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:700,600' rel='stylesheet' type='text/css'>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js" type="text/javascript"></script>
<style>
body{
  font-family: 'Open Sans', sans-serif;
  background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url("https://images.unsplash.com/photo-1465146344425-f00d5f5c8f07?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1055&q=80");
  width: 100%;
  height: 60vh;
  background-repeat: no-repeat;
  background-size: 100% 100%;
  background-attachment: fixed;
  text-align:center;
  margin:0;
  padding:0;
}

p{
  font-size:12px;
  text-decoration: none;
  color:#ff0000;
}

h1{
  font-size:1.5em;
  color:#525252;
}

.box{
  background:transparent;
  width:460px;
  height:400px;
  border-radius:8px;
  margin: 10% 20% 20% 32%;
  padding:28px 0px 50px 0px;
  border: #2980b9 4px solid; 
}

.username{
  background:#ecf0f1;
  border: #ccc 1px solid;
  border-bottom: #ccc 2px solid;
  padding: 8px;
  width:250px;
  color:black;
  margin-top:0px;
  margin-bottom:100px
  font-size:1em;
  border-radius:4px;
}

.password{
  border-radius:5px;
  background:#ecf0f1;
  border: #ccc 1px solid;
  margin-top:10px;
  margin-right:28px;
  margin-left:30px;
  
  padding: 9px;
  width:250px;
  font-size:1em;
}
.btn{
  background:#2ecc71;
  width:125px;
  padding-top:7px;
  padding-bottom:7px;
  color:white;
  border-radius:4px;
  border: #27ae60 1px solid;
  
  margin-top:50px;
  margin-bottom:20px;
  float:left;
  margin-left:50px;
  font-weight:800;
  font-size:0.8em;
}

.btn:hover{
  background:#2CC06B; 
}

#btn2{
  float:left;
  background:#3498db;
  width:125px;  padding-top:7px;
  padding-bottom:7px;
  color:white;
  border-radius:4px;
  border: #2980b9 1px solid;
  
  margin-top:50px;
  margin-bottom:20px;
  margin-left:60px;
  font-weight:800;
  font-size:0.8em;
}

#btn2:hover{ 
background:#3594D2; 
}
.logimg{
width:80px;
height:80px;
border-radius:50%;
position:center,fixed;
margin-top:-50%;

background-color:grey;

}
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
margin-left:-38%;
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
color:white;
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


.footer {
   height:70px;
   left: 0;
   margin-bottom:0; 
   width:100%;
   background-color: rgba(0,0,0,0.5);
   color: white;
   text-align: center;
}

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
         <li><a href="Websites.jsp"  id="firstmenu">Home</a></li>
       <li> <a href="login.jsp">Log In</a></li>
         <li><a href="index.jsp">Register</a></li>
         <li><a href="adminlog.jsp">Admin</a></li>
         <li><a href="#">About Us</a></li>
         <li><a href="contactus.jsp" target="blank">Contact</a></li>        
         </ul>
     </div>   
   </div>

</header>

<form method="post" action="log.jsp">
<div class="box">
<img src="https://img.icons8.com/ios/2x/businessman-filled.png" class="logimg" />
<h1><font color="red"><u><b>Welcome Back!!!</b></u></font></h1>
<h3 align="left">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspUsername</h3>
<input type="text" name="username" placeholder="Enter your username" onFocus="field_focus(this, 'username');" onblur="field_blur(this, 'username');" class="username" />
  <h3 align="left">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspPassword</h3>
<input type="password" name="password" placeholder="Enter password" onFocus="field_focus(this, 'password');" onblur="field_blur(this, 'password');" class="password" />
  
<div class="btn"><input type="submit" value="Login"/></div><!-- End Btn -->


<div id="btn2"><input type="reset" value="Reset"/></div> <!-- End Btn2 --><br><br><br><br><br><br>

<p><font size="4" color="yellow">Are You ?<u style="color:#ff0080;"> <a href="adminlog.jsp"><font color="blue">Admin</font></a></u></font>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<font size="4" color="yellow">New User? <u style="color:#ff0080;"> <a href="registration.jsp"><font color="blue">Register Here!!</font></a></u></font></p>

</div> <!-- End Box -->
  
</form>
 
  


<div class="footer">
  <ul class="u">
      <li>  <a href="#"> <img src="https://img.icons8.com/color/2x/twitter.png" class="sites" title="Share on twitter"></a></li>
       <li>  <a href="#"><img src="https://img.icons8.com/dusk/2x/facebook.png" class="sites" title="Share on facebook"></a></li>
      <li>   <a href="#"><img src="https://img.icons8.com/office/80/000000/instagram-new.png" class="sites" title="Share on instagram"></a></li>
       <li> <a href="#"> <img src="https://img.icons8.com/color/2x/linkedin.png" class="sites" title="Share on linkedin"></a></li>
      <li>  <a href="#"> <img src="https://img.icons8.com/color/96/000000/whatsapp.png" class="sites" title="Share on whatsapp"></a></li>
      <li>  <a href="terms.html"target="blank"><img src="https://img.icons8.com/plasticine/100/000000/privacy.png" class="sites"><font color="blue">Terms & Privacy</font></a></li>
      
       </ul>  
</div>



</body>
</html>