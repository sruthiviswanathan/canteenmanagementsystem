<%-- 
    Document   : logout
    Created on : 29 Mar, 2018, 4:57:58 PM
    Author     : srava
--%>
<%@ include file = "head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
            session.invalidate();    
            out.print("<b>You are successfully logged out!</b>");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGOUT</title>
    </head>
    <body>
        
    </body>
</html>
