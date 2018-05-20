<%-- 
    Document   : corder
    Created on : 29 Mar, 2018, 7:29:54 PM
    Author     : srava
--%>
<%@ include file = "head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*,javax.sql.*" %>
<!DOCTYPE html>
<%
String item=(String)session.getAttribute("item");  
String iid=(String)session.getAttribute("iid");  
String quantity=(String)session.getAttribute("quantity"); 

int uqty = Integer.parseInt(quantity);
int total=0;

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
               String qty = rs.getString(4);  
               int q=Integer.parseInt(qty);
               total = q - uqty;
               String query="update food_details set quantity='"+total+"'where iid="+iid;
               stmt.executeUpdate(query);
               
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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CONFIRM ORDER PAGE</title>
    </head>
    <body>
        <br><br><br><br><br>
    <center><h1>ORDER PLACED!!! GET YOUR FOOD FROM CANTEEN</h1></center>
    </body>
</html>
