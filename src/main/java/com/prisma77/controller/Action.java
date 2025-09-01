package com.prisma77.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action {
    ActionForWard execute(HttpServletRequest request, HttpServletResponse response);
}
