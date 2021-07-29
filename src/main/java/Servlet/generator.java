package Servlet;

import Classes.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;

@WebServlet(name = "generate", value = "/loggedin")
public class generator extends HttpServlet {
    static ArrayList<Product> products = new ArrayList<>();
    static {
        products.add(new Product("PRD001","AK-47","/picture/AK-47.jpg",500000));
        products.add(new Product("PRD002","RPK","/picture/RPK.jpg",1000000));
        products.add(new Product("PRD003","M4A1","/picture/M4A1.jpg",600000));
        products.add(new Product("PRD004","M60","/picture/M60.jpg",1200000));
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        request.setAttribute("Gun", products);
        RequestDispatcher rq = request.getRequestDispatcher("/loggedin.jsp");
        rq.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        request.setAttribute("Gun", products);
        RequestDispatcher rq = request.getRequestDispatcher("/loggedin.jsp");
        rq.forward(request, response);
    }
}
