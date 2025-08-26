<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>

  <style>
    a {
      text-decoration: none; /* 밑줄 없애기 (기존 유지) /
      color: inherit;      / 기본 색상 상속 (기존 유지) /
      transition: color 0.3s ease-in-out; / 색상 변화를 부드럽게 만들기 위한 transition 추가 */
    }

    a:hover {
      color: #007bff; /* 마우스 호버 시 밝은 파란색 */
    }
  </style>

</head>
<body>
<h1><%= "Hello World!" %></h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<br>
<a href="life-CycleServlet">Hello JSP</a>
<br>
<a href="color-servlet">Hello JSP</a>
<br>

<%
  if (session.getAttribute("user") != null) {
    response.sendRedirect("board/welcome.jsp");
  } else {
    response.sendRedirect("board/login.jsp");
  }
%>


</body>
</html>