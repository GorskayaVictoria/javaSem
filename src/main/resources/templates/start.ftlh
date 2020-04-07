<#--<#include 'base.ftlh'/>-->



<#include 'base.ftlh'/>

<#macro content>

<link rel="stylesheet" href="/css/styleStart.css">
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

                <a href="/signIn">  <button type="button" class="btn btn-outline-light btn-lg"><@spring.message 'start.page.login'/> </button></a>
                <a href="/signUp"> <button type="button"  class="btn bth-secondary btn-lg">
                    <a href="/signUp"><button class="btn btn-secondary btn-lg" type="button"><@spring.message 'start.page.sign_up'/></button></a>
            </div>
        </div>


    </div>

</div>

<!--основной блок-->
<div class="container-fluid">
    <div class="row jumbotron">
        <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9 col-xl-10">
            <p class="lead"><@spring.message 'start.page.cool'/></p>

        </div>
        <div class="col-xs-12">
            <a href="/signUp"><button class="btn btn-secondary btn-lg" type="button"><@spring.message 'start.page.sign_up'/></button></a>
        </div>
    </div>

</div>
<!--блок с характеристиками-->
<div class="container-fluid">
    <div class="row text-center alert">
        <div class="col-12">
            <h1 class="display-4"> <@spring.message 'start.page.login'/> </h1>
        </div>
    </div>
</div>

</#macro>
<@main/>