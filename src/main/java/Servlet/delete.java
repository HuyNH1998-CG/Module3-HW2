package Servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "delete", value = "/delete")
public class delete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int pos = Integer.parseInt(request.getParameter("pos"));
        generator.products.remove(pos);
        RequestDispatcher rd = request.getRequestDispatcher("/loggedin");
        rd.forward(request,response);
    }
}
