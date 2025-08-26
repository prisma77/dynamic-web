<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 25. 8. 26.
  Time: 오전 11:16
  To change this template use File | Settings | File Templates.
--%>

<%@ page session="true" %>
<%
    session.invalidate();
    response.sendRedirect("login.jsp");
%>

