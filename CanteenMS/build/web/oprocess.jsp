<%-- 
    Document   : oprocess
    Created on : 17 Mar, 2018, 3:50:14 PM
    Author     : srava
--%>
<%@ include file = "head.jsp" %>
<%
    String name=(String)session.getAttribute("stname");  
    out.println("<center><b>YOUR FOOD IS READY!!!"+name+"GET IT FROM CANTEEN</b></center>");
%>
<html>
<head>
<style>
table {
    border-collapse: collapse;
}
table, th, td {
    border: 2px solid black;
}
</style>
</head>
</html>

<%@page language="java" import="java.sql.*,javax.sql.*" %>
<html>
	<body>
<%
    out.println("<br><br><br>");
String id=request.getParameter("id");    
String item=request.getParameter("item"); 
String iid=request.getParameter("iid");
String quantity=request.getParameter("quantity"); 
int uqty = Integer.parseInt(quantity);
int tot=0;

Connection con=null;
try
{
Class.forName("com.mysql.jdbc.Driver").newInstance();
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/canteen","root","");
String query="insert into order_details values("+id+",'"+item+"',"+quantity+")";
Statement stmt=con.createStatement();
stmt.executeUpdate(query);
out.println("<table align=center><tr><th>ID</th><th>ITEM</th><th>QUANTITY</th></tr>");
out.println("<tr><td>"+id+"</td><td>"+item+"</td><td>"+uqty+"</td></tr>");
out.println("</table>");
out.println("<br><br><br>");
out.println("<center><h3>ORDER PLACED SUCCESSFULLY!!!</h3></center>");
out.println("<center><h4>TAKE A SCREEN SHOT OF THIS PAGE!!!</h4></center>");
out.println("<center><h4>THIS IS YOUR RECEIPT!!!</h4></center>");
out.println("<br><br><br>");
session.setAttribute("item",item);
session.setAttribute("iid",iid);
session.setAttribute("quantity",quantity);
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
      
<form action="receipt.jsp">
    <center> <input type="submit" value="SEE AMOUNT"></input></center>
</form>
        </body>
</html>

