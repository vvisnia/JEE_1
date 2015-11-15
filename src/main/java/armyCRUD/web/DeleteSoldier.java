package armyCRUD.web;
import armyCRUD.service.StorageService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(urlPatterns = "/deleteSoldier")
public class DeleteSoldier extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("text/html");

        int index = -1;

        int Id = Integer.parseInt(request.getParameter("iddelete"));
        StorageService a = (StorageService) getServletContext().getAttribute("storage");
        for (int i=0; i<a.getAllSoldiers().size(); i++)
        {
            if (a.getAllSoldiers().get(i).getId() == Id)
            {
                index = i;
                break;
            }
        }

        if (index != -1)
            a.getAllSoldiers().remove(index);

        this.getServletContext().getRequestDispatcher("/showAllSoldiers.jsp").forward(request, response);
    }
}