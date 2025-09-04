<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 25. 9. 4.
  Time: 오후 3:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>info</title>
</head>
<body>
<c:out value="id"/>${info.id}<br>
<c:out value="title"/>${info.title}<br>
<c:out value="content"/>${info.content}<br>
<c:out value="createdAt"/>${info.createdAt}<br>
</body>
</html>
