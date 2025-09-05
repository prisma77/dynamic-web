<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 25. 9. 5.
  Time: 오전 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

    <script>

        function ajaxProcess(url, method, dataType) {
            $.ajax({
                url: url,
                type: method,
                data: dataType,
                success: function (data) {
                    console.log(data);
                },
                error: function (data) {
                    console.log(data);
                }
            })
        }

        $(function(){
            $("#ajax").on('click',function(){
                console.log('loading')
                $.ajax({
                    url: "ping.jsp",
                    method: "GET",
                    dataType: "text",
                    success: function(data){
                        $("#app").text(data);
                    },
                    error: function(data){
                        $("#app").text("에러: " + data.status);
                    }
                });
            });
        });

    </script>

</head>
<body>
<h1 id="ajax">ajax</h1>
<h1 id="message">msg</h1>
<div id="app">

</div>
</body>
</html>
