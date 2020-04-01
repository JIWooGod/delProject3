<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="/hotelProject/dining/diningcss/style.css">
<link rel="stylesheet" href="/hotelProject/css/rolling.css"
	media="screen">
<link rel="stylesheet" href="/hotelProject/css/slide.css" media="screen">
<script src="./js/jquery-1.8.3.min.js"></script>
<script src="./js/jquery.rolling.js"></script>
<script src="./js/jquery.flexslider.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(function() {
		$(document).ready(function() {
			$('select[name=resSel]').change(function() {
				if ($(this).val() == "0") {
					$('#rstNo').val("");
				} else {
					$('#rstNo').val($(this).val());
					$("#rstNo").attr("readonly", true);
				}
			});
		});
	});

	$(function() {
		$(document).ready(function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$('#image_section').attr('src', e.target.result);
				}

				reader.readAsDataURL(input.files[0]);
			}
			$("#imgInput").change(function() {
				readURL(this);
			});
		});
	});
	
	//	온마우스 이미지 미리보기

	function menuInsert() {
		location.href="menuInsert";
	}
</script>
<body>
	<jsp:include page="../includePage/Header.jsp" flush="true" />

	<div id='content_wrapper'>

		<div id='sub_slide'>
			<li class='slide6'>&nbsp;</li>
		</div>

		<div class='sub_menu'>
		<div class='box'>
			<span class='subMENUon'><a href='mgMenuList?no=1'>궁궐</a></span>
			<span class='subMENUout'><a href='mgMenuList?no=2'>황룡</a></span>
			<span class='subMENUout'><a href='mgMenuList?no=3'>더 델루나</a></span>
		</div>

		<div class='tl'>
			<div class='line'></div>
			<div class='title'>궁궐</div>
			<div class='line'></div>
		</div>
	</div>

		<div class='content_box'>
			<div class='sub_detail2'>
				관리자 전용 레스토랑 메뉴 관리페이지 입니다.<br>
				<p style="font-size: 11px;">메뉴이름을 클릭하면 수정,삭제를 할 수 있습니다.<br />
				새로운 메뉴를 등록하시려면 밑에 메뉴등록 버튼을 클릭하세요.</p>
			</div>
			<div class='line_height30'></div>
			<div class='sub_reservation'>
				<div class='line_box'></div>
				<div class="hs_reservation">
					<div class="hs_reservation_section hs_reservation_box1">
						<div class="hs_reservation_left2"></div>
						<div class="hs_reservation_right2">
						<strong style="font-size: 20px;">메뉴</strong><br /><br />
							<ul class="hs_reservation_litt2">
								<c:forEach items="${ menus }" var="menu">
									<li>
										<span style="width: 60px;">
											<a href="menuDetail?no=${ menu.menuNo }" style="color: #8f8f8f;">${ menu.menuName }</a>
										</span>
									</li>
								</c:forEach>
							</ul>
							<div>
								<div class="hs_reservation_btn_set">
									<a href="javascript:menuInsert();"
										class="hs_reservation_btn_poin" style="color: #FFFFFF; margin-top: 10px;">메뉴등록</a>
								</div>
							</div>
						</div>
					</div>

				</div>
				
			</div>
			
			<div class='line_height50'></div>
			
		</div>
		
	</div>

	<jsp:include page="../includePage/Footer.jsp" flush="true" />
</body>
</html>