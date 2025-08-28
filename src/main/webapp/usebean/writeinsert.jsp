<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 25. 8. 27.
  Time: 오후 3:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="bean" class="com.prisma77.model.vo.WriteVO" scope="application" />
<jsp:setProperty name="bean" property="*"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="list.jsp"><%=bean%></a>
D000001<p>d</p>
</body>
</html>