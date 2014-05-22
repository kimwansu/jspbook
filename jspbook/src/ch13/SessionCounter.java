package ch13;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener
public class SessionCounter implements HttpSessionListener
{
    
    private static int activeSessions = 0;
    
    /* Session Creation Event */
    public void sessionCreated(HttpSessionEvent event)
    {
        activeSessions++;
    }
    
    /* Session Invalidation Event */
    public void sessionDestroyed(HttpSessionEvent event)
    {
        if (activeSessions > 0)
            activeSessions--;
    }
    
    public static int getActiveSessions()
    {
        return activeSessions;
    }
}
