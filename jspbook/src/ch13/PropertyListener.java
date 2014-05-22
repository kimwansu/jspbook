package ch13;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class PropertyListener implements ServletContextListener
{
    public PropertyListener() {}
    
    public void contextInitialized(ServletContextEvent event)
    {
        ServletContext context = event.getServletContext();
        String file = context.getInitParameter("propfile");
        
        Properties p = new Properties();
        
        try {
            p.load(new FileInputStream(file));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        context.setAttribute("prop", p);
    }

    public void contextDestroyed(ServletContextEvent event) {}
}



