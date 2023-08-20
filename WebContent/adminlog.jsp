<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url("https://images.unsplash.com/photo-1553356084-58ef4a67b2a7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=1868&q=80");
width: 100%;
 /*height: 100vh;*/
background-repeat: no-repeat;
background-size: 100% 100%;
background-attachment: fixed;
 margin: 0px 0px 20px 0px;
}
.c{
margin-top:200px;
margin-bottom:500px;
}

</style>
</head>
<body>
<jsp:include page="header.jsp" />
<form action="Admin.jsp" method="post">
<center class="c">
<h1><font color="orange">Password</font>:&nbsp&nbsp<input type="password" name="password" placeholder="Password"></h1>
<h3><button type="submit" value="Show Data" name="password">Show Data</button></h3>
</center>
<jsp:include page="footer.jsp" />
</body>
</html>