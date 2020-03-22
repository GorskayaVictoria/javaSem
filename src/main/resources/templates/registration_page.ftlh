
<#include 'base.ftlh'/>

<#macro content>

		<div class="registration_window">
			<form method="POST" enctype="multipart/form-data" novalidate>
				<div>
					<div class="form_row">
						<div class="form_field2">
							<label for="name">Name<br></label>
							<input class="field" type="text" name="name" id="name" required pattern="[A-Z][a-z]*" onblur="checkLength(this, 3, 20); checkNamePatternMatch(this)" onfocus="clearErrorMessage(this)">
						</div>
						<div class="form_field2">
							<label for="email">Email<br></label>
							<input class="field" type="email" name="email" id="email" required pattern="([0-9]|[a-z]|_|-)+@[a-z]+\.[a-z]{2,3}" onblur="checkEmailPatternMatch(this)" onfocus="clearErrorMessage(this)">
						</div>
					</div>

					<div class="form_row">
						<div class="form_field2">
							<label for="txtNewPassword">Password<br></label>
							<input class="field" type="password" name="password" id="txtNewPassword" required pattern="([0-9]|[A-Z]|[a-z])*" onblur="checkLength(this, 8, Number.MAX_VALUE); checkPasswordCorrect(this); checkNickPatternMatch(this)" onfocus="clearErrorMessage(this)">
						</div>
						<div class="form_field2">
							<label for="txtConfirmPassword">Repeat password<br></label>
							<input class="field" type="password" name="txtConfirmPassword" id="txtConfirmPassword" required pattern="([0-9]|[A-Z]|[a-z])*" onblur="checkPasswordMatch(this)" onfocus="clearErrorMessage(this)">
						</div>
					</div>

					<div>
						<button type="submit" class="btn btn-secondary submit_button">Submit</button>
					</div>
				</div>
			</form>
		</div>
		<script type="text/javascript">
			function checkLength(field, minlength, maxlength){
				if(field.value.length < minlength){
					clearErrorMessage(field);
					field.insertAdjacentHTML('afterend', '<div class="error_mes" id="' + field.name + '_error_mes">Must have at least ' + minlength + ' symbols</div>');
				}
				else if(field.value.length > maxlength){
					clearErrorMessage(field);
					field.insertAdjacentHTML('afterend', '<div class="error_mes" id="' + field.name + '_error_mes">Must have at most ' + maxlength + ' symbols</div>');
				}
			}
			function clearErrorMessage(field){
				if(document.getElementById(field.name + '_error_mes')){
					var error_mes = document.getElementById(field.name + '_error_mes');
					error_mes.parentNode.removeChild(error_mes);
				}
			}
			function checkNamePatternMatch(field){
				var reg = new RegExp(field.pattern);
				console.log(reg.exec(field.value) == null);
				if(reg.exec(field.value) == null || reg.exec(field.value)[0] != field.value){
					clearErrorMessage(field);
					field.insertAdjacentHTML('afterend', '<div class="error_mes" id="' + field.name + '_error_mes">Must include only latin letters and begin with uppercase</div>');
				}
			}
			function checkNickPatternMatch(field){
				var reg = new RegExp(field.pattern);
				if(reg.exec(field.value) == null || reg.exec(field.value)[0] != field.value){
					clearErrorMessage(field);
					field.insertAdjacentHTML('afterend', '<div class="error_mes" id="' + field.name + '_error_mes">Must include only latin letters, numbers and "_"</div>');
				}
			}
			function checkPhonekPatternMatch(field){
				var reg = new RegExp(field.pattern);
				if(reg.exec(field.value) == null || reg.exec(field.value)[0] != field.value){
					clearErrorMessage(field);
					field.insertAdjacentHTML('afterend', '<div class="error_mes" id="' + field.name + '_error_mes">Must include only numbers</div>');
				}
			}
			function checkEmailPatternMatch(field){
				var reg = new RegExp(field.pattern);
				if(reg.exec(field.value) == null || reg.exec(field.value)[0] != field.value){
					clearErrorMessage(field);
					field.insertAdjacentHTML('afterend', '<div class="error_mes" id="' + field.name + '_error_mes">Invalid email address</div>');
				}
			}
			function checkPasswordCorrect(field){
				var nick = document.getElementById('nickname');
				if(nick.value != null && nick.value == field.value){
					clearErrorMessage(field);
					field.insertAdjacentHTML('afterend', '<div class="error_mes" id="' + field.name + '_error_mes">Password must not be equal to nickname</div>');
				}
			}
			function checkPasswordMatch(field){
				var pass = document.getElementById('password');
				if(pass.value != field.value || reg.exec(field.value)[0] != field.value){
					clearErrorMessage(field);
					field.insertAdjacentHTML('afterend', '<div class="error_mes" id="' + field.name + '_error_mes">Passwords does not match</div>');
				}
			}
		</script>
</#macro>
<@main/>