package com.prisma77.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

// 명령 인수받 - action 생성 - 호출 - action 수행하고 actionforward를 return

@WebServlet("*.do")//MVC에서 대장 Controller
public class DispatcherServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        String cmd = request.getParameter("cmd");
        Action action=ActionFactory.getInstance().getAction(cmd);//UpCasting
        ActionForWard actionForWard= action.execute(request, response);
        if(actionForWard!=null){
            if(actionForWard.isRedirect()){//redirect (2번호출)
                response.sendRedirect(actionForWard.getPath());

            }else{//forward는 리소스를 얻기위해 내부적으로 한번 호출
                RequestDispatcher dispatcher=request.getRequestDispatcher(actionForWard.getPath());
                dispatcher.forward(request, response);
            }
        }


    }
}