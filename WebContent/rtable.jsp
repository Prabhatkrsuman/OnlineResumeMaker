<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*"%>
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

</head>
<body>
<table class="table table-bordered">
<tr>
    <th> first_name </th>
    <th> last_name </th>
    <th> email </th>
    <th> username </th>
    <th> password </th>
    <th> regdate </th>
</tr>

<% 


try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration",
	        "root", "12345");


	String query = "select * from register";
	Statement stmt = con.createStatement();
	ResultSet rs= stmt.executeQuery(query);
	while(rs.next())
	{%><tr>
	  <td><%=rs.getString("first_name")%></td>
	  <td><%=rs.getString("last_name")%></td>
	  <td><%=rs.getString("email")%></td>
	  <td><%=rs.getString("username")%></td>
	  <td><%=rs.getString("password")%></td>
	  <td><%=rs.getString("regdate")%></td>
	  </tr>
	<% 
	
	}
	
}
catch(Exception e)
{
	out.println("Exception:"+e.getMessage());
	e.printStackTrace();
}

%>

</table>
</body>
</html>