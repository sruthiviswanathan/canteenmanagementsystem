<%-- 
    Document   : order
    Created on : 17 Mar, 2018, 2:06:02 PM
    Author     : srava
--%>
<%
    
    String name=(String)session.getAttribute("stname");  
    out.println("<b>WELCOME,"+name+"ORDER YOUR FOOD</b>"); 
    session.setAttribute("stname",name);
%>
<html>
<head>
<style>
table, th, td {
    border: 2px solid black;
}
table {
    border-collapse: collapse;
    width: 50%;
}
</style>
</head>
</html>
<%@ include file = "head.jsp" %>
<%@page language="java" import="java.sql.*,javax.sql.*" %>
<html>
	<body>
		<%
		

			
			Connection con=null;
			try
			{
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/canteen","root","");
				Statement stmt=con.createStatement();
				String query="select * from food_details";
				out.println("<table align=center><tr><th>ITEM ID</th><th>ITEM</th><th>PRICE</th><th>QUANTITY</th></tr>");
				ResultSet rs=stmt.executeQuery(query);	
				
				while(rs.next())
				{
		
					out.println("<tr><td>"+rs.getString(1)+"</td><td>"+ rs.getString(2)+"</td><td>"+ rs.getString(3)+"</td><td>"+ rs.getString(4)+"</td></tr>");
				}

				
				out.println("</table>");
				con.close();
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
		
                
                
                <center>
                    <br><br>
                    <h2>PLACE YOUR ORDER!!!</h2><br><br>
<form action="oprocess.jsp" method="post">
     ENTER STUDENT ID:<input type="number" name="id"><br><br>
     ENTER ITEM :<select name="item">
  <option value="idly">idly</option>
  <option value="dosa">dosa</option>
  <option value="pongal">pongal</option>
  <option value="full meals">fullmeals</option>
  <option value="sambar">sambar</option>
  <option value="brinji">brinji</option>
  <option value="curdrice">curdrice</option>
  <option value="lemonrice">lemonrice</option>
  <option value="vadai">vadai</option>
</select> <br><br> 
     ENTER ITEM ID :<input type="number" name="iid"><br><br>
     ENTER QUANTITY :<input type="number" name="quantity"><br><br>
<input type="submit" value="ORDER">
</form>
    </center>
            
	</body>
</html>

