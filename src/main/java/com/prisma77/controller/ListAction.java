package com.prisma77.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ListAction  implements Action {
    private String path;
    private boolean isRedirect;

    public ListAction(String path, boolean isRedirect) {
        this.path = path;
        this.isRedirect = isRedirect;
    }

    @Override
    public ActionForWard execute(HttpServletRequest request, HttpServletResponse response) {
        //BL수행
        System.out.println("ListAction execute");

        return new ActionForWard(path, isRedirect);
    }
}