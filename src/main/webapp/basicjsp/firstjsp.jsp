<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 25. 8. 22.
  Time: 오후 1:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
      h1 {
        font-family: 맑은 고딕, serif
      }
    </style>

    <script>
      function showMessage(msg) {

      }
    </script>

</head>
<body>
<hr>
  <h1>Hello World!</h1>
  <%
  for(int i=0;i<5;i++) {
    %>
  <hr size="10px" color="pink"></hr>
  <%
  }
  %>
</body>

</html>
