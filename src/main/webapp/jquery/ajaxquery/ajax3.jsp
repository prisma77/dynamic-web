<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 25. 9. 5.
  Time: 오후 3:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script>
  $(function() {
      $("#btn").on("click", function() {
          $.ajax({
            url:"/time",
            dataType:"text",
            success: function(data){
                console.log(data);
            },
            error: function(jqXHR, textStatus, errorThrown) {
                console.log(jqXHR.responseText);
            }
          })
      })
  });
</script>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <button>
    time
  </button>
<div id="out"></div>
</body>
</html>
