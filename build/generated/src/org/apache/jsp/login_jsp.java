package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.Date;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"a.css\">\n");
      out.write("    </head>\n");
      out.write("    ");
      out.print(java.util.Calendar.getInstance().getTime());
      out.write("\n");
      out.write("    <body>\n");
      out.write("        ");

        String username,password;
        username=request.getParameter("t7");
        password=request.getParameter("t8");
        try{  
    Class.forName("com.mysql.jdbc.Driver");  
  
    Connection con=DriverManager.getConnection(  
    "jdbc:mysql://localhost:3306/bank","root","admin");  
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
        
        
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
