<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 25. 8. 22.
  Time: 오후 2:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<pre>
    <%
      for (int i = 1; i <= 9; i++) {
        for (int j = 1; j <= 9; j++) {
          out.print(i + "*" + j + "=" + (i * j) + "\t");
        }
        out.println();
      }
    %>
    </pre>
</body>
</html>
