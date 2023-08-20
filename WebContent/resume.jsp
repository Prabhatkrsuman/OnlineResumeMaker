
<%@ page import="java.sql.*"%>
Welcome <%=session.getAttribute("userid")%>
<%
    String userid=request.getParameter("userid");    

    String name = request.getParameter("name");
    String p=request.getParameter("p");
    String fatname = request.getParameter("fatname");
    String vill = request.getParameter("vill");
    String po = request.getParameter("po");
    String ps = request.getParameter("ps");
    String dist = request.getParameter("dist");
    String state = request.getParameter("state");
    String pin= request.getParameter("pin");
    String email = request.getParameter("email");
    String telephone = request.getParameter("telephone");
    String ccode = request.getParameter("ccode");
    
    String carrier = request.getParameter("carrier");
    
    String board1 = request.getParameter("board1");
    String board2 = request.getParameter("board2");
    String board3 = request.getParameter("board3");
    
    String mschool = request.getParameter("mschool");
    String ischool = request.getParameter("ischool");
    String bcollege = request.getParameter("bcollege");
    
    String year1 = request.getParameter("year1");
    String year2 = request.getParameter("year2");
    String year3 = request.getParameter("year3");
    
    String cgpa1 = request.getParameter("cgpa1");
    String cgpa2 = request.getParameter("cgpa2");
    String cgpa3 = request.getParameter("cgpa3");
    
    String obtain1 = request.getParameter("obtain1");
    String obtain2 = request.getParameter("obtain2");
    String obtain3 = request.getParameter("obtain3");
    
    String fullname= request.getParameter("fullname");
    String fn = request.getParameter("fn");
    String mn = request.getParameter("mn");
    String dob = request.getParameter("dob");
    String gender = request.getParameter("gender");
    String bgroup = request.getParameter("bgroup");
    String mstatus = request.getParameter("mstatus");
    String religion = request.getParameter("religion");
    String nationality = request.getParameter("nationality");
    
    String profile = request.getParameter("profile");
    String signpic = request.getParameter("signpic");
    
    String skills = request.getParameter("skills");
    String hobbies = request.getParameter("hobbies");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/makeresume",
            "root", "12345");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into resume( name,fathername,village,postoffice,policestation,district,state,pincode,email,mobno,p,councode,carrier,board1,board2,board3,mschool,ischool,bcollege,year1,year2,year3,cgpa1,cgpa2,cgpa3,obtain1,obtain2,obtain3,fullname,fn,mn,dob,sex,bgroup,mstatus,religion,nationality,profile,signpic,userid,skills,hobbies,regdate) values ('" + name + "','" 
    	    + fatname + "','"+ vill + "','" + po + "','" + ps +"','"+dist+ "','" +state+"','"+ pin + "','" + email +"','"+telephone+"','"+p+"','"+ccode+"','"+carrier+ "','"+ board1 + "','" + board2 + "','" + board3 +"','"+mschool+ "','" +ischool+"','"+ bcollege + "','" + year1 +"','"+ year2 +"','"+ year3 + "','"+ cgpa1 +"','"+ cgpa2 +"','"+ cgpa3 +"','"+ obtain1 + "','"+ obtain2 +"','"+ obtain3 +"','" + fullname +"','"+ fn +"','"+ mn + "','"+ dob +"','"+ gender +"','"+ bgroup +"','"+ mstatus + "','"+ religion +"','"+ nationality +"','"+ profile +"','"+ signpic +"','"+ userid +"','"+ skills +"','"+ hobbies +"', CURDATE())");
       if (i > 0) {
        out.println("you are succesfully registered");
       
	} else {
      response.sendRedirect("success.jsp"); 
    } 
    %>

click here to login<a href="login.jsp">login</a>
