/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author srava
 */
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 * 
 *
 * @author srava
 */
public class Usign {
    
    
   public static Connection getConnection(){  
    Connection con=null;  
    try{  
        Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/canteen","root","");  
    }catch(Exception e){System.out.println(e);}  
    return con;  
}  
public static int save(User u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"insert into user_details(sid,sname,phno,password) values(?,?,?,?)");  
        ps.setString(1,u.getSid());  
        ps.setString(2,u.getSname());  
        ps.setString(3,u.getPhno());  
        ps.setString(4,u.getPassword());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
}
