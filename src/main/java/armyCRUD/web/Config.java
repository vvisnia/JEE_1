package armyCRUD.web;
import armyCRUD.service.StorageService;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
@WebListener
public class Config implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent event) {
        event.getServletContext().setAttribute("storage", new StorageService());
    }
    public void contextDestroyed(ServletContextEvent event) {
//do on application destroy
    }
}