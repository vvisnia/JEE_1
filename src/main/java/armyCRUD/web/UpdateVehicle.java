package armyCRUD.web;
import armyCRUD.service.StorageService;
import armyCRUD.domain.Vehicle;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(urlPatterns = "/updateVehicle")
public class UpdateVehicle extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("text/html");
        int Id = Integer.parseInt(request.getParameter("id"));

        String Name = request.getParameter("name");
        String Type = request.getParameter("type");
        String Status = request.getParameter("status");
        int Speed = Integer.parseInt(request.getParameter("speed"));
        StorageService a = (StorageService) getServletContext().getAttribute("storage");
        for (int i=0; i<a.getAllVehicles().size(); i++)
        {
            if (a.getAllVehicles().get(i).getId() == Id)
            {
                Vehicle s = a.getAllVehicles().get(i);

                s.setName(Name);
                s.setType(Type);
                s.setStatus(Status);
                s.setSpeed(Speed);
                break;
            }
        }

        this.getServletContext().getRequestDispatcher("/showAllVehicles.jsp").forward(request, response);
    }
}