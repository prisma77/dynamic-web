<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 25. 8. 26.
  Time: 오전 11:16
  To change this template use File | Settings | File Templates.
--%>

<%@ page session="true" %>
<%@ include file="/include/header.jsp" %>
<%
    if (session.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<div class="container mt-5">
    <h2>Welcome, <%= session.getAttribute("user") %>!</h2>
    <p><a href="board.jsp">FreeBoard</a> | <a href="notice.jsp">Notic</a> | <a href="logout.jsp">Logout</a></p>
</div>
<%@ include file="/include/footer.jsp" %>


