


<#include 'base.ftlh'/>

<#macro content>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.3.min.js"></script>
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
<#--<div class="content">-->
    <#--<p><input id="name" oninput="f()"/></p>-->

    <#--<hr>-->


    <#--<div class="all_results">-->

        <#--<div class="result" id ="res">-->

        <#--</div>-->
        <#--<div class="result" id ="hah">-->
        <#--</div>-->

        <#--<!--<a href="#"><h5>Result</h5></a>&ndash;&gt;-->
    <#--</div>-->
<#--</div>-->

<#--<script src="/js/jquery.js"></script>-->
<#--<script type="application/javascript">-->

    <#--function f() {-->

        <#--if ($("#name").val().length > 0) {-->
            <#--$.ajax({-->
                        <#--url: "/searchTrans",-->
                        <#--data: {"name": $("#name").val()},-->
                        <#--dataType: "json",-->

                        <#--success: function (msg) {-->
                            <#--alert("sdfghj")-->
                            <#--// $("#hah").html("ллл");-->
                            <#--// if (msg.objects.length > 0) {-->
                            <#--//-->
                            <#--//     for (var i = 0; i < msg.objects.length; i++) {-->
                            <#--//         $("#res").append("<li>" + "hiiiiii"+ "</li>");-->
                            <#--//     }-->
                            <#--// }else{-->
                            <#--//     $("#res").html("No results..");-->
                            <#--// }-->
                        <#--}-->
                    <#--}-->
            <#--)}-->

    <#--}-->
<#--</script>-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>



</#macro>
<@main/>