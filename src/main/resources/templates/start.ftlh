<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie-edge">
    <title>Menu</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
    <link rel="stylesheet" href="/css/styleStart.css">
    <title>Welcome</title>
</head>
<body>
<nav class= "navbar fixed-top navbar-expand-lg navbar-dark" style="background-color: rgba(11,54,62,0.71);">
    <a class="navbar-brand" href="#">Library</a>
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

<!--карусель фотографий-->
<div class="carousel slide" data-ride="carousel" id="slides">
    <ul class="carousel-indicators">
        <li data-target="#slides" data-slide-to="0"></li>
        <li data-target="#slides" data-slide-to="1"></li>
        <li data-target="#slides" data-slide-to="2"></li>
    </ul>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="/img/busik.jpg">
            <div class="carousel-caption">
                <h1 class="display-4">RETRO BABY</h1>
            </div>
        </div>
        <div class="carousel-item">
            <img src="/img/krasotka.jpg">
            <div class="carousel-caption">
                <h1 class="display-4">RETRO BABY</h1>
            </div>
        </div>
        <div class="carousel-item">
            <img src="/img/1234.jpg">
            <div class="carousel-caption">
                <h1 class="display-4">RETRO BABY</h1>

                <a href="/signIn">  <button type="button" class="btn btn-outline-light btn-lg">Войти</button></a>
                <a href="/signUp"> <button type="button"  class="btn bth-secondary btn-lg">Зарегстрироваться</button></a>
            </div>
        </div>


    </div>

</div>

<!--основной блок-->
<div class="container-fluid">
    <div class="row jumbotron">
        <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9 col-xl-10">
            <p class="lead">Всегда мечтали быть COOL???</p>

        </div>
        <div class="col-xs-12">
            <a href="/signUp"><button class="btn btn-secondary btn-lg" type="button">Зарегистрироваться</button></a>
        </div>
    </div>

</div>
<!--блок с характеристиками-->
<div class="container-fluid">
    <div class="row text-center alert">
        <div class="col-12">
            <h1 class="display-4">Надеемся вам понравится и вы вернетесь к нам </h1>
        </div>
    </div>
</div>

    <!--блок с описанием языков-->
</body>
</html>