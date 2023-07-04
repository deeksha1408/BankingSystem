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
        String sun,spd,uem,upd;
        sun=(String)session.getAttribute("s1");
        upd=request.getParameter("t1");
        uem=request.getParameter("t2");
        Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/bank","root",""); 
		
pst=con.prepareStatement("update user_info set email=?,password=? where username=?");
			pst.setString(1,uem);	
			pst.setString(2,upd);
			pst.setString(3,sun);
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
    </body>
</html>
