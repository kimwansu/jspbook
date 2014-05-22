package ch13;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class UserSessionListener implements HttpSessionListener
{
    public UserSessionListener()
    {
    }
    
    public void sessionCreated(HttpSessionEvent event)
    {
        HttpSession session = event.getSession();
        System.out.println("Session Created");
        String sid = session.getId();
        long time = session.getCreationTime();
        System.out.println("New sessionID: " + sid);
        System.out.println("Session created @ " + time);
    }
    
    public void sessionDestroyed(HttpSessionEvent event)
    {
        System.out.println("Session " + event.getSession().getId() + " destroyed");
    }
}


