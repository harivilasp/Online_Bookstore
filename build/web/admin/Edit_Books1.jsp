
<%-- 
    Document   : Add_Book1
    Created on : May 30, 2019, 4:15:14 PM
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
        <%
            String book_id,book_name,author,book_subject,publisher,isbn,price,description,qty,photo;
            book_id=request.getParameter("T1");
            book_name=request.getParameter("T2");
            author=request.getParameter("T3");
            book_subject=request.getParameter("T4");
            publisher=request.getParameter("T5");
            isbn=request.getParameter("T6");
            price=request.getParameter("T7");
            description=request.getParameter("T8");
            qty=request.getParameter("T9");
           // photo=request.getParameter("T10");
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookstore","root","");
        //Create the query
        String S1="update books set book_name=?,author=?,book_subject=?,publisher=?,isbn=?,price=?,description=?,qty=? where bookid=?";
        PreparedStatement p1=cn.prepareStatement(S1);
        p1.setString(1,book_name);
        p1.setString(2,author);
        p1.setString(3,book_subject);
        p1.setString(4,publisher);
        p1.setString(5,isbn);
        p1.setString(6,price);
        p1.setString(7,description);
        p1.setString(8,qty);
        p1.setString(9,book_id);
        //p1.setString(10,photo);
        int a=p1.executeUpdate();
        String msg="Error:Cannot save data";
        if(a==1)
        {
          msg="Data saved "; 
        }
        %>
        <%= msg%>
    </body>
</html>
