<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 25. 8. 26.
  Time: 오후 2:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="bean" class="com.prisma77.model.vo.MemberVO"/>
<html>

<%request.setCharacterEncoding("UTF-8");%>

<jsp:setProperty name="bean" property="*"/>

<%=bean%>
<head>
    <title>Title</title>
</head>
<body>
    <jsp:getProperty name="bean" property="name"/>
</body>
</html>
