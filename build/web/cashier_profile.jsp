<%-- 
    Document   : cashier_profile
    Created on : Mar 14, 2020, 6:54:39 AM
    Author     : Deeksha Kesharwani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="a.css">
    </head>
    <%=java.util.Calendar.getInstance().getTime()%>
    <br>
    <body style="background-image:linear-gradient(to right,black,white)">
    <center>
        <h1 style="font-size:500%;color:black"> CASHIER PANEL </h1>
        
        
        <div class="myButton">
    <h1><a href="updateprofile.jsp">UPDATE PROFILE</a></h1>
    </div>
        
        <div class="myButton">
    <h1><a href="logout.jsp">LOGOUT</a></h1>
        </div>
        
        <BR><BR>
        <div class="myButton">
    <h1><a href="show_users.jsp">SHOW USERS</a></h1>
        </div>
        <BR><BR>
        <div class="myButton">
    <h1><a href="user_validation.html">UPDATE USER'S TRANSACTION</a></h1>
        </div>
        
        
    <hr>
        <%
        String sun,spd;
        sun=(String)session.getAttribute("s1");
        spd=(String)session.getAttribute("s2");
       
        out.println("Welcome "+sun);
     
        
        %>
        
        <%
        out.println("<h1>"+"WELCOME"+"  "+ sun+ "</h1>");
        %>
        
    </center>
    </body>
</html>
