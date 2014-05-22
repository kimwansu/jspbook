package ch13;

import java.io.IOException;
import java.util.Properties;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/ch13/admin/*")
public class AdminFilter implements Filter
{
    Properties p;
    
    @Override public void destroy() {}
    
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException
    {
        p = (Properties) request.getServletContext().getAttribute("prop");
        p.put("adminId", "SuperUser");
        
        request.setAttribute("tel", "010-1234-1234");
        chain.doFilter(request, response);
    }
    
    @Override public void init(FilterConfig config) throws ServletException {}
}
