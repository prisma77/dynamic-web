<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 25. 8. 26.
  Time: 오후 4:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    request.getMethod()
    <%=
        request.getMethod()
    %>
    request.changeSessionId()
    <%=
        request.changeSessionId()
    %>

    <%=
        request.getCookies()
    %>

    <%=
        request.getContextPath()
    %>

    <%=
    request.getHeader("RequestMethod")
    %>

    <%=
    request.getHeaderNames()
    %>

</body>
</html>
