<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<body>
<meta name="viewport" content="width=device-width", initial-scale=1">
<style type="text/css">


body {
  font-family: Arial, Helvetica, sans-serif;
  background-size:cover;
  background-image: url("https://images.unsplash.com/photo-1458668383970-8ddd3927deed?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1947&q=80");
width: 100%;
 height: 120vh;
background-repeat: no-repeat;
background-size: 100% 100%;
background-attachment: fixed;

}
/* Add padding to containers */
.container {
        width:50%;
        margin:0 auto;
        height:100%;
        box-sizing: border-box;
        border-radius:8px;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #ADD8E6;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #E9967A;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 15px;
  border: none;
  cursor: pointer;
  width: 20%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Set a style for the cancel button */
.cancelbtn {
  background-color: #FF0000;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 20%;
  opacity: 0.9;
}

.cancelbtn:hover {
  opacity: 1;
}





/* Add a blue text color to links */
a {
  color: blue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}

</style>

<body >
<jsp:include page="header.jsp" />

<form action="reg.jsp" method="post">
  <div class="container"><br><br>
    <h1><font color="darkred">Sign Up For Free</font></h1>
    <p>Please fill in this form to create an account.</p>
    <hr>
<label for="firstName" ><b>First Name</b></label>
<input type="text" placeholder="Enter your First Name"  name="firstName" required>

<label for="lastName"><b>Last Name</b></label>
<input type="text" placeholder="Enter your Last Name" name="lastName" required>

<label for="username"><b>User Name</b></label>
<input type="text" placeholder="Enter your User Name" name="username" required>


    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" name="email" >

    <label for="password"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password"  id="myInput">
<input type="checkbox" onclick="myFunction()">Show Password

<script>
function myFunction() {
  var x = document.getElementById("myInput");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>

    <p>By creating an account you agree to our <a href="terms.html"target="blank">Terms & Privacy</a>.</p>
<input type="checkbox" required>I am agree to  the above Terms and conditions.<br>

    <button type="register" class="registerbtn">Register</button>
<button type="cancel" class="cancelbtn">Cancel</button>
  </div>
  
  <div class="container signin">
  
    <p>Already have an account? <a href="login.jsp">Sign In</a>.</p>
  </div>
</form>

<jsp:include page="footer.jsp" />
</body>
</html>