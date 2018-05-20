<%-- 
    Document   : vieworder
    Created on : 17 Mar, 2018, 5:16:04 PM
    Author     : srava
--%>
<%@ include file = "head.jsp" %>
 <%@page language="java" import="java.sql.*,javax.sql.*" %>
<html>
	<body>
		<%
			String query1="select * from order_details";
			Connection con=null;
			try
			{
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/canteen","root","");
				Statement stmt=con.createStatement();
				out.println("<table border=1 align=center><tr><th>ID</th><th>ITEM</th><th>QUANTITY</th></tr>");
				ResultSet rs=stmt.executeQuery(query1);	
				
				while(rs.next())
				{
		
					out.println("<tr><td>"+rs.getString(1)+"</td><td>"+ rs.getString(2)+"</td><td>"+ rs.getString(3)+"</td></tr>");
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
		
		
	</body>
</html>

