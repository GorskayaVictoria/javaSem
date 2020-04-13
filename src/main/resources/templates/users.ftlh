<#--<!doctype html>-->
<#--<html lang="en">-->
<#--<head>-->
    <#--<meta charset="UTF-8">-->
    <#--<meta name="viewport"-->
          <#--content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">-->
    <#--<meta http-equiv="X-UA-Compatible" content="ie=edge">-->
    <#--<script src="/js/jquery.js"></script>-->
    <#--<title>Document</title>-->
<#--</head>-->
<#--<body>-->

<#--<div>-->
    <#--<br>-->
    <#--<br>-->
    <#--<br>-->
    <#--<br>-->
    <#--<br>-->
    <#--<table>-->
        <#--<tr>-->
            <#--<th>Имя</th>-->
            <#--<th>email</th>-->
        <#--</tr>-->
        <#--<#list users as user>-->
        <#--<tr>-->
            <#--<td>${user.name}</td>-->
            <#--<td>${user.email}</td>-->
            <#--<td><a href="/user/${user.id}">Посмотреть</a></td>-->
        <#--</tr>-->
        <#--</#list>-->
    <#--</table>-->
<#--</div>-->



    <#--<p><input id="name" oninput="f()"/></p>-->

    <#--<hr>-->


    <#--<div class="all_results">-->

        <#--<div class="result" id ="res">-->

        <#--</div>-->

        <#--<!--<a href="#"><h5>Result</h5></a>&ndash;&gt;-->
    <#--</div>-->


    <#--<script type="application/javascript">-->

        <#--function f() {-->



            <#--// $.getJSON("/search/users", {-->
            <#--//             q : $('#name').val(),-->
            <#--//             page: "0",-->
            <#--//             size: "5",-->
            <#--//             state: "CONFIRMED"-->
            <#--//-->
            <#--//-->
            <#--//         ,-->
            <#--//-->
            <#--//             success function(data) {-->
            <#--//             alert("Response Received" + data);-->
            <#--//             ,errors function f1() {-->
            <#--//                     alert("dfghj")-->
            <#--//                 }-->
            <#--//-->
            <#--//         });-->
            <#--&lt;#&ndash;if ($("#name").val().length >= 1) {&ndash;&gt;-->
                <#--&lt;#&ndash;$.ajax({&ndash;&gt;-->
                            <#--&lt;#&ndash;url: "/search/users",&ndash;&gt;-->
                            <#--&lt;#&ndash;data: {"q": $("#name").val(), "state":"CONFIRMED", "size":"3", "page":"0"},&ndash;&gt;-->
                            <#--&lt;#&ndash;dataType: "json",&ndash;&gt;-->

                            <#--&lt;#&ndash;success: function (msg) {&ndash;&gt;-->
                                <#--&lt;#&ndash;if (msg.objects.length > 0) {&ndash;&gt;-->
                                    <#--&lt;#&ndash;$("#res").html("вапро");&ndash;&gt;-->
                                    <#--&lt;#&ndash;for (var i = 0; i < msg.objects.length; i++) {&ndash;&gt;-->
                                        <#--&lt;#&ndash;$("#res").append("<li>" + JSON.parse(msg.objects[i]).name + "</li>");&ndash;&gt;-->
                                    <#--&lt;#&ndash;}&ndash;&gt;-->
                                <#--&lt;#&ndash;}else{&ndash;&gt;-->
                                    <#--&lt;#&ndash;$("#res").html("No results..");&ndash;&gt;-->
                                <#--&lt;#&ndash;}&ndash;&gt;-->
                            <#--&lt;#&ndash;}&ndash;&gt;-->
                           <#--&lt;#&ndash;}&ndash;&gt;-->

                        <#--&lt;#&ndash;}&ndash;&gt;-->
                <#--&lt;#&ndash;)}&ndash;&gt;-->
        <#--&lt;#&ndash;}&ndash;&gt;-->
    <#--&lt;#&ndash;</script>&ndash;&gt;-->



        <#--<script type="application/javascript">-->
                    <#--function f() {-->
                        <#--if ($("#query").val().length >= 0) {-->
                            <#--$.ajax({-->
                                <#--url: "/searchUsers",-->
                                <#--data: {"name": $("#query").val()},-->
                                <#--dataType: "json",-->
                                <#--success: function (msg) {-->
                                    <#--if (msg.length >= 1) {-->
                                        <#--$("#res").html("");-->
                                        <#--$("#res").append("<tr>" + "\n")-->
                                        <#--$("#res").append("<th> Имя </th>" + "\n");-->
                                        <#--$("#res").append("<th> Email </th>" + "\n");-->
                                        <#--$("#res").append("</tr>" + "\n")-->
                                        <#--for (var i = 0; i < msg.length; i++) {-->
                                            <#--$("#res").append("<tr>" + "\n")-->
                                            <#--$("#res").append("<td>" + msg[i].name + "</td>" + "\n");-->
                                            <#--$("#res").append("<td>" + msg[i].email + "</td>" + "\n");-->
                                            <#--$("#res").append("</tr>" + "\n")-->
                                        <#--}-->
                                    <#--} else {-->
                                        <#--$("#res").html("No results..");-->
                                    <#--}-->
                                <#--}-->
                            <#--})-->
                        <#--}-->
                        <#--else {-->
                            <#--$("#res").html("");-->
                        <#--}-->
                    <#--}-->
    <#--</script>-->

<#--<
/html>-->

<#--<!doctype html>-->
<#--<html lang="en">-->
<#--<head>-->
    <#--<meta charset="UTF-8">-->
    <#--<meta name="viewport"-->
          <#--content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">-->
    <#--<meta http-equiv="X-UA-Compatible" content="ie=edge">-->
    <#---->
    <#--<title>Document</title>-->
<#--</head>-->
<#--<body>-->

<#include 'base.ftlh'/>

<#macro content>
<br>
</br>
<br>
</br>

<div>
    <p><input id="query" oninput="f()"/></p> <#-- строка, в которой пишешь, по введению
                                                        буквы происходит вызов функции-->
</div>
<div>
    <table id="res"> <#-- внутрь  этого тэга выводится результат-->
        <tr>
            <th>Имя</th>
            <th>email</th>
        </tr>
        <#list users as user>
            <tr>
                <td>${user.name}</td>
                <td>${user.email}</td>
            </tr>
        </#list>
    </table>
</div>

<script type="application/javascript">
    function f() {
        if ($("#query").val().length >= 0) {
            $.ajax({
                url: "/searchUsers",
                data: {"name": $("#query").val()},
                dataType: "json",
                success: function (msg) {
                    if (msg.length >= 1) {
                        $("#res").html("");
                        $("#res").append("<tr>" + "\n")
                        $("#res").append("<th> Имя </th>" + "\n");
                        $("#res").append("<th> Email </th>" + "\n");
                        $("#res").append("</tr>" + "\n")
                        for (var i = 0; i < msg.length; i++) {
                            $("#res").append("<tr>" + "\n")
                            $("#res").append("<td>" + msg[i].name + "</td>" + "\n");
                            $("#res").append("<td>" + msg[i].email + "</td>" + "\n");
                            $("#res").append("</tr>" + "\n")
                        }
                    } else {
                        $("#res").html("No results..");
                    }
                }
            })
        }
        else {
            $("#res").html("");
        }
    }
</script>
<#--</html>-->
</#macro>
<@main/>