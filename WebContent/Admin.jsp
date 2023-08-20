<%@ page import="java.sql.*"%>
<%    
    String password = request.getParameter("password");
    out.println(password);
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/adminpassword",
            "root", "12345");
    Statement st = con.createStatement();
    ResultSet rs;
     rs =st.executeQuery("select * from admi where password='"+password+"'");
    if (rs.next()) {
        session.setAttribute("userid", password);
        response.sendRedirect("AdminPage.jsp");
        
    } else {
        out.println("Invalid password <a href='adminlog.jsp'>try again</a>");
    }
%>