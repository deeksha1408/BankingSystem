package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class user_005fprofile_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <br>\n");
      out.write("    <body style=\"background-image:linear-gradient(to right,black,white)\">\n");
      out.write("    <center>\n");
      out.write("        <h1 style=\"font-size:500%;color:black\"> USER PANEL </h1>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <div class=\"myButton\">\n");
      out.write("    <h1><a href=\"updateprofile.jsp\">UPDATE PROFILE</a></h1>\n");
      out.write("    </div>\n");
      out.write("        \n");
      out.write("        <div class=\"myButton\">\n");
      out.write("    <h1><a href=\"logout.jsp\">LOGOUT</a></h1>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <BR><BR>\n");
      out.write("        <div class=\"myButton\">\n");
      out.write("    <h1><a href=\"check_balance.jsp\">CHECK BALANCE</a></h1>\n");
      out.write("        </div>\n");
      out.write("        <BR><BR>\n");
      out.write("        <div class=\"myButton\">\n");
      out.write("    <h1><a href=\"transaction_history.jsp\">ALL TRANSACTIONS</a></h1>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("    <hr>\n");
      out.write("        ");

        String sun,spd;
        sun=(String)session.getAttribute("s1");
        spd=(String)session.getAttribute("s2");
       
        out.println("Welcome "+sun);
     
        
        
      out.write("\n");
      out.write("        \n");
      out.write("        ");

        out.println("<h1>"+"WELCOME"+"  "+ sun+ "</h1>");
        
      out.write("\n");
      out.write("        \n");
      out.write("    </center>\n");
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
