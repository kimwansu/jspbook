package ch04;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalcServlet
 */
@WebServlet("/CalcServlet")
public class CalcServlet extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalcServlet()
    {
        super();
        // TODO Auto-generated constructor stub
    }
    
    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        // TODO Auto-generated method stub
    }
    
    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        // TODO Auto-generated method stub
        response.setContentType("text/html;charset=euc-kr");
        PrintWriter out = response.getWriter();
        int num1 = Integer.parseInt(request.getParameter("num1"));
        int num2 = Integer.parseInt(request.getParameter("num2"));
        String op = request.getParameter("operator");
        int result = calc(num1, num2, op);
        out.println("<html>");
        out.println("<head><title>계산기</title></head>");
        out.println("<body><center>");
        out.println("<h2>계산결과</h2>");
        out.println("<hr />");
        out.println(num1 + " " + op + " " + num2 + " = " + result);
        out.println("</center></body></html>");
    }
    
    public int calc(int num1, int num2, String op)
    {
        int result = 0;
        if (op.equals("+")) {
            result = num1 + num2;
        } else if (op.equals("-")) {
            result = num1 - num2;
        } else if (op.equals("*")) {
            result = num1 * num2;
        } else if (op.equals("/")) {
            result = num1 / num2;
        }
        return result;
    }
}
