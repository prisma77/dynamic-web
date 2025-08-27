<%@ page import="com.sun.source.tree.UsesTree" %><%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 25. 8. 27.
  Time: 오후 1:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
session.getServletContext() 웹앱의 전체범위 접근 메소드 ==
<body>
<%=
    session.getServletContext()
%>
<br>
session.getClass() ==
<%=
    session.getClass()
%>
<br>
<%

%>

<%
    HttpSession hs;
    session.setAttribute("msg","hello");
    session.setAttribute("msg","hello");
    session.getAttribute("msg");
%>
<br>
<%=
    session.getAttribute("msg")
%>
<br>
<%=
    session.getMaxInactiveInterval()
%>

</body>
</html>
