<%--
  Created by IntelliJ IDEA.
  User: sists
  Date: 2025-09-05
  Time: 오후 1:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<h2>Striped Rows</h2>
<div class="container">
    <p>The .table-striped class adds zebra-stripes to a table:</p>
    <table class="table table-striped">
        <thead id="thead">

        </thead>
        <tbody>

        </tbody>
    </table>
</div>

</body>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script>
    function ajaxProcess(url,method,dataType){
        $.ajax({
            url:url,
            method:method,
            dataType:dataType,
            success:function(data){//Ajax통신 Success
                //{"no":1,"name":"Spring","age":34}

                //console.log(data);
                //console.log(data.no+" "+data.name+" "+data.age);
                //console.log(data["no"]+" "+data["name"]+" "+data["age"]);
                // 1. thead(테이블 제목) 생성
                if (data.length > 0) {
                    let keys = Object.keys(data[0]);
                    let thead_html = "<tr>";
                    $.each(keys, function(index, key) {
                        thead_html += "<th>" + key.toUpperCase() + "</th>";
                    });
                    thead_html += "</tr>";
                    $("#thead").html(thead_html);
                }

                // 2. tbody(테이블 내용) 생성
                let tbody_html = "";
                $.each(data, function(index, item) {
                    tbody_html += "<tr>";
                    $.each(item, function(key, value) {
                        tbody_html += "<td>" + value + "</td>";
                    });
                    tbody_html += "</tr>";
                });
                $("tbody").html(tbody_html);
            },
            error: function(data) { // Ajax통신이 Fail
                console.log(data);
            }
        });


    }
    $(function(){
        $("[class='container']").hide();
        $("h2").click(function(){ //button을 click했을때... Event발생
            ajaxProcess('userinfo.jsp','GET','json');
            $("[class='container']").show().slideDown(1000);
        });

    });
</script>
</html>