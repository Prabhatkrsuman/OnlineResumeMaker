<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Make Your Own Resume</title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


<body>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

body{
 background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url("https://images.unsplash.com/photo-1444090542259-0af8fa96557e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80");
   width: 100%;
 height: 100vh;
background-repeat: no-repeat;
background-size: 100% 100%;
background-attachment: fixed;
  text-align:center;
 margin: 0px 0px 20px 0px;
}

.button {
  display: inline-block;
  padding: 10px 20px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}

.menu{

height:80px;
background-color:rgba(0,0,0,0.2);
color:white;
}
.logo{
width:45.7%;
background:transparent;
}
.leftmenu{
line-height:40px;
float:left;
}
.leftmenu img{
padding-left:0px;
margin-left:-38%;
margin-top:6.9%;
font-height:bold;
line-height:30px;
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
   
   left: 0%;
   margin-top:0%;
   background-position:fixed;
   height:85px;
   background-color: rgba(0,0,0,0.5);
   color: white;
   text-align: center;
}

</style>

<script type="text/javascript">

$(document).on("click",".btn-add-row",function(){
	var i=1;
	var row=$(".row").eq(0).clone().show();
	i++;
	$(".element-wrapper").append(row);
});

$(document).on("click",".btn-remove-row",function(){
	var index=$(".btn-remove-row").index(this);
	$(".row").eq(index).remove();
});
</script>

</head>

<body>
<header>
<div class="menu">
      <div class="leftmenu">
            <img src="C:\Users\Asus\Desktop\Rlogo.png" class="logo">
              
      </div>
     <div class="rightmenu">
         <ul>
         <li ><a href="index.jsp" id="firstmenu">Home</a></li>
       <li> <a href="login.jsp">Log In</a></li>
         <li><a href="registration.jsp">Register</a></li>
         <li><a href="adminlog.jsp">Admin</a></li>
         <li><a href="#">About Us</a></li>
         <li><a href="contactus.jsp" target="blank">Contact</a></li>        
         </ul>
     </div>   
   </div>

</header><br>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged In
<a href="login.jsp">Please Login</a>
<%} else {
%>
<h2><font color="green">Welcome &nbsp<%=session.getAttribute("userid")%></font></h2>
<h2>Fill Your Data Below....</h2>

<form action="resume.jsp" method="post">
<table border="1" align="center" width="60%" bgcolor="skyblue">
<th bgcolor="orchid"><h1>RESUME</h1></th>
<tr><th align="left"><input type="text" name="userid" placeholder="Registered userid"></th></tr>
<tr><th align="left"><h2><b>&nbsp<input type="text" name="name" maxlength="30" placeholder="Name" 
 /></b></h2>
<input type="file" name="profile" width="20%" border="1" align="right">
<p><select  name="p"><option >S/O</option><option name=>D/O</option></select>-<input type="text" name="fatname" maxlength="30"  /></p>
<p>Vill.-  &nbsp&nbsp&nbsp&nbsp<input type="text" name="vill" maxlength="30" /></p>
<p>P.o-   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="po" maxlength="30" /></p>
<p>P.s-  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="ps" maxlength="30"  /></p>
<p>Dist.-&nbsp&nbsp&nbsp&nbsp<input type="text" name="dist" maxlength="30"  /></p>
<p><input type="text" name="state" placeholder="state"/>-<input type="num" name="pin" pattern="[0-9]{6}" title="******" placeholder="picode"/></p>

<p><label for="email">Email Id.:</label>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" id="email" name="email" title="example@gmail.com" /></p>
<p><label for="number">Mob No.:</label><select name="ccode"><option>+91</option></select>

<input type="tel" id="number" name="telephone" pattern="[6-9]{1}[0-9]{9}"  title="Please enter exactly 10 digits" />(10 digit number)</p>
<table border="2" align="left" width="100%" >
<tr><th bgcolor="violet"><h3>CARRIER OBJECTIVE</h3></th></tr></table>
<br><p><textarea rows="5" cols="126"  name="carrier" placeholder=" Write Here..."></textarea></p>
<table border="2" align="left" width="100%">

<tr><th bgcolor="violet"><h3>ACADEMIC PROFILE</h3></th></tr></table><br><br>
<table border="1" width="100%">

<tr><th>Course</th><th>Board</th><th>School/College Name</th><th>Year of Passing</th><th>CGPA</th><th>% Obtain</th></tr>
<tr><td>Matriculation</td><td><input type="text" maxlength="6" name="board1"/></td><td><input type="text" name="mschool" rows="2" maxlength="30" /></td><td><input type="num" name="year1" pattern="[0-9]{4}" title="****" maxlength="4" /></td><td><input type="text" name="cgpa1" maxlength="5" /></td><td><input type="text" maxlength="5" name="obtain1"/></td></tr>
<tr><td>Intermediate</td><td><input type="text" maxlength="6" name="board2" /></td><td><input type="text" name="ischool" maxlength="30" /></td><td><input type="num" name="year2"  pattern="[0-9]{4}" title="****" maxlength="4" /></td><td><input type="text" maxlength="5"  name="cgpa2"/></td><td><input type="text" maxlength="5"  name="obtain2"/></td></tr>
<tr><td>B.Tech</td><td><input type="text" maxlength="6" name="board3"/></td><td><input type="text" maxlength="30" name="bcollege" /></td><td><input type="num" name="year3"  pattern="[0-9]{4}" title="****" maxlength="4" /></td><td><input type="text" maxlength="5" name="cgpa3" /></td><td><input type="text" maxlength="5" name="obtain3"  /></td></tr>
</table><br>

<table border="2" align="left" width="100%">
<tr><th bgcolor="violet"><h3>TECHNICAL SKILLS</h3></th></tr></table>
<table width="60%" border="0">

<div class="element-wrapper">
<div class="row">
<input type="text" placeholder="Your Skills" name="skills[]"/>
<button class="btn-remove-row">Remove</button>
</div>
</div>
<button class="btn-add-row">Add Skills</button>


<table border="2" align="left" width="100%">
<tr><th bgcolor="violet"><h3>HOBBIES</h3></th></tr>
</table><br><br>

<div class="element-wrap">
<div class="hrow">
<input type="text" placeholder="Your Hobbies" name="hobbies[]"/>
<button class="btn-remove-hrow">Remove</button>
</div>
</div>
<button class="btn-add-hrow">Add Hobbies</button>

<script type="text/javascript">

$(document).on("click",".btn-add-hrow",function(){
	var i=1;
	var row=$(".hrow").eq(0).clone().show();
	i++;
	$(".element-wrap").append(row);
});

$(document).on("click",".btn-remove-hrow",function(){
	var index=$(".btn-remove-hrow").index(this);
	$(".hrow").eq(index).remove();
});
</script>
 


<table border="2" align="left" width="100%">
<tr><th bgcolor="violet"><h3>PERSONAL DETAILS</h3></th></tr></table>
<table width="80%" border="0">
<tr><th align="left"><h3><label for="fullname">NAME &nbsp &nbsp &nbsp &nbsp &nbsp :<input type="text"  maxlenth="30" id="fullname" name="fullname"></h3>
<h4>Father'sName &nbsp  :<input type="text" maxlenth="30" name="fn" /></h4>
<h4>Mother'sName &nbsp:<input type="text" maxlenth="30" name="mn"/></h4>
<h4>D.O.B &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp      :<input type="num" maxlenth="13" name="dob" /></h4>
<h4>Sex &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp :<label for="gender"></label>
<input type="radio" name="gender" id="gender" value="male" required/>MALE&nbsp&nbsp&nbsp
<input type="radio" name="gender" id="gender" value="female" required />FEMALE&nbsp&nbsp&nbsp
<input type="radio" name="gender" id="gender" value="other" required/>OTHER</div><br><br></h4>
<h4>Blood Group &nbsp &nbsp :<input type="text" maxlenth="30" name="bgroup" ></h4>
<h4>Marital Status &nbsp:<input type="text" maxlenth="30" name="mstatus"  ></h4>
<h4>Religion &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp :<input type="text" maxlenth="30" name="religion" ></h4>
<h4>Nationality &nbsp &nbsp &nbsp :<input type="text" maxlenth="30" name="nationality" ></h4></th></tr></table>

<table border="2" align="left" width="100%">

<tr><th bgcolor="violet"><h3>DECLARATION</h3></th></tr></table>
<table border="0" width="100%">
<tr><th align="left">I hereby declare that all the particulars stated above are true to the best of my knowledge and belief.</th></tr>
<tr><th align="right"><input type="file" name="signpic" width="12%" border="1" align="right"></th></tr>
<tr><th align="right"><h3>Signature &nbsp &nbsp</h3></th></tr></table>

</th></tr></table>

<button type="submit" value="submit" class="button">Submit</button><br><br>
</form>
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


<%
    }
%>
