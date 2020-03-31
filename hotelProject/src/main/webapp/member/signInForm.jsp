<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="/hotelProject/member/memberCss/memberCss.css">
<title>Insert title here</title>
</head>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(function() {
		$(document).ready(function() {
			$('.message a').click(function() {
				$('form').animate({
					height : "toggle",
					opacity : "toggle"
				}, "slow");
			});
		});
	});
	
	function createBtn(){
		$(".register-form").submit();
	}
</script>
<body>
	<div class="login-page">
		<div class="form">
		<!-- 회원가입 form -->
			<form action="memCreate" id="memCreate" name="memCreate" method="POST" class="register-form">
				<input type="text" placeholder="id" />
				<input type="password" placeholder="password" />
				<input type="text" placeholder="name" />
				<input type="text" placeholder="email address" />
				<input type="text" placeholder="address" />
				<input type="text" placeholder="cellphone" />
				<button onclick="createBtn()">create</button>
				<p class="message">
					Already registered? <a href="#">Sign In</a>
				</p>
			</form>
			
			<!-- 로그인 form -->
			<form class="login-form">
				<input type="text" placeholder="id" /> <input type="password"
					placeholder="password" />
				<button>login</button>
				<p class="message">
					Not registered? <a href="#">Create an account</a>
				</p>
			</form>
		</div>
	</div>
</body>
</html>