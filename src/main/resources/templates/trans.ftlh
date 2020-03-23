<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/style.css">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-2.1.3.min.js"></script>
</head>
<body>
<nav class= "navbar fixed-top navbar-expand-lg navbar-dark" style="background-color: rgba(11,54,62,0.71);">
    <a class="navbar-brand" href="#">Retro Baby</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/start">Start <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/transports">Produkt</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/profile">ProfilePage</a>
            </li>

        </ul>

        <form class="form-inline">
            <input class="form-control" id="name" oninput="f()" type="text" placeholder="Search" aria-label="Search">

        </form>

    </div>
</nav>




		<div class=" products">
    <#list transports as trans>
        <div class="card product">
            <div class="card-body">
                <a href="/transport/${trans.id}">

                    <img src="/img/${trans.file}" class="card-img-top" alt=${trans.name} width="400" height="150">
                    <div class="card-footer">
                        <p class="card-text">${trans.name}</p>
                    </div>
                </a>
                <small class="text-muted">
                    Год выпуска = ${trans.year}
                </small>
            </div>
        <#--<p class="card-text"><small class="text-muted">Год выпуска = ${trans.age} </small></p>-->
        </div>
    </#list>

		</div>
<div class="result" id ="res">

</div>


<#--<div class="content">-->
    <#--<p><input id="name" oninput="f()"/></p>-->
    <#--<div class="result" id ="res">-->
    <#--</div>-->
    <#--<hr>-->


    <#--<div class="all_results">-->

        <#--<div class="result" id ="res">-->

        <#--</div>-->

        <#--<!--<a href="#"><h5>Result</h5></a>&ndash;&gt;-->
    <#--</div>-->
<#--</div>-->
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


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>