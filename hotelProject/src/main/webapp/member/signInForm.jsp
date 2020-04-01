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
	
	function loginBtn(){
		$(".login-form").submit();
	}
	
	//id, pw 미입력 && id, pw 다를 시 출력
	function dMoreBtn(){
		$.ajax({
			type : "POST",
			url : "",
			datatype : "html",
			success : function(data1){
				$("#div1").html(data1);
			}
		});
	}
	
	/*
	function loginBtn(){
		if(!doubleSubmitCheck() && validateInputField()) {
			$(".login-form").submit(function(event) {
				event.preventDefault();
			});
		} else {
			return false;
		}
	}
	
	
	function validateInputField() {
		let id = $('#id').val();
		if(id == null) {
			$('#id-validate').text('id가 비어있습니다.');
			return false;
		}
		return true;
	}
	
	var doubleSubmitFlag = false;
    function doubleSubmitCheck(){
        if(doubleSubmitFlag){
            return doubleSubmitFlag;
        }else{
            doubleSubmitFlag = true;
            return false;
        }
    }
	*/
</script>
<body>
	<div class="login-page">
		<div class="form">
		<!-- 회원가입 form -->
			<form action="memCreate" id="memCreate" name="memCreate" method="POST" class="register-form">
				<input type="text" placeholder="id" name="userId" /> 
				<input type="password" placeholder="password" name="userPw" />
				<input type="text" placeholder="name" name="userName" />
				<input type="text" placeholder="email address" name="userEmail" />
				<input type="text" placeholder="address" name="userAddr" />
				<input type="text" placeholder="cellphone" name="userPh" />
				<button onclick="createBtn()">create</button>
				<p class="message">
					Already registered? <a href="#">Sign In</a>
				</p>
			</form>
			
			<!-- 로그인 form -->
			<form action="loginAction" id="login" name="login" method="post" class="login-form">
				<input type="text" placeholder="id" id="id" name="id" /> <div id="id-validate" style="color: red">${ error }</div> 
				<input type="password" placeholder="password" name="pw" />
				<button onclick="loginBtn(); return false;">login</button>
				<p class="message">
					Not registered? <a href="#">Create an account</a>
				</p>
			</form>
		</div>
	</div>
</body>
</html>