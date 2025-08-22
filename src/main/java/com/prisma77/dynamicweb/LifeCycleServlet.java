package com.prisma77.dynamicweb;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

//Servlet은 요청을 service 해주는 코드
@WebServlet(name = "lifeCycleServlet", value = "/life-CycleServlet")
public class LifeCycleServlet extends HttpServlet {


    @Override
    public void init() throws ServletException {
        System.out.println("public void init() throws ServletException");
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("service(req,resp)");
        System.out.println(req);//요청객체

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("doGet()");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("doPost()");
    }
}