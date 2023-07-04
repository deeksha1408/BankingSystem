<%-- 
    Document   : logout
    Created on : Sep 20, 2019, 5:46:54 AM
    Author     : Deeksha Kesharwani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
        session.removeAttribute("s1");
        session.removeAttribute("s2");
        session.invalidate();
        response.sendRedirect("index.html");
        %>
    </body>
</html>



