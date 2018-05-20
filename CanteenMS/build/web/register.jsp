<%-- 
    Document   : register
    Created on : 17 Mar, 2018, 8:30:21 AM
    Author     : srava
--%>

<%@page import="com.Usign"%>  
<jsp:useBean id="u" class="com.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=Usign.save(u);  
if(i>0){  
response.sendRedirect("ulog.jsp");  
}else{  
response.sendRedirect("usign.jsp");  
}  
%>  