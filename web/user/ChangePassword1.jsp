<%-- 
    Document   : UserReg1
    Created on : May 28, 2019, 6:36:05 PM
    Author     : DELL
--%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import ="java.sql.DriverManager"%>
<%@page import ="java.sql.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%
            String e1="",usertype="";
        if(session==null)
        {
            response.sendRedirect("../AuthError.jsp");
        }
        %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
    
    <%
        //Receive form data 
        
        String email,password,S,newpassword;
        email=session.getAttribute("email").toString();
        password=request.getParameter("T1");
        usertype=session.getAttribute("usertype").toString();
        newpassword=request.getParameter("T2");
        //String usertype=session.getAttribute("usertype").toString();
        //Create the connection between java and mysql
        Class.forName("com.mysql.jdbc.Driver");
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookstore","root","");
        //Create the quer
        S="update logindata set password=? where email=? and password=?";
            //Create the statement
        PreparedStatement p1=cn.prepareStatement(S);
        p1.setString(1,newpassword);
        p1.setString(2,email);
        p1.setString(3, password);
        int r1=p1.executeUpdate();
		
		if(r1==1)
        {
			%>
			<h2>Changed Successfully</h2>
			<%
            //if(usertype.equalsIgnoreCase("admin"))
                response.sendRedirect("user_home.jsp");
            //else if(usertype.equalsIgnoreCase("usertype"))
              //  response.sendRedirect("user/user_home.jsp");
        }else
		{
			%>
			<h2>Unable to Change Password</h2>
            <%= email%>
			<%	
		}
        %>
        
    
</body>
</html>
        
