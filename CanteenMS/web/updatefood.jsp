<%-- 
    Document   : updatefood
    Created on : 17 Mar, 2018, 9:17:48 PM
    Author     : srava
--%>
<%@ include file = "head.jsp" %>
<%@page language="java" import="java.sql.*,javax.sql.*" %>
<html>
	<body>
		<%
                        String iid=request.getParameter("iid");
			String item=request.getParameter("item");
                        String price=request.getParameter("price"); 
                        String quantity=request.getParameter("quantity"); 
                        
                         String query="update food_details set item='"+item+"'where iid="+iid;
	                String query1="update food_details set quantity='"+quantity+"'where iid="+iid;
                        String query2="update food_details set price='"+price+"'where iid="+iid;
                        String query3="select * from food_details"; 
			
			Connection con=null;
			try
			{
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/canteen","root","");
				Statement stmt=con.createStatement();
				
				stmt.executeUpdate(query);
                                stmt.executeUpdate(query1);
                                 stmt.executeUpdate(query2);
				out.println("<table border=1 align=center><tr><th>ITEM ID</th><th>ITEM</th><th>PRICE</th><th>QUANTITY</th></tr>");
				ResultSet rs=stmt.executeQuery(query3);	
				
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
		
		
	</body>
</html>
