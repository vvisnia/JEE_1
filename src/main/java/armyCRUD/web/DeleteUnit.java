package armyCRUD.web;
import armyCRUD.service.StorageService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(urlPatterns = "/deleteUnit")
public class DeleteUnit extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("text/html");
        int index = -1;
        int Id = Integer.parseInt(request.getParameter("iddelete"));
        StorageService d = (StorageService) getServletContext().getAttribute("storage");
        for (int i=0; i<d.getAllUnits().size(); i++)
        {
            if (d.getAllUnits().get(i).getId() == Id)
            {
                index = i;
                break;
            }
        }
        if (index != -1)
            d.getAllUnits().remove(index);
        this.getServletContext().getRequestDispatcher("/showAllUnits.jsp").forward(request, response);
    }
}