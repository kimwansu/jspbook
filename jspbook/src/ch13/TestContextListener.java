package ch13;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class TestContextListener implements ServletContextListener
{
    public TestContextListener()
    {
    }
    
    public void contextInitialized(ServletContextEvent event)
    {
        ServletContext context = event.getServletContext();
        Book mybook = new Book("자바 웹 프로그래밍", "황희정", 20000, "한빛미디어");
        context.setAttribute("book", mybook);
        System.out.println("TestContextListener 초기화");
    }
    
    public void contextDestroyed(ServletContextEvent event)
    {
        System.out.println("TestContextListener 종료");
    }    
}

