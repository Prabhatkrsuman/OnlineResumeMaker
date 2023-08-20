<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
font-family: 'Open Sans', sans-serif;
  background-image:url("https://images.unsplash.com/photo-1532332693957-cf4ff3a2eaaa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80");
  width: 100%;
  height: 60vh;
  background-repeat: no-repeat;
  background-size: 100% 100%;
  background-attachment: fixed;
  text-align:center;
  margin-top:90px;
  padding:0;
}
h1{
color:#D6FF33;
}


</style>
</head>
<body>
<jsp:include page="header.jsp" /><br><br>
<center>
<h1><b>Welcome </b>&nbsp&nbsp<%=session.getAttribute("userid") %></h1>
<h2><font color="red"><b>To  create new resume</b></font></h2><a href="success.jsp"><font size="4" color="#00ffff"><u>Click Here!!</u></font></a><br><br>
<h2><font color="red"><b>To  see your resume</b></font></h2><a href="showResume.jsp"><font size="4" color="#00ffff">Click Here!!</font></a>
</center><br><br>

<br><br><br><br><br><br><br><br><br><br><br><br><jsp:include page="footer.jsp" />


</body>
</html>