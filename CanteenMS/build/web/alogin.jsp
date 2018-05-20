<%-- 
    Document   : alogin
    Created on : 17 Mar, 2018, 2:49:38 PM
    Author     : srava
--%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
    try{
        String aid = request.getParameter("aid");   
        String password = request.getParameter("password");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/canteen","root","");     
        Statement st=conn.createStatement();
        ResultSet rs = st.executeQuery("select * from admin_details where aid="+aid+"");                        
        if(rs.next())         
           if(rs.getString(2).equals(password))
           {
              response.sendRedirect("admin.jsp");  
           }
           else{
           out.println("Invalid login credentials");  
           }
        else{
        }
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }                  
%>
