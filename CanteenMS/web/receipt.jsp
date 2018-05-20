<%-- 
    Document   : receipt
    Created on : 29 Mar, 2018, 6:17:47 PM
    Author     : srava
--%>
<%@ include file = "head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page language="java" import="java.sql.*,javax.sql.*" %>
<html>
	<body>
<%
 out.println("<br><br><br>");
String item=(String)session.getAttribute("item");  
String iid=(String)session.getAttribute("iid");  
String quantity=(String)session.getAttribute("quantity");  
//String id=request.getParameter("id");    
//String item=request.getParameter("item"); 
//String quantity=request.getParameter("quantity");
//String iid=request.getParameter("iid");
int uqty = Integer.parseInt(quantity);
int tot=0;  
    
Connection con=null;
 try
{
Class.forName("com.mysql.jdbc.Driver").newInstance();
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/canteen","root","");
Statement stmt=con.createStatement();
ResultSet rs =stmt.executeQuery("SELECT * FROM food_details WHERE item='"+item+"'");                        
        if(rs.next()) 
           if(rs.getString(1).equals(iid))
           {
               String price = rs.getString(3);  
               int pr=Integer.parseInt(price);
               tot = pr * uqty;
               out.println("<center><h3>AMOUNT:"+tot+"</h3></center>");
               session.setAttribute("item",item);
session.setAttribute("iid",iid);
session.setAttribute("quantity",quantity);
con.close();
           }
        
}
 
  catch(ClassNotFoundException e)
			{
				e.printStackTrace();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			catch(Exception e)
			{
                        }

%>
<form action="corder.jsp">
    <center>
        <input type="submit" value="CONFIRM ORDER"></input>
    </center>
</form>
 </body>
</html>
