
<#include 'base.ftlh'/>
<#macro content>


<div class="login_window">
    <form method="POST">
        <div>
            <h1>Авторизация</h1>
<#if error??>
    <h1>Ошибка</h1>
</#if>
            <div class="form_row">
                <div class="form_field">
                    <label for="email">Email<br></label>
                    <input class="field" type="email" name="email" id="email" required pattern="([0-9]|[a-z]|_|-)+@[a-z]+\.[a-z]{2,3}">
                </div>
            </div>
            <div class="form_row">
                <div class="form_field">
                    <label for="password">Password<br></label>
                    <input class="field" type="password" name="password" id="password" required pattern="([0-9]|[A-Z]|[a-z])*">
                </div>
            </div>
            <div>
                <input type="checkbox" name="remember" id ="remember"class="checkbox"> Check me out
            </div>
            <div>
                <button type="submit" class="btn btn-secondary submit_button">Submit</button>
            </div>
        </div>
    </form>
</div>


</#macro>
<@main/>