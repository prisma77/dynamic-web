package com.prisma77.controller;

import com.prisma77.dao.BoardDAO;
import com.prisma77.dto.BoardDTO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/jstlLesson")
public class ElJstlController extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        BoardDAO boardDAO = new BoardDAO();
        if(action!=null&& action.equals("redirect")) {//
            req.setAttribute("list",  boardDAO.getAllBoards());
            resp.sendRedirect(req.getContextPath() + "eljstl/redirectJstl.jsp");

        }else if(action!=null&& action.equals("forward")) {
            req.setAttribute("list",  boardDAO.getAllBoards());
            req.getRequestDispatcher("eljstl/forwardJstl.jsp").forward(req, resp);

        }else if(action!=null&& action.equals("info")) {
            req.setAttribute("info", new BoardDTO(1,"no","hi",null, null));
            req.getRequestDispatcher("eljstl/infoJstl.jsp").forward(req, resp);

        }else if(action!=null&& action.equals("calc")) {
            req.setAttribute("calc", new BoardDTO(1,"no","hi",null, null));
            req.getRequestDispatcher("eljstl/elJstl3.jsp").forward(req, resp);
        }



    }
}