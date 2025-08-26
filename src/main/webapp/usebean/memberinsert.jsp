<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 25. 8. 25.
  Time: 오후 3:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    request.setCharacterEncoding("UTF-8");
%>

NAME: <%=request.getParameter("name")%>
<br>
EMAIL: <%=request.getParameter("email")%>
<br>
PW: <%=request.getParameter("pwd")%>
<br>
REM : <%=request.getParameter("remember")%>

</body>
</html>
