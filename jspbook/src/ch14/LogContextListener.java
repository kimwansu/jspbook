package ch14;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.slf4j.*;

@WebListener
public class LogContextListener implements ServletContextListener
{
    Logger log;
    
    public void contextDestroyed(ServletContextEvent event)
    {
        this.log.info("LogContextListener stop");
    }
    
    public void contextInitialized(ServletContextEvent event)
    {
        this.log = LoggerFactory.getLogger(this.getClass());
        this.log.info("LogContextListener start");
    }
}


