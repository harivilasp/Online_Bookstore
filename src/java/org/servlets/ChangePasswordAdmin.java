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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static javax.swing.text.html.HTML.Tag.S;
import org.model.PasswordChanger;

/**
 *
 * @author DELL
 */

public class ChangePasswordAdmin extends HttpServlet {

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
            //PasswordChanger pc =new PasswordChanger();
            int r1= new PasswordChanger().Change(oldpassword,newpassword,email);
        if(r1==1)
        {
			
		out.println("<h2>Changed Successfully</h2>");
			
            //if(usertype.equalsIgnoreCase("admin"))
                res.sendRedirect("admin_home.jsp");
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
public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        service(request, response);
    }

}
