package ch14;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;

import org.slf4j.*;

@WebFilter("/ch14/*")
public class LogFilter implements Filter
{
    Logger log;
    
    public void destroy()
    {
        this.log.info("LogFilter stop");
    }
    
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException
    {
        try {
            int num = Integer.parseInt(request.getParameter("num"));
            if (num > 100) {
                this.log.warn("잘못된 입력: " + num);
            }
        } catch (Exception e) {}
        
        this.log.debug("LogFilter run" + request.getRemoteAddr());
        chain.doFilter(request, response);
    }
    
    public void init(FilterConfig config) throws ServletException
    {
        this.log = LoggerFactory.getLogger(this.getClass());
        this.log.info("LogFilter start");
    }
}
