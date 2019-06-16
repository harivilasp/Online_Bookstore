/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.servlets;

import java.io.IOException;
import java.sql.*;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
public class EditUser extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public void Service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try  {
            /* TODO output your page here. You may use following sample code. */
                String name,address,contact,email,password;
                name=request.getParameter("T1");
                address=request.getParameter("T2");
                contact=request.getParameter("T3");
                email=request.getParameter("T4");
                password=request.getParameter("T5");
                String rollno=request.getParameter("T7");
                String branch=request.getParameter("T8");
                String usertype="user";
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
            }
            catch(Exception e)
            {
                try
                {
                    PrintWriter out=response.getWriter();
                    out.println(""+e);
                }
                catch(Exception y)
                {

                }
            }
    }
}
