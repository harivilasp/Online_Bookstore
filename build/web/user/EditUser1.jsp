 <%-- 
    Document   : UserReg1
    Created on : May 28, 2019, 6:36:05 PM
    Author     : DELL
--%>
<%@page import ="java.sql.DriverManager"%>
<%@page import ="java.sql.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
    <%
            String e1="",usertype="";
        if(session==null)
        {
            response.sendRedirect("../AuthError.jsp");
        }
        else
        {
            try
            {
                e1=session.getAttribute("email").toString();
                usertype=session.getAttribute("usertype").toString();
                if(usertype.equalsIgnoreCase("user")==false)
                {
                    response.sendRedirect("../AuthError.jsp");
                }
            }
            catch(NullPointerException e)
            {
                response.sendRedirect("../AuthError.jsp");
            }
        }
        %>
</head>

<body>
    
    <h1>User Registration</h1>
    <%
        //Receive form data 
        
        String name,address,contact,email,password;
        name=request.getParameter("T1");
        address=request.getParameter("T2");
        contact=request.getParameter("T3");
        email=request.getParameter("T4");
        password=request.getParameter("T5");
        String rollno=request.getParameter("T7");
        String branch=request.getParameter("T8");
        usertype="user";
        //Create the connection between java and mysql
        Class.forName("com.mysql.jdbc.Driver");
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookstore","root","");
        //Create the query
        String S1="update userdata set name=?,address=?,contact=?,rollno=?,branch=? where email=?";
        String S2="update logindata set password=? where email=?";
        //Create the statement
        PreparedStatement p1=cn.prepareStatement(S1);
        PreparedStatement p2=cn.prepareStatement(S2);
        //Replace ? with data
        p1.setString(1,name);
        p1.setString(2,address);
        p1.setString(3,contact);
        p1.setString(6,email);
        p1.setString(4,rollno);
        p1.setString(5,branch);
        
        p2.setString(2,email);
        p2.setString(1,password);
        
        //Save data in tables
        int a=p1.executeUpdate();
        int b=p2.executeUpdate();
        String msg="Error:Cannot edit data";
        if(a==1 && b==1)
        {
          msg="Data saved and login edited"; 
        }
        else if(a==1)
        {
            msg="Data saved but login not edited";
            
        }
        else if(b==1)
        {
            msg="login edited but data not saved";
          
        }
        %>
        <h2><%= msg %></h2>
        <p><a href="EditUser1.jsp">Add more</a></p>
    
</body>
</html>
        
