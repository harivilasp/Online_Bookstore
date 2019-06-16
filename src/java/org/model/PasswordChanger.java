/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 *
 * @author DELL
 */
public class PasswordChanger {
    public int Change(String oldpass,String newpass,String email)
    {
        int r1=0;
        try{
            Class.forName("com.mysql.jdbc.Driver");
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookstore","root","");
        String S;
        //Create the quer
        S="update logindata set password=? where email=? and password=?";
            //Create the statement
        PreparedStatement p1=cn.prepareStatement(S);
        p1.setString(1,newpass);
        p1.setString(2,email);
        p1.setString(3, oldpass);
        r1=p1.executeUpdate();
          
        }catch(Exception e)
        {
            
        }
        return r1;  
    }
}
