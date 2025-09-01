package com.prisma77.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("*.do")
public class DispatcherServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String cmd = request.getParameter("cmd");
        Action action = ActionFactory.getInstance().getAction(cmd);
        ActionForWard actionForWard = action.execute(request, response);
        if (actionForWard != null) {
            if(actionForWard.isRedirect()) {
                response.sendRedirect(actionForWard.getPath());
            }else {
                RequestDispatcher dispatcher = request.getRequestDispatcher(actionForWard.getPath());
                dispatcher.forward(request, response);
            }
        }

    }
}
