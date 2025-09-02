package com.prisma77.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginProcessAction implements Action{

    private String path;
    private boolean isRedirect;

    public LoginProcessAction(String path, boolean isRedirect) {
        this.path = path;
        this.isRedirect = isRedirect;
    }

    @Override
    public ActionForWard execute(HttpServletRequest request, HttpServletResponse response) {
        String id = request.getParameter("id");
        String passwd = request.getParameter("password");

        if(id.equals("admin") && passwd.equals("1234")){
            request.getSession().setAttribute("admin",id);
            request.getSession().setMaxInactiveInterval(60);
            path = "list.do?cmd=list";
            isRedirect = true;
        }

        return new ActionForWard(path, isRedirect);
    }
}
