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
    <th> userid </th>
    <th> name </th>
    <th> p </th>
    <th> fathername </th>
    <th> villege </th>
    <th> postoffice </th>
    <th> policestation </th>
    <th> district </th>
    <th> state </th>
    <th> pincode </th>
    <th> email </th>
    <th> councode </th>
    <th> mobno </th>
    <th> carrier </th>
    <th> board1 </th>
    <th> board2 </th>
    <th> board3 </th>
    <th> mschool </th>
    <th> ischool </th>
    <th> bcollege </th>
    <th> year1 </th>
    <th> year2 </th>
    <th> year3 </th>
    <th> cgpa1 </th>
    <th> cgpa2 </th>
    <th> cgpa3 </th>
    <th> obtain1 </th>
    <th> obtain2 </th>
    <th> obtain3 </th>
    <th> fullname </th>
    <th> fn </th>
    <th> mn </th>
    <th> dob </th>
    <th> sex </th>
    <th> bgroup </th>
    <th> mstatus </th>
    <th> religion </th>
    <th> nationality </th>
    <th> profile </th>
    <th> signpic </th>
    <th> skills </th>
    <th> hobbies </th>
    <th> regdate </th>
</tr>

<% 


try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/makeresume",
	        "root", "12345");


	String query = "select * from resume";
	Statement stmt = con.createStatement();
	ResultSet rs= stmt.executeQuery(query);
	while(rs.next())
	{%><tr>
	  <td><%=rs.getString("userid")%></td>
	  <td><%=rs.getString("name")%></td>
	  <td><%=rs.getString("p")%></td>
	  <td><%=rs.getString("fathername")%></td>
	  <td><%=rs.getString("village")%></td>
	  <td><%=rs.getString("postoffice")%></td>
	  <td><%=rs.getString("policestation")%></td>
	  <td><%=rs.getString("district")%></td>
	  <td><%=rs.getString("state")%></td>
	  <td><%=rs.getString("pincode")%></td>
	  <td><%=rs.getString("email")%></td>
	  <td><%=rs.getString("councode")%></td>
	  <td><%=rs.getString("mobno")%></td>
	  <td><%=rs.getString("carrier")%></td>
	  <td><%=rs.getString("skills")%></td>
	  <td><%=rs.getString("hobbies")%></td>
	  <td><%=rs.getString("board1")%></td>
	  <td><%=rs.getString("board2")%></td>
	  <td><%=rs.getString("board3")%></td>
	  <td><%=rs.getString("mschool")%></td>
	  <td><%=rs.getString("ischool")%></td>
	  <td><%=rs.getString("bcollege")%></td>
	  <td><%=rs.getString("year1")%></td>
	  <td><%=rs.getString("year2")%></td>
	  <td><%=rs.getString("year3")%></td>
	  <td><%=rs.getString("cgpa1")%></td>
	  <td><%=rs.getString("cgpa2")%></td>
	  <td><%=rs.getString("cgpa3")%></td>
	  <td><%=rs.getString("obtain1")%></td>
	  <td><%=rs.getString("obtain2")%></td>
	  <td><%=rs.getString("obtain3")%></td>
	  <td><%=rs.getString("fullname")%></td>
	  <td><%=rs.getString("fn")%></td>
	  <td><%=rs.getString("mn")%></td>
	  <td><%=rs.getString("dob")%></td>
	  <td><%=rs.getString("sex")%></td>
	  <td><%=rs.getString("bgroup")%></td>
	  <td><%=rs.getString("mstatus")%></td>
	  <td><%=rs.getString("religion")%></td>
	  <td><%=rs.getString("nationality")%></td>
	  <td><%=rs.getString("profile")%></td>
	  <td><%=rs.getString("signpic")%></td>
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