


<#include 'base.ftlh'/>

<#macro content>
 <link rel="stylesheet" href="/css/style.css">
		<div class=" products">
    <#list transports as trans>
        <div class="card product">
            <div class="card-body">
                <a href="/transport/${trans.id}">

                    <img src="/img/${trans.filePath}" class="card-img-top" alt=${trans.name} width="400" height="150">
                    <div class="card-footer">
                        <p class="card-text">${trans.name}</p>
                    </div>
                </a>
                <small class="text-muted">
                    <@spring.message 'trans.page.year'/> = ${trans.year}
                </small>
            </div>
        </div>
    </#list>

		</div>
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