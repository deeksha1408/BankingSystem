<%-- 
    Document   : login
    Created on : Mar 13, 2020, 10:07:27 PM
    Author     : Deeksha Kesharwani
--%>

<%@page import="java.sql.*,java.util.Date" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="a.css">
    </head>
    <%=java.util.Calendar.getInstance().getTime()%>
    <body>
        <%
        String username,password;
        username=request.getParameter("t7");
        password=request.getParameter("t8");
        try{  
    Class.forName("com.mysql.jdbc.Driver");  
  
    Connection con=DriverManager.getConnection(  
    "jdbc:mysql://localhost:3306/bank","root","");  
   Statement stmt=con.createStatement();  
ResultSet rs=stmt.executeQuery("select * from user_info");  
while(rs.next()) 
{
if(username.equals(rs.getString(7)) && password.equals(rs.getString(8)) && "manager".equals(rs.getString(13)))
{ 
    
   response.sendRedirect("manager_profile.jsp");
   session.setAttribute("s1", username);
   session.setAttribute("s2", password);
   out.println("login success");
}
if(username.equals(rs.getString(7)) && password.equals(rs.getString(8)) && "cashier".equals(rs.getString(13)))
{ 
    
   response.sendRedirect("cashier_profile.jsp");
   session.setAttribute("s1", username);
   session.setAttribute("s2", password);
   out.println("login success");
}
if(username.equals(rs.getString(7)) && password.equals(rs.getString(8)) && "user".equals(rs.getString(13)))
{ 
    
   response.sendRedirect("user_profile.jsp");
   session.setAttribute("s1", username);
   session.setAttribute("s2", password);
   out.println("login success");
}
else
{
    out.println("You have entered wrong information");
}
}

con.close();  

}catch(Exception e){ out.println(e);} 
        
        %>
    </body>
</html>
