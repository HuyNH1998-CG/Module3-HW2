package Servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "login", value = "/login")
public class login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user = request.getParameter("username");
        String pass = request.getParameter("password");
        if("admin".equals(user)&&"admin".equals(pass)){
            RequestDispatcher rd = request.getRequestDispatcher("/loggedin");
            rd.forward(request,response);

        } else {
            response.sendRedirect("/index.jsp");
        }
    }
}
