package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.PrintWriter;
import armyCRUD.domain.Soldier;

public final class updateSoldier_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
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
      response.setContentType("text/html; charset=UTF-8");
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">\n");
      out.write("<title>Armia wściekłych lisów</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div class=\"navbar\">\n");
      out.write("            <div class=\"navbuttons\">\n");
      out.write("                <div class=\"navbuttonhome\"><a href=\"index.jsp\"><img src=\"graphics/home.png\" class=\"navbuttonhome\"></a></div>\n");
      out.write("                <div class=\"navbutton\"><a href=\"unit.jsp\"><img src=\"graphics/unit.png\" class=\"navbutton\"></a></div>\n");
      out.write("                <div class=\"navbutton\"><a href=\"showAllSoldiers.jsp\"><img src=\"graphics/soldier.png\" class=\"navbutton\"></a></div>\n");
      out.write("                <div class=\"navbutton\"><a href=\"vehicle.jsp\"><img src=\"graphics/vehicle.png\" class=\"navbutton\"></a></div>\n");
      out.write("        </div>\n");
      out.write("</div>\n");
      armyCRUD.service.StorageService storage = null;
      synchronized (application) {
        storage = (armyCRUD.service.StorageService) _jspx_page_context.getAttribute("storage", PageContext.APPLICATION_SCOPE);
        if (storage == null){
          storage = new armyCRUD.service.StorageService();
          _jspx_page_context.setAttribute("storage", storage, PageContext.APPLICATION_SCOPE);
        }
      }
      out.write('\n');
      armyCRUD.domain.Soldier soldier = null;
      synchronized (session) {
        soldier = (armyCRUD.domain.Soldier) _jspx_page_context.getAttribute("soldier", PageContext.SESSION_SCOPE);
        if (soldier == null){
          soldier = new armyCRUD.domain.Soldier();
          _jspx_page_context.setAttribute("soldier", soldier, PageContext.SESSION_SCOPE);
        }
      }
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.introspect(_jspx_page_context.findAttribute("soldier"), request);
      out.write("\n");
      out.write("<div class=\"contentbox\">\n");
      out.write("<table class=\"operationtable\">\n");

String Id = request.getParameter("idedit");
String Rank = "", Name = ""; int yearOfService = -1;
for (Soldier s : storage.getAllSoldiers())
{
if (s.getId() == Integer.parseInt(Id))
{
                Rank = s.getRank();
                Name = s.getName();
                yearOfService = s.getyearOfService();
                break;
            }
}
out.println("<form action='updateSoldier'><input type='hidden' name='id' value='" + Id + "' /><tr class='tableheader'><td colspan='2'>Id Żołnierza=" + Id + "</td></tr><tr><td>Ranga:</td><td><input type='text' name='rank' value='" + Rank + "' /></td></tr><tr><td>Nazwa:</td><td><input type='text' name='name' value='" + Name + "' /></td></tr><tr><td>Lata Służby:</td><td><input type='text' name='yearOfService' value='" + Integer.toString(yearOfService) + "' /></td></tr><tr><td colspan='2'><input type='submit' value='ZAPISZ'></td></tr></form>");
out.println("<p align='center'><a href='showAllSoldiers.jsp'>Powrót do listy żołnierzy</a></p>");


      out.write("\n");
      out.write("</table>\n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("</html>");
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
