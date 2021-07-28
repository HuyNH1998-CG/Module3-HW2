package Servlet;

import Classes.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "add", value = "/add")
public class add extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String picture = request.getParameter("picture");
        float price = Float.parseFloat(request.getParameter("price"));
        generator.products.add(new Product(id,name,picture,price));
        RequestDispatcher rd = request.getRequestDispatcher("/loggedin");
        rd.forward(request,response);
    }
}
