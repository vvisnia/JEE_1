package armyCRUD.web;
import armyCRUD.service.StorageService;
import armyCRUD.domain.Soldier;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(urlPatterns = "/updateSoldier")
public class UpdateSoldier extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("text/html");
        int Id = Integer.parseInt(request.getParameter("id"));
        String Rank = request.getParameter("rank");
        String Name = request.getParameter("name");
        int yearOfService = Integer.parseInt(request.getParameter("yearOfService"));
        StorageService a = (StorageService) getServletContext().getAttribute("storage");
        for (int i=0; i<a.getAllSoldiers().size(); i++)
        {
            if (a.getAllSoldiers().get(i).getId() == Id)
            {
                Soldier s = a.getAllSoldiers().get(i);
                s.setRank(Rank);
                s.setName(Name);
                s.setyearOfService(yearOfService);
                break;
            }
        }
//Navigate to page with list of all customers
        this.getServletContext().getRequestDispatcher("/showAllSoldiers.jsp").forward(request, response);
    }
}