<%-- 
    Document   : transaction
    Created on : Mar 14, 2020, 10:02:00 AM
    Author     : Deeksha Kesharwani
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-image:linear-gradient(to right,red,blue)">
       <%
        PreparedStatement pst;
        
        String username,credit,debit,date;
        username=request.getParameter("t1");
        credit=request.getParameter("t2");
        debit=request.getParameter("t3");
        date=request.getParameter("t4");
        Integer d=Integer.parseInt(credit);
        Integer aa=(Integer)session.getAttribute("s7");
        
        try{
        Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/bank","root",""); 
pst=con.prepareStatement("insert into transaction(username,credit,debit,date) values(?,?,?,?)");
                        pst.setString(1,username);	
			pst.setString(2,credit);
			pst.setString(3,debit);
                        pst.setString(4,date);
                        
                        int x=pst.executeUpdate();
                       
			if(x==1)
			{
			out.println("<h1 style='font-size:100px;color:yellow'>"+ "TRANSACTION UPDATED SUCCESSFULLY"+ "</h1>");
			}			
                }
                catch(Exception e)
		{out.println("please check the data "+e.getMessage());
		}      
        Integer credits,debits,balance;
        credits=Integer.parseInt(credit);
        debits=Integer.parseInt(debit);
    session.setAttribute("s3", credits);
    session.setAttribute("s4", debits);
    String s=(String)session.getAttribute("s6");
    Integer a=(Integer)session.getAttribute("s7");
    out.println(s);
    out.println(a);
    
       %>
       <a href='database.jsp'>CONFIRM</a>
       <br>
       <br>
       <h1> 
           <a href="index.html"> CLICK HERE FOR HOME PAGE </a><h1>
               

               
               
               
               
               
           </body>
</html>

