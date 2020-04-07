<#include '../templates/base.ftlh'/>

<#macro content>
<h1>Регистрация</h1>
<div>
    <form action="/signUp" method="post">
        <input name="name" placeholder="Имя">
        <input name="email" placeholder="Email">
        <input type="password" name="password" placeholder="Пароль">
        <input type="submit" value="РЕГИСТРАЦИЯ">
    </form>
</div>
</#macro>
<@main/>