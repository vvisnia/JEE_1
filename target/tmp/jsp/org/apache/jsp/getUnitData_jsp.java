package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import armyCRUD.domain.Soldier;
import armyCRUD.domain.Vehicle;
import armyCRUD.domain.Unit;
import armyCRUD.web.AddUnit;

public final class getUnitData_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("                <div class=\"navbutton\"><a href=\"showAllUnits.jsp\"><img src=\"graphics/unit.png\" class=\"navbutton\"></a></div>\n");
      out.write("                <div class=\"navbutton\"><a href=\"showAllSoldiers.jsp\"><img src=\"graphics/soldier.png\" class=\"navbutton\"></a></div>\n");
      out.write("                <div class=\"navbutton\"><a href=\"showAllVehicles.jsp\"><img src=\"graphics/vehicle.png\" class=\"navbutton\"></a></div>\n");
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
      armyCRUD.domain.Vehicle vehicle = null;
      synchronized (session) {
        vehicle = (armyCRUD.domain.Vehicle) _jspx_page_context.getAttribute("vehicle", PageContext.SESSION_SCOPE);
        if (vehicle == null){
          vehicle = new armyCRUD.domain.Vehicle();
          _jspx_page_context.setAttribute("vehicle", vehicle, PageContext.SESSION_SCOPE);
        }
      }
      out.write("\n");
      out.write("<div class=\"contentbox\">\n");
      out.write("<form action=\"addUnit\">\n");
      out.write("<table class=\"operationtable\">\n");
      out.write("<tr class='tableheader'>\n");
      out.write("<td colspan='2'>Dodaj jednostkę</td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td>Żołnierz:</td>\n");
      out.write("<td>\n");
      out.write("<select name=\"soldiers\">\n");

for (Soldier soldier2 : storage.getAllSoldiers())
{
out.println("<option value='" + soldier2.getId() + "'>" + soldier2.getId() + ". " + soldier2.getRank() + " " + soldier2.getName() + "</option>");
}

      out.write("\n");
      out.write("</select>\n");
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td>Pojazd:</td>\n");
      out.write("<td>\n");
      out.write("<select name=\"vehicles\">\n");

for (Vehicle vehicle2 : storage.getAllVehicles())
{
out.println("<option value='" + vehicle2.getId() + "'>" + vehicle2.getId() + ". " + vehicle2.getName() + " " + vehicle2.getType() + "</option>");
}

      out.write("\n");
      out.write("</select>\n");
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("\n");
      out.write("<tr>\n");
      out.write("<td colspan=\"2\"><input type=\"submit\" value=\" Dodaj \" align=\"right\"></td>\n");
      out.write("</tr>\n");
      out.write("</table>\n");
      out.write("</form>\n");
      out.write("</div>\n");
      out.write("</body>");
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
