package armyCRUD.web;
import armyCRUD.service.StorageService;
import armyCRUD.domain.Soldier;
import armyCRUD.domain.Unit;
import armyCRUD.domain.Vehicle;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(urlPatterns = "/updateUnit")
public class UpdateUnit extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("text/html");
        int Id = Integer.parseInt(request.getParameter("id"));
        String [] c = request.getParameterValues("soldiers");
        int SoldierId = Integer.parseInt(c[0]);
        String [] e = request.getParameterValues("vehicles");
        int VehicleId = Integer.parseInt(e[0]);

        StorageService f = (StorageService) getServletContext().getAttribute("storage");

        for (int i=0; i<f.getAllUnits().size(); i++) {
            if (f.getAllUnits().get(i).getId() == Id)
            {
                Unit u = f.getAllUnits().get(i);
                u.setSoldierId(SoldierId);
                u.setVehicleId(VehicleId);
                break;
            }
        }

        this.getServletContext().getRequestDispatcher("/showAllUnits.jsp").forward(request, response);
    }
}