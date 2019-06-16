/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.servlets;

import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static javax.swing.text.html.HTML.Tag.S;

/**
 *
 * @author DELL
 */
public class ChangePasswordUser extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public void service(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html;charset=UTF-8");
        try {
            PrintWriter out = res.getWriter();
            /* TODO output your page here. You may use following sample code. */
            String oldpassword=req.getParameter("T1");
            String newpassword=req.getParameter("T2");
            String email=req.getParameter("email");
            Class.forName("com.mysql.jdbc.Driver");
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookstore","root","");
        String S;
        //Create the quer
        S="update logindata set password=? where email=? and password=?";
            //Create the statement
        PreparedStatement p1=cn.prepareStatement(S);
        p1.setString(1,newpassword);
        p1.setString(2,email);
        p1.setString(3, oldpassword);
        int r1=p1.executeUpdate();
        if(r1==1)
        {
			
		out.println("<h2>Changed Successfully</h2>");
			
            //if(usertype.equalsIgnoreCase("admin"))
                res.sendRedirect("user_home.jsp");
            //else if(usertype.equalsIgnoreCase("usertype"))
              //  response.sendRedirect("user/user_home.jsp");
        }else
		{
			
			out.println("<h2>Unable to Change Password</h2>");
				
		}
        }
        catch(Exception e)
        {
            try{
                PrintWriter out = res.getWriter();
                out.println(""+e);
            }
            catch(Exception y)
            {
                
            }
        }
    }


}
