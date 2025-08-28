package com.prisma77.ctrl;

import com.prisma77.dto.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.*;

@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {

    private Map<Integer, Product> productDB = new HashMap<Integer,Product>();

    @Override
    public void init() throws ServletException {
        productDB = new HashMap<>();
        productDB.put(1,new Product(1,"사과",1000,"../img/common/1.jpg"));
        productDB.put(2, new Product(2, "바나나", 1200, "../img/common/2.jpg"));
        productDB.put(3, new Product(3, "딸기", 1500, "../img/common/3.jpg"));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        int id = Integer.parseInt(request.getParameter("id"));
        HttpSession session = request.getSession();
        List<Product>cart=(List<Product>) session.getAttribute("cart");

        if(cart==null) {
            cart = new ArrayList<Product>();
        }
        if("add".equals(action)){
            Product product = productDB.get(id);
            cart.add(product);
        }else if("remove".equals(action)){
            cart.remove(id);
        }
        session.setAttribute("cart",cart);
        response.sendRedirect("cart/cart.jsp");

    }
}
