<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 25. 9. 1.
  Time: 오전 11:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
  <title>JSTL forEach 예제</title>
</head>
<body>
<%--<%--%>
<%--  List<String> names = Arrays.asList("홍길동", "김철수", "이영희");--%>
<%--  request.setAttribute("names", names);--%>
<%--%>--%>
<%--<h2>이름 목록</h2>--%>

<c:forEach var="1" begin="1" end="10">
  <c:out value="Test"/>
</c:forEach>
<c:set var="cnt" value="100"/>
<c:if test="${cnt>3}">
  cnt>50
</c:if>

<c:set var="num" value="100"/>
<c:choose>
  <c:when test="${num>=0 and num<11}">
    <h1>num>=0 and num<11</h1>
  </c:when>
  <c:when test="${num>=11 and num<20}">
    <h1>num>=0 and num<11</h1>
  </c:when>
  <c:when test="${num>=21 and num<30}">
    <h1>num>=0 and num<11</h1>
  </c:when>
  <c:otherwise>
    <h1>other</h1>
  </c:otherwise>
</c:choose>

<%--<ul>--%>
<%--  <c:forEach var="name" items="${names}">--%>
<%--    <li>${name}</li>--%>
<%--  </c:forEach>--%>
<%--</ul>--%>
<%--<p>Length of 'hello': ${fn:length('hello')}</p>--%>
</body>
</html>
