<%-- 
    Document   : show_users
    Created on : May 24, 2020, 6:26:15 PM
    Author     : Deeksha Kesharwani
--%>


<%@page import="java.sql.*,java.util.Date" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-image:linear-gradient(to right,#6db9ef,#7ce08a)">
        <%
            try{  
    Class.forName("com.mysql.jdbc.Driver");  
  
    Connection con=DriverManager.getConnection(  
    "jdbc:mysql://localhost:3306/bank","root","");  
   Statement stmt=con.createStatement();
   
ResultSet rs=stmt.executeQuery("select * from user_info"); 
out.println("<center>");
out.println("<h1 style='font-size:500%;color:orange'>" +"USERS DETAILS"+"</H1>");
out.println("<table border='5'>");
out.println("<tr>"+"<td>"+"<h1>USER NAME IS IS<h1>"+"</td>"+"</tr>");


while(rs.next())
{
out.println("<tr>"+"<td>"+"<h1>"+"<center>"+rs.getString(1)+"  "+rs.getString(2)+"  "+rs.getString(3)+"</td>"+"</h1>"+"</center>"+"</tr>");
}
out.println("</table>");
con.close();  

}catch(Exception e){ out.println(e);} 
        
out.println("</center>");
        %>
    </body>
</html>

