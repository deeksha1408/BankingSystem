<%-- 
    Document   : database
    Created on : Mar 14, 2020, 12:02:46 PM
    Author     : Deeksha Kesharwani
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{PreparedStatement pst;
        
        Integer balance, credit,debit;
        balance=(Integer)session.getAttribute("s7");
        credit=(Integer)session.getAttribute("s3");
        debit=(Integer)session.getAttribute("s4");
        balance = balance+debit-credit;
        String balanced = Integer.toString(balance);
               
        Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/bank","root",""); 
		
pst=con.prepareStatement("update user_info set balance=? where username='"+session.getAttribute("s6")+"'");
			pst.setString(1,balanced);	
			int x=pst.executeUpdate();
			if(x==1)
			{
			out.println("record has been updated");
			}
			
			
                }
                catch(Exception xx)
		{
			out.println("please check the data "+xx.getMessage());
		}
      %>
      <a href="user_validation.html"><h1> FURTHER TRANSACTION</h1> </a>
    </body>
</html>
