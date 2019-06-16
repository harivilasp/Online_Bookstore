
<%@page import ="java.sql.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
    
    <h1>Login</h1>
    <%
        //Receive form data 
        
        String email,password;
        email=request.getParameter("T4");
        password=request.getParameter("T5");
        String usertype="admin";
        //Create the connection between java and mysql
        Class.forName("com.mysql.jdbc.Driver");
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookstore","root","");
        String S1="select * from logindata where email=? and password=?";
        //Create the statement
        PreparedStatement p1=cn.prepareStatement(S1);
        p1.setString(1,email);
        p1.setString(2,password);
        ResultSet r1=p1.executeQuery();
        if(r1.next())
        {
            usertype=r1.getString("usertype");
            session.setAttribute("email", email);
            session.setAttribute("usertype", usertype);
            //goto page
            if(usertype.equalsIgnoreCase("admin"))
            {
                response.sendRedirect("admin/admin_home.jsp");
            }else if(usertype.equalsIgnoreCase("user"))
            {
                response.sendRedirect("user/user_home.jsp");
            }
        }else
        {
            response.sendRedirect("login_error.jsp");
        }
    %>
</body>
</html>
        
