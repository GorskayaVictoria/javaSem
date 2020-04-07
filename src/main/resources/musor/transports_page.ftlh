<#include '../templates/base.ftlh'/>

<#macro content>
<div>
    <table>
        <tr>
            <th>Имя</th>
            <th>email</th>
        </tr>
        <#list transports as transport>
        <tr>
            <td>${transport.name}</td>
            <td>${transport.info}</td>
            <td>${transport.year}</td>
            <td><a href="/transport/${transport.id}">Посмотреть</a></td>
        </tr>
    </#list>
    </table>

    </div>
<p><input id="name" oninput="f()"/></p>
<div class="result" id ="res">
</div>
<script type="application/javascript">

    function f() {
        $("#res").html($("#name").val());
        if ($("#name").val().length >= 1) {
            $.ajax({
                        url: "/search",
                        data: {"name": $("#name").val()},
                        dataType: "json",

                        success: function (msg) {
                            if (msg.objects.length > 0) {
                                $("#res").html("");
                                for (var i = 0; i < msg.objects.length; i++) {
                                    $("#res").append("<li>" + JSON.parse(msg.objects[i]).name + "</li>");
                                }
                            }else{
                                $("#res").html("No results..");
                            }
                        }
                    }
            )}
    }
</script>
</#macro>
<@main/>