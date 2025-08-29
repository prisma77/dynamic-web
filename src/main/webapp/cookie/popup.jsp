<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 25. 8. 29.
  Time: 오전 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <script src="https://code.jquery.com/jquery-3.7.1.min.js"
          integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
          crossorigin="anonymous">
  </script>

  <script>
    $(function() {
      $("button#close").click(function() {
        if($("input#chk").is(":checked")) {
          alert("ok");
          var date = new Date();
          date.setTime(date.getTime() + (5*1000));
          document.cookie = "popupYN=done; expires=" + date.toUTCString() + "; path=/";
        }else {
          alert("none");
        }
        window.close();
      })
    })
  </script>

    <title>Title</title>
</head>
<body>
  <h2>공지사항</h2>
  <p>내용</p>
  <input type="checkbox" id="chk"> 5초 동안 창을 열지 않음<br>
  <button id="close">
    닫기
  </button>
</body>
</html>
