<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/product_page_style.css">
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
            <li>
                <a class="nav-link" href="/search">Поиск Транспорта</a>
            </li>
        </ul>

    </div>
</nav>
<div class="content">
    <div class="product">
        <img src="/img/${transport.file}" class="card-img1" alt="${transport.name}" >
        <h5 class="card-title">${transport.name}</h5>
        <small class="card-title">${transport.info}</small>
        <small class="card-title">${transport.city}</small>
    </div>
    <div class="buy-button">
        <a href="/sell?idtrans=${transport.id}" class="btn btn-secondary buy-button">
            <div class = "whiteRent">Арендовать</div></a>
    </div>
    <#--<div class="reviews">-->
        <#--<form method="post">-->
            <#--<div>-->
                <#--<input type="text" name="text" id="text" placeholder="Send review">-->
            <#--</div>-->
            <#--<div>-->
                <#--<button type="submit" class="btn btn-secondary">Send review</button>-->
            <#--</div>-->
        <#--</form>-->

				<#--<#if magazin?has_content>-->
                <#--<div class="all_reviews">-->
                    <#--<h2>Трапнспорт в наличии: </h2>-->

					<#--<#list magazin as mag>-->

                        <#--<div class="review">-->
                            <#--<a href="/magazin?idmag=${mag.idmag}"><h5>${mag.namemag} </h5></a>-->
                            <#--<text>${mag.loc}</text>-->
                        <#--</div>-->


                    <#--</#list>-->

                <#--</div>-->

                <#--</#if>-->
				<#--<#if magazin?has_content>-->
				<#--<div class="all_reviews">-->
                    <#--<h2> ОТЗЫВЫ: </h2>-->

					<#--<#list messages as mes>-->

					<#--<div class="review">-->
                        <#--<a href="/profile?id=${mes.iduser}"><h5>${mes.nickname} </h5></a>-->
                        <#--<text>${mes.text}</text>-->
                    <#--</div>-->


                    <#--</#list>-->

                <#--</div>-->
                <#--</#if>-->
    <#--</div>-->
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>