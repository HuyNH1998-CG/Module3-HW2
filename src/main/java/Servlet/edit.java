package Servlet;

import Classes.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "edit", value = "/edit")
public class edit extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        int pos = Integer.parseInt(request.getParameter("pos"));
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String picture = request.getParameter("picture");
        float price = Float.parseFloat(request.getParameter("price"));
        generator.products.set(pos,new Product(id,name,picture,price));
        RequestDispatcher rd = request.getRequestDispatcher("/loggedin");
        rd.forward(request,response);
    }
}
