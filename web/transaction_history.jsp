<%-- 
    Document   : transaction_history
    Created on : Mar 14, 2020, 1:53:38 PM
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
   
ResultSet rs=stmt.executeQuery("select * from transaction where username='"+session.getAttribute("s1")+"'"); 
out.println("<center>");
out.println("<h1 style='font-size:500%;color:orange'>" +"USERS DETAILS"+"</H1>");
out.println("<table border='5'>");
out.println("<tr>"+"<td>"+"<h1>TRANSACTION_ID<h1>"+"</td>");
out.println("<td>"+"<h1>USERNAME<h1>"+"</td>");
out.println("<td>"+"<h1>CREDIT/WITHDRAWL<h1>"+"</td>");
out.println("<td>"+"<h1>DEBIT/DEPOSIT<h1>"+"</td>");
out.println("<td>"+"<h1>DATE<h1>"+"</td>"+"</tr>");


while(rs.next())
{
out.println("<tr>"+"<td>"+"<h1>"+"<center>"+rs.getInt(1)+"</td>"+"</h1>"+"</center>");
out.println("<td>"+"<h1>"+"<center>"+rs.getString(2)+"</td>"+"</h1>"+"</center>");
out.println("<td>"+"<h1>"+"<center>"+rs.getInt(3)+"</td>"+"</h1>"+"</center>");
out.println("<td>"+"<h1>"+"<center>"+rs.getInt(4)+"</td>"+"</h1>"+"</center>");
out.println("<td>"+"<center>"+"<h1>"+rs.getString("date")+"</td>"+"</h1>"+"</center>"+"</tr>");
}
out.println("</table>");
con.close();  

}catch(Exception e){ out.println(e);} 
        
out.println("</center>");
        %>