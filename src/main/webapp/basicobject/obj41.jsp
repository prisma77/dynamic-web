<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 25. 8. 27.
  Time: 오후 2:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
  String data = request.getParameter("data");
  request.setAttribute("data",data);
  session.setAttribute("data",data);
  application.setAttribute("data",data);
%>
<h1><a href="obj42.jsp">Data=<%=data%></a></h1>
</body>
</html>
