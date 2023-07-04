<%-- 
    Document   : user_validation
    Created on : Mar 16, 2020, 12:11:28 AM
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
        username=request.getParameter("t1");
        try{  
    Class.forName("com.mysql.jdbc.Driver");  
  
    Connection con=DriverManager.getConnection(  
    "jdbc:mysql://localhost:3306/bank","root","");  
   Statement stmt=con.createStatement();  
ResultSet rs=stmt.executeQuery("select username,balance from user_info");  
while(rs.next()) 
{
if(username.equals(rs.getString(1)) )
{ 
    session.setAttribute("s6", username);
   session.setAttribute("s7", rs.getInt(2) );
   response.sendRedirect("transaction.html");
   
   out.println("valid user");
}

else
{
    out.println("You do not have an account please register");
}
}

con.close();  

}catch(Exception e){ out.println(e);} 
        
        %>
    </body>
</html>
