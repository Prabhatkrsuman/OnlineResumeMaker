<%@ page import="java.sql.*"%>
<% 
String username = request.getParameter("username");    
    String password = request.getParameter("password");
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration",
            "root", "12345");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into register(first_name, last_name, email, username, password, regdate) values ('" + firstName + "','" 
    + lastName + "','" + email + "','" + username + "','" + password + "', CURDATE())");
    if (i > 0) {
        response.sendRedirect("welcome.jsp");
       
    } else {
        response.sendRedirect("login.jsp");
    }
    %>