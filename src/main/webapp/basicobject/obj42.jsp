<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 25. 8. 27.
  Time: 오후 2:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Hello World</h1>
hello
<%
  String data = "data";
  out.print(request.getAttribute(data)+"<br>");
  out.print(session.getAttribute(data)+"<br>");
  out.print(application.getAttribute(data)+"<br>");
%>

</body>
</html>
