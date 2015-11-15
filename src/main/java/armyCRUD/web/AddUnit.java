package armyCRUD.web;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import armyCRUD.domain.Soldier;
import armyCRUD.domain.Vehicle;
import armyCRUD.domain.Unit;
import armyCRUD.service.StorageService;
@WebServlet(urlPatterns = "/addUnit")
public class AddUnit extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String [] a = request.getParameterValues("soldiers");
        int SoldierId = Integer.parseInt(a[0]);
        String [] b = request.getParameterValues("vehicles");
        int VehicleId = Integer.parseInt(b[0]);

        StorageService storage = (StorageService) getServletContext().getAttribute("storage");

        Unit newUni = new Unit(SoldierId, VehicleId);
        storage.add(newUni);

        this.getServletContext().getRequestDispatcher("/showAllUnits.jsp").forward(request, response);
    }
}