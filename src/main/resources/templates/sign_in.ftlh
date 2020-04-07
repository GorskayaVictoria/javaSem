<#include 'base.ftlh'/>

<#macro content>

<link rel="stylesheet" href="/css/login_page_style.css" type="text/css">
		<div class="login_window">
			<form method="POST">
				<div>
					<div class="form_row">
						<div class="form_field">
							<label for="email"><@spring.message 'sign_in.page.email'/><br></label>
							<input class="field" type="email" name="email" id="email" required pattern="([0-9]|[a-z]|_|-)+@[a-z]+\.[a-z]{2,3}" onblur="checkEmailPatternMatch(this)" onfocus="clearErrorMessage(this)">
						</div>
					</div>
					<div class="form_row">
						<div class="form_field">
							<label for="password"><@spring.message 'sign_in.page.password'/><br></label>
							<input class="field" type="password" name="password" id="password" required pattern="([0-9]|[A-Z]|[a-z])*" onblur="checkLength(this, 8, Number.MAX_VALUE); checkPasswordCorrect(this); checkNickPatternMatch(this)" onfocus="clearErrorMessage(this)">
						</div>
					</div>
					<#--<div>-->
						<#--<input type="checkbox" name="remember" id ="remember"class="checkbox"> Check me out-->
					<#--</div>-->
					<div>
						<button type="submit" class="btn btn-secondary submit_button"><@spring.message 'sign_in.page.submit'/></button>
					</div>
				</div>
			</form>
		</div>

</#macro>
<@main/>