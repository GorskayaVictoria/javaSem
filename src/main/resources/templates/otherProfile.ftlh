<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Oswald:400,300" type="text/css">
    <link rel="stylesheet" href="/css/styleProfile.css" type="text/css">

    <title>Hello, world!</title>
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

    </div>
</nav>






<section class="l-page">

    <div class = "efg" style="background-color: #ffffff;" >

<div class="information">
			<span class="avatar">
				<img src="/img.jpg" alt="${user.name}" width="200" height="200">
			</span>
        <span class="info">
				<td>${user.email}</td>
			</span>

    <span class="settings_button">
				<table align="center">
                            <tr>
                                <td></td>
                            </tr>
                        </table>

                        <div class = "button2">
                            <a href="/logout" class="btn btn-secondary">logout</a>
                        </div>

			</span>
</
    </div>
<#--<#if messages?has_content>-->
        <#--<div class = "nn6">-->
            <#--<div class="form-row">-->
                <#--<div class="form-group col-md-12">-->
                    <#--<div class = "nn0">-->
                        <#--<h2>-->
                            <#--CПИСОК ОТЗЫВОВ </h2>-->
                    <#--</div>-->

                    <#--<#list messages as mes>-->
                    <#--<div class = "kniga">-->
                        <#--<div class="card-group" style="background-color: rgba(197,197,197,0.16);">-->

                            <#--<div class= "card " style="background-color: rgba(197,197,197,0.0);">-->
                                <#--<img src="${mes.imagePath}" class="card-img-top" alt=${mes.nameTrans}>-->

                            <#--</div>-->

                            <#--<div class="form-group col-md-11" style="background-color: rgba(197,197,197,0.0);">-->
                                <#--<div class="card" style="background-color: rgba(197,197,197,0.0);">-->
                                    <#--<a href="/trans?idtrans=${mes.idtrans}"><h5>${mes.nameTrans} </h5></a>-->
                                    <#--<h4 class="text" id = "text"> ${mes.text}</h4>-->
                                <#--</div>-->
                            <#--</div>-->
                        <#--</div>-->

                    <#--</div>-->
                    <#--</#list>-->

                <#--</div>-->
            <#--</div>-->
        <#--</div>-->
<#--</#if>-->


    </div>




</section>




<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>