<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 25. 8. 25.
  Time: 오후 3:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="../index.jsp">MySite</a>
  <div class="collapse navbar-collapse">
    <ul class="navbar-nav ml-auto">
      <%
        String user = (String) session.getAttribute("user");
        if (user != null) {
      %>
      <li class="nav-item"><a class="nav-link" href="board.jsp">FreeBoard</a></li>
      <li class="nav-item"><a class="nav-link" href="notice.jsp">Notice</a></li>
      <li class="nav-item"><a class="nav-link" href="logout.jsp">Logout</a></li>
      <%
      } else {
      %>
      <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
      <li class="nav-item"><a class="nav-link" href="signup.jsp">Sign Up</a></li>
      <%
        }
      %>
    </ul>
  </div>
</nav>
