package ch13;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet(urlPatterns = { "/PropertyServlet" }, initParams = {
        @WebInitParam(name = "name1", value = "user1"),
        @WebInitParam(name = "name2", value = "user2") })
public class PropertyServlet extends HttpServlet implements Servlet
{
    private static final long serialVersionUID = 1L;
    
    public PropertyServlet()
    {
        super();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        doPost(request, response);
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        // 클라이언트 응답 시 전달된 콘텐츠에 대한 MIME Type와 캐릭터셋 지정
        response.setContentType("text/html; charset=UTF-8");
        
        // 클라이언트 응답을 위한 출력 스트림 확보
        PrintWriter out = response.getWriter();
        
        out.println("<html><body><center>");
        out.println("<h2>ch13: PropertyServlet</h2>");
        out.println("<hr />");
        out.println("name1: " + getInitParameter("name1") + "<br />");
        out.println("name2: " + getInitParameter("name2"));
        
        out.println("<hr />");
        out.println("name3: " + getServletContext().getInitParameter("name3"));
        out.println("</center></body></html>");
    }
}
