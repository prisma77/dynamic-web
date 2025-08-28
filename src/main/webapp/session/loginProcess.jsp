<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 25. 8. 28.
  Time: 오후 1:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>.
</head>

<%
    String id = request.getParameter("id");
    String password = request.getParameter("pass");

    if ("admin".equals(id) && "1234".equals(password)) {
        request.getSession().setAttribute("id",id);
        request.getSession().setMaxInactiveInterval(60); // 세션 유효 시간 60초 설정
        response.sendRedirect("sessionlist.jsp"); // list.jsp로 이동
    } else {
%>
<script>
    alert("아이디 또는 비밀번호가 일치하지 않습니다."); // 사용자에게 명확한 메시지 전달
    history.back(); // 이전 페이지(로그인 페이지)로 돌아가기
</script>
<%
    } // else 블록에 대한 Java 코드 블록 닫기
%>
<body>

</body>
</html>
