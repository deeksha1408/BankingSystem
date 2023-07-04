<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   
        
        <body style="background-image:linear-gradient(to right,yellow,#7ce08a)">
        <center>
            <h1 style="font-size:500%;color:red"> UPDATE DETAILS </h1>
                <table border="5" cellpadding="5" cellspacing="5">
        <form name="f1" method="post" action="updatedata.jsp">
            <tr> <td>
Update Password:</td> <td><input type="password" name="t1" ><br></td></tr>
<tr><td>Update Email Id:<td><input type="text" name="t2" ><br></td></tr>
<tr><td><input type="submit" value="UPDATE"></td>
<td><input type="reset" value="Clear"></td></tr>
</form>
                    </table>
            </center>
    </body>
</html>
