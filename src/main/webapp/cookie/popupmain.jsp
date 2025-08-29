<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 25. 8. 29.
  Time: 오전 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

  <script
          src="https://code.jquery.com/jquery-3.7.1.min.js"
          integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
          crossorigin="anonymous">
  </script>

<%--  <script>--%>
<%--    $(function() {--%>
<%--      window.open("popup.jsp","notice","width=600,height=400");--%>
<%--    })--%>
<%--  </script>--%>
</head>
<body>

  <%
    boolean showpopup=true;
    Cookie[] cookies= request.getCookies();
    if (cookies!=null) {
      for (Cookie c : cookies) {
        if ("popupYN".equals(c.getName()) && "done".equals(c.getValue())) {
          showpopup = false;
          break;
        }
      }
    }
    request.setAttribute("showpopup",showpopup);
  %>

  <h1>Main Page</h1>
</body>

<script>
  $(function() {
    if (<%= showpopup %>) {
      window.open("popup.jsp", "notice", "width=600,height=400");
    }
  });
</script>

</html>
