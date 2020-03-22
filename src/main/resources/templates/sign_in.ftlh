<!DOCTYPE html>
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
		<div class="login_window">
			<form method="POST">
				<div>
					<div class="form_row">
						<div class="form_field">
							<label for="email">Email<br></label>
							<input class="field" type="email" name="email" id="email" required pattern="([0-9]|[a-z]|_|-)+@[a-z]+\.[a-z]{2,3}" onblur="checkEmailPatternMatch(this)" onfocus="clearErrorMessage(this)">
						</div>
					</div>
					<div class="form_row">
						<div class="form_field">
							<label for="password">Password<br></label>
							<input class="field" type="password" name="password" id="password" required pattern="([0-9]|[A-Z]|[a-z])*" onblur="checkLength(this, 8, Number.MAX_VALUE); checkPasswordCorrect(this); checkNickPatternMatch(this)" onfocus="clearErrorMessage(this)">
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
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	</body>
</html>