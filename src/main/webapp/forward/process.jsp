<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 25. 8. 29.
  Time: 오전 11:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
.
<%
  request.setCharacterEncoding("UTF-8");
  String name = request.getParameter("username");
  request.setAttribute("name",name);
  //response.sendRedirect("result.jsp");

  RequestDispatcher rd = request.getRequestDispatcher("result.jsp");
  rd.forward(request,response);
%>

</body>
</html>
