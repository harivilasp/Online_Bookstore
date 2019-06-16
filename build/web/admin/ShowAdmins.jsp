<%-- 
    Document   : ShowAdmins
    Created on : May 28, 2019, 7:01:22 PM
    Author     : DELL
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Admins</h1>
        <%
            
        //Create the connection between java and mysql
        Class.forName("com.mysql.jdbc.Driver");
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookstore","root","");
        //Create the query
        String S1="select * from admindata";
        //Create the statement
        PreparedStatement p1=cn.prepareStatement(S1);
        ResultSet r1=p1.executeQuery();
        while(r1.next())
        {
            String name,address,contact,email;
            name=r1.getString("name");
            address=r1.getString("address");
            contact=r1.getString("contact");
            email=r1.getString("email");
            %>
            <h3><%= name %></h3>
            <p>
                Address : <%= name %><Br/>
                Contact : <%= contact %><Br/>
                Email : <%= email %>
            </p>
            <hr/>
            <%
        }
        %>
        <p><a href="admin_home.jsp"> Back to Home </a></p>
    </body>
</html>
