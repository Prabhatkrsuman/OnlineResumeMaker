<%@ page import="java.sql.*"%>
<%
    String username = request.getParameter("username");    
    String password = request.getParameter("password");
    out.println(username+"   "+password);
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration",
            "root", "12345");
    Statement st = con.createStatement();
    ResultSet rs;

    rs = st.executeQuery("select * from register where username='" + username + "' and password='" +password + "'");
    if (rs.next()) {
        session.setAttribute("userid", username);
        response.sendRedirect("welResume.jsp");
        
    } else {
        out.println("Invalid password <a href='login.jsp'>try again</a>");
    }
%>