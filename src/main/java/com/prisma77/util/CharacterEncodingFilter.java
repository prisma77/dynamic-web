// com/prisma77/util/CharacterEncodingFilter.java

package com.prisma77.util;

import javax.servlet.*;
import java.io.IOException;

public class CharacterEncodingFilter implements Filter {

    private String encoding;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // web.xml에서 설정한 초기 인코딩 값을 가져옴
        encoding = filterConfig.getInitParameter("encoding");
        if (encoding == null) {
            encoding = "UTF-8"; // 기본값으로 UTF-8 설정
        }
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        // 요청(request)의 인코딩을 UTF-8로 설정
        request.setCharacterEncoding(encoding);

        // 다음 필터나 서블릿으로 요청을 전달
        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {
        // 필터가 소멸될 때 호출됨
    }
}