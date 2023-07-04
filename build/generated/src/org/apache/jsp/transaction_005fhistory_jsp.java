package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.Date;

public final class transaction_005fhistory_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-image:linear-gradient(to right,#6db9ef,#7ce08a)\">\n");
      out.write("        ");

            try{  
    Class.forName("com.mysql.jdbc.Driver");  
  
    Connection con=DriverManager.getConnection(  
    "jdbc:mysql://localhost:3306/bank","root","admin");  
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
        
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
