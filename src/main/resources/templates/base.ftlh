<#macro content>
</#macro>

<#macro title></#macro>

<#macro main>
    <!doctype html>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" th:href="@{/css/style.css}"  href="/css/login_page_style.css">
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
                <a class="nav-link" href="/transProd">Produkt</a>
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

    <@content/>





</body>






</#macro>