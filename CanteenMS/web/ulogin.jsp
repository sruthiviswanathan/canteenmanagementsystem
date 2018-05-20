<%-- 
    Document   : ulogin
    Created on : 17 Mar, 2018, 1:44:56 PM
    Author     : srava
--%>

<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
    try{
        String sid = request.getParameter("sid");   
        String password = request.getParameter("password");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/canteen","root","");     
        Statement st=conn.createStatement();
        ResultSet rs = st.executeQuery("select * from user_details where sid="+sid+"");                        
        if(rs.next())           
           if(rs.getString(4).equals(password))
           {
              String name = rs.getString(2);  
              session.setAttribute("stname",name);
              response.sendRedirect("order.jsp");  
           }
           else{
           out.println("Invalid login credentials"); 
           response.sendRedirect("ulog.jsp"); 
           }
        else{
        }
            
    }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>