<%-- 
    Document   : signup
    Created on : Mar 13, 2020, 8:39:14 PM
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
        
        String f_name,m_name,l_name,address,age,aadhar_no,username,password,email,gender,account_no,balance;
        f_name=request.getParameter("t1");
        m_name=request.getParameter("t2");
        l_name=request.getParameter("t3");
        address=request.getParameter("t4");
        age=request.getParameter("t5");
        aadhar_no=request.getParameter("t6");
        username=request.getParameter("t7");
        password=request.getParameter("t8");
        email=request.getParameter("t9");
        gender=request.getParameter("t10");
        account_no=request.getParameter("t11");
        balance=request.getParameter("t12");
        session.setAttribute("s5", balance);
        
        try{
        Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/bank","root",""); 
pst=con.prepareStatement("insert into user_info(f_name,m_name,l_name,address,age,aadhar_no,username,password,email,gender,account_no,balance) values(?,?,?,?,?,?,?,?,?,?,?,?)");
                        pst.setString(1,f_name);	
			pst.setString(2,m_name);
			pst.setString(3,l_name);
                        pst.setString(4,address);
                        pst.setString(5,age);
                        pst.setString(6,aadhar_no);
                        pst.setString(7,username);
                        pst.setString(8,password);
                        pst.setString(9,email);
                        pst.setString(10,gender);
                        pst.setString(11,account_no);
                        pst.setString(12,balance);
                        int x=pst.executeUpdate();
                       
			if(x==1)
			{
			out.println("<h1 style='font-size:100px;color:yellow'>"+ "REGISTRATION SUCCESSFULL"+ "</h1>");
			}			
                }
                catch(Exception e)
		{out.println("please check the data "+e.getMessage());
		}       
       %>
       <br>
       <br>
       <h1> 
           <a href="index.html"> CLICK HERE FOR HOME PAGE </a><h1>
    </body>
</html>
