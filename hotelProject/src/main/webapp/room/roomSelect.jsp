<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
  
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="room/css/room.css">
<link rel="stylesheet" href="./js/rolling.css" media="screen">
<link rel="stylesheet" href="./css/slide.css" media="screen">
<script src="./js/jquery-1.8.3.min.js"></script>
<script src="./js/jquery.rolling.js"></script>
<script src="./js/jquery.flexslider.js"></script>
<script>
$(window).load(function() {
  $('.flexslider').flexslider({
	animation: "slide",
	controlsContainer: $(".custom-controls-container"),
	customDirectionNav: $(".custom-navigation a"),
	slideshowSpeed :4000
  });
});
function kakaopay(){
	writeF.submit();
}
function selectRoom(n){
	if(n ==4){
		selectroom.style.display = "none";
		room4.style.display = "";
		room5.style.display = "none";
		room6.style.display = "none";
		room7.style.display = "none";
		room8.style.display = "none";
		room9.style.display = "none";
		room10.style.display = "none";
	}else if(n ==5){
		selectroom.style.display = "none";
		room4.style.display = "none";
		room5.style.display = "";
		room6.style.display = "none";
		room7.style.display = "none";
		room8.style.display = "none";
		room9.style.display = "none";
		room10.style.display = "none";
	}else if(n ==6){
		selectroom.style.display = "none";
		room4.style.display = "none";
		room5.style.display = "none";
		room6.style.display = "";
		room7.style.display = "none";
		room8.style.display = "none";
		room9.style.display = "none";
		room10.style.display = "none";
	}
	else if(n ==7){
		selectroom.style.display = "none";
		room4.style.display = "none";
		room5.style.display = "none";
		room6.style.display = "none";
		room7.style.display = "";
		room8.style.display = "none";
		room9.style.display = "none";
		room10.style.display = "none";
	}
	else if(n ==8){
		selectroom.style.display = "none";
		room4.style.display = "none";
		room5.style.display = "none";
		room6.style.display = "none";
		room7.style.display = "none";
		room8.style.display = "";
		room9.style.display = "none";
		room10.style.display = "none";
	}
	else if(n ==9){
		selectroom.style.display = "none";
		room4.style.display = "none";
		room5.style.display = "none";
		room6.style.display = "none";
		room7.style.display = "none";
		room8.style.display = "none";
		room9.style.display = "";
		room10.style.display = "none";
	}
	else if(n ==10){
		selectroom.style.display = "none";
		room4.style.display = "none";
		room5.style.display = "none";
		room6.style.display = "none";
		room7.style.display = "none";
		room8.style.display = "none";
		room9.style.display = "none";
		room10.style.display = "";
	}
}
</script>
<body>
	<jsp:include page="../includePage/Header.jsp" flush="true" />

	<div id='content_wrapper'>

		<div id='sub_slide'>
			<li class='slide6'>&nbsp;</li>
		</div>

		<div class='sub_menu'>
			

			<div class='tl'>
				<div class='line'></div>
				<div class='title'>RESERVATION</div>
				<div class='line'></div>
			</div>
		</div>

		<div class='content_box'>
			
		<div class='line_height30'></div>

			<div class='sub_reservation'>
				<!-- 객실 정보 시작 -->

				<c:if test="${room.roomGrade eq 'standard' }">
					<div class='tl'>스탠다드</div>
				</c:if>
				<c:if test="${room.roomGrade eq 'deluxe' }">
					<div class='tl'>디럭스</div>
				</c:if>
				<c:if test="${room.roomGrade eq 'deluxeSuite' }">
					<div class='tl'>디럭스 스위트</div>
				</c:if>
				<c:if test="${room.roomGrade eq 'royalSuite' }">
					<div class='tl'>로열 스위트</div>
				</c:if>
				<c:if test="${room.roomGrade eq 'preSuite' }">
					<div class='tl'>프리미어 스위트</div>
				</c:if>



				<div class='con'>
				<div class="hs_reservation">
					<div class="hs_reservation_section hs_reservation_box1">
					<div class="hs_reservation_left">
					<table>
						<tr align="center">
							<td><c:forTokens items="${room.roomPic }" delims="-"
									var="roomPic" varStatus="status">
									<c:if test="${status.index == 0}">
										<img src="room/update/${roomPic }" width = "500px"/>
									</c:if>
								</c:forTokens>
							</td>
						</tr>
					</table>
					</div>
						<div class="hs_reservation_left"style="padding: 0 20px 0 50px;width:30%">
							<ul class="hs_reservation_litt">
									<li>
										<strong>체크인</strong> &nbsp;  <fmt:formatDate value="${ reservation.rmbkChkIn }" type = "date" pattern="yyyy년MM월dd일"/>
								
									</li>
									<li><strong>체크아웃</strong> 
										 &nbsp;  <fmt:formatDate value="${ reservation.rmbkChkOut }" type = "date" pattern="yyyy년MM월dd일"/>
									</li>
									<li><strong>객실수</strong> 
										 &nbsp; ${reservation.roomCount} 개
										 		
									<li><strong>인원 수</strong> 
										 &nbsp; ${reservation.rmbkPeople} 명
									</li>
										<li><strong>숙박일</strong> 
										 &nbsp; ${reservation.roomDays} 일
									</li>
									
							</ul>
						</div>
						
						
				</div>
				</div>
				</div>
				<div class='line_height50'></div>
				<div class='line_box'></div>
				<div class='line_height30'></div>
	
					<div class="hs_reservation">
					<div class="hs_reservation_section hs_reservation_box2">
						<form name="writeF" id="writeF" method="POST" action="kakaoPay">
							<input type="hidden" name="fromdate" value="${ reservation.rmbkChkIn }">
							<input type="hidden" name="todate" value="${ reservation.rmbkChkOut }"> 
							<input type="hidden" name="roomCount" value="${reservation.roomCount}"> 
							<input type="hidden" name="people" value="${reservation.rmbkPeople}">
							<input type="hidden" name="days" value="${reservation.roomDays}"> 
							<input type="hidden" name="roomGrade" value="${room.roomGrade}">
							<input type="hidden" name = "userName" value = "${reservation.userName }">
							<input type= "hidden" name = "userPh1" value = "${reservation.userPh }">
							<input type = "hidden" name = "roomBed" value = "${reservation.roomBed}">
							<input type = "hidden" name = "rmbkContent" value = "${reservation.rmbkOption }">
							<input type = "hidden" name = "noFeader" value = "${reservation.noFeader}">
							<input type = "hidden" name = "uncomFort" value = "${reservation.uncomFort}">
							<input type = "hidden" name = "roomPirce" value = "${room.roomPrice}">
						
							<!-- 객실전망 선택 -->
							<div class="hs_reservation_left" style="padding: 0 20px 0 50px;width:20%">
							<h3 class="hs_reservation_title">예약 정보</h3>
								<ul class="hs_reservation_room_select">
								<li>
									<strong>성명:</strong>${reservation.userName }
								</li>
								<li>
								<strong>연락처:</strong> ${reservation.userPh }
								</li>
								<li>
								<strong>객실 전망:</strong>
								<c:if test="${reservation.roomView eq 'oceanView'}">
										오션 뷰
								</c:if>
								<c:if test="${reservation.roomView eq 'cityView'}">
										도심 뷰
								</c:if>
								</li>
								<li>
									<strong>침대 유형:</strong>
									<c:if test="${reservation.roomBed eq 'double'}">
										더블
									</c:if>
									<c:if test="${reservation.roomBed eq 'tween'}">
										트윈
									</c:if>
									<c:if test="${reservation.roomBed eq 'family'}">
										패밀리
									</c:if>
								</li>
								</li>
								<li>
									<strong>DoNotDisturb:</strong>
									<c:if test="${reservation.dndMode == null}">
										선택안함
									</c:if>
									<c:if test="${reservation.dndMode != null}">
										선택
									</c:if>
								</li>
								<li>
									<strong>깃털 알레르기:</strong>
									<c:if test="${reservation.noFeader == null}">
										선택안함
									</c:if>
									<c:if test="${reservation.noFeader != null}">
										선택
									</c:if>
								</li>
								<li>
									<strong>장애인 편의 시설:</strong>
									<c:if test="${reservation.uncomFort == null}">
										선택안함
									</c:if>
									<c:if test="${reservation.uncomFort != null}">
										선택
									</c:if>
								</li>
								<li>
									<strong>특별 요청사항:</strong>
									${reservation.rmbkOption }
								</li>
									
								</ul>
								<br/>
								<h3 class="hs_reservation_title">총 예약 금액 </h3><strong>KRW ${room.roomPrice } * ${reservation.roomDays}</strong>
								<br/>
								<br/>
							</div>
							<div class="hs_reservation_left" style="padding: 0 20px 0 50px;width:15%" align = center>
							<h3 class="hs_reservation_title"> 층 선택</h3>
								<input type = "button" name = "floor" value = "10F" onclick="selectRoom(10);"><br/>
								<input type = "button" name = "floor" value = "9F"  onclick="selectRoom(9);"><br/>
								<input type = "button" name = "floor" value = "8F"  onclick="selectRoom(8);"><br/>
								<input type = "button" name = "floor" value = "7F"  onclick="selectRoom(7);"><br/>
								<input type = "button" name = "floor" value = "6F"  onclick="selectRoom(6);"><br/>
								<input type = "button" name = "floor" value = "5F"  onclick="selectRoom(5);"><br/>
								<input type = "button" name = "floor" value = "4F"  onclick="selectRoom(4);"><br/>
								<br/>
							<br/>
							</div>
							
								
				<div class="hs_reservat" id = "selectroom" style="padding: 0 20px 0 50px;">
					<h3 class="hs_reservation_title">&nbsp;&nbsp;&nbsp;객실 선택</h3>
					<div id = "selectRomm" align =center>
							<br><br><br><br><br><br><br><br><br><br><br>
						<strong>희망하는 층을 선택하십시오.</strong>
					</div>
				</div>			
				
				<div class="hs_reservat" id = "room4" style="padding: 0 20px 0 50px;display : none">
					<h3 class="hs_reservation_title">&nbsp;&nbsp;&nbsp;4F</h3>
					<div id = "selectRomm" align =center>
							
						<label for="male">401</label><input type="radio" id="roomSelect" name="roomSelect" value="401">&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" id="roomSelect" name="roomSelect" value="402"><label for="male">402</label><br/><br/>
						<label for="male">403</label><input type="radio" id="roomSelect" name="roomSelect" value="403">&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" id="roomSelect" name="roomSelect" value="404"><label for="male">404</label><br/><br/>
						<label for="male">405</label><input type="radio" id="roomSelect" name="roomSelect" value="405">&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" id="roomSelect" name="roomSelect" value="406"><label for="male">406</label><br/><br/>
						<label for="male">407</label><input type="radio" id="roomSelect" name="roomSelect" value="407">&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" id="roomSelect" name="roomSelect" value="408"><label for="male">408</label><br/><br/>
					</div>
				</div>
					<div class="hs_reservat" id = "room5" style="padding: 0 20px 0 50px;display : none">
					<h3 class="hs_reservation_title">&nbsp;&nbsp;&nbsp;5F</h3>
					<div id = "selectRomm" align =center>
							
						<label for="male">501</label><input type="radio" id="roomSelect" name="roomSelect" value="501">&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" id="roomSelect" name="roomSelect" value="502"><label for="male">502</label><br/><br/>
						<label for="male">503</label><input type="radio" id="roomSelect" name="roomSelect" value="503">&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" id="roomSelect" name="roomSelect" value="504"><label for="male">504</label><br/><br/>
						<label for="male">505</label><input type="radio" id="roomSelect" name="roomSelect" value="505">&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" id="roomSelect" name="roomSelect" value="506"><label for="male">506</label><br/><br/>
						<label for="male">507</label><input type="radio" id="roomSelect" name="roomSelect" value="507">&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" id="roomSelect" name="roomSelect" value="508"><label for="male">508</label><br/><br/>
					</div>
				</div>
					<div class="hs_reservat" id = "room6" style="padding: 0 20px 0 50px;display : none">
					<h3 class="hs_reservation_title">&nbsp;&nbsp;&nbsp;6F</h3>
					<div id = "selectRomm" align =center>
							
						<label for="male">601</label><input type="radio" id="roomSelect" name="roomSelect" value="601">&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" id="roomSelect" name="roomSelect" value="602"><label for="male">602</label><br/><br/>
						<label for="male">603</label><input type="radio" id="roomSelect" name="roomSelect" value="603">&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" id="roomSelect" name="roomSelect" value="604"><label for="male">604</label><br/><br/>
						<label for="male">605</label><input type="radio" id="roomSelect" name="roomSelect" value="605">&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" id="roomSelect" name="roomSelect" value="606"><label for="male">606</label><br/><br/>
						<label for="male">607</label><input type="radio" id="roomSelect" name="roomSelect" value="607">&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" id="roomSelect" name="roomSelect" value="608"><label for="male">608</label><br/><br/>
					</div>
				</div>
					<div class="hs_reservat" id = "room7" style="padding: 0 20px 0 50px;display : none">
					<h3 class="hs_reservation_title">&nbsp;&nbsp;&nbsp;7F</h3>
					<div id = "selectRomm" align =center>
							
						<label for="male">701</label><input type="radio" id="roomSelect" name="roomSelect" value="701">&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" id="roomSelect" name="roomSelect" value="702"><label for="male">702</label><br/><br/>
						<label for="male">703</label><input type="radio" id="roomSelect" name="roomSelect" value="703">&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" id="roomSelect" name="roomSelect" value="704"><label for="male">704</label><br/><br/>
						<label for="male">705</label><input type="radio" id="roomSelect" name="roomSelect" value="705">&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" id="roomSelect" name="roomSelect" value="702"><label for="male">706</label><br/><br/>
						<label for="male">707</label><input type="radio" id="roomSelect" name="roomSelect" value="707">&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" id="roomSelect" name="roomSelect" value="704"><label for="male">708</label><br/><br/>
					</div>
				</div>
					<div class="hs_reservat" id = "room8" style="padding: 0 20px 0 50px;display : none">
					<h3 class="hs_reservation_title">&nbsp;&nbsp;&nbsp;8F</h3>
					<div id = "selectRomm" align =center>
							
						<label for="male">801</label><input type="radio" id="roomSelect" name="roomSelect" value="801">&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" id="roomSelect" name="roomSelect" value="802"><label for="male">802</label><br/><br/>
						<label for="male">803</label><input type="radio" id="roomSelect" name="roomSelect" value="803">&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" id="roomSelect" name="roomSelect" value="804"><label for="male">804</label><br/><br/>
						<label for="male">805</label><input type="radio" id="roomSelect" name="roomSelect" value="805">&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" id="roomSelect" name="roomSelect" value="806"><label for="male">806</label><br/><br/>
						<label for="male">807</label><input type="radio" id="roomSelect" name="roomSelect" value="807">&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" id="roomSelect" name="roomSelect" value="808"><label for="male">808</label><br/><br/>
					</div>
				</div>
					<div class="hs_reservat" id = "room9" style="padding: 0 20px 0 50px;display : none">
					<h3 class="hs_reservation_title">&nbsp;&nbsp;&nbsp;9F</h3>
					<div id = "selectRomm" align =center>
							
						<label for="male">901</label><input type="radio" id="roomSelect" name="roomSelect" value="901">&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" id="roomSelect" name="roomSelect" value="902"><label for="male">902</label><br/><br/>
						<label for="male">903</label><input type="radio" id="roomSelect" name="roomSelect" value="903">&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" id="roomSelect" name="roomSelect" value="904"><label for="male">904</label><br/><br/>
						<label for="male">905</label><input type="radio" id="roomSelect" name="roomSelect" value="905">&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" id="roomSelect" name="roomSelect" value="902"><label for="male">906</label><br/><br/>
						<label for="male">907</label><input type="radio" id="roomSelect" name="roomSelect" value="907">&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" id="roomSelect" name="roomSelect" value="908"><label for="male">908</label><br/><br/>
					</div>
				</div>
					<div class="hs_reservat" id = "room10" style="padding: 0 20px 0 50px;display : none">
					<h3 class="hs_reservation_title">&nbsp;&nbsp;&nbsp;10F</h3>
					<div id = "selectRomm" align =center>
							
						<label for="male">1001</label><input type="radio" id="roomSelect" name="roomSelect" value="1001">&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" id="roomSelect" name="roomSelect" value="1002"><label for="male">1002</label><br/><br/>
						<label for="male">1003</label><input type="radio" id="roomSelect" name="roomSelect" value="1003">&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" id="roomSelect" name="roomSelect" value="1004"><label for="male">1004</label><br/><br/>
						<label for="male">1005</label><input type="radio" id="roomSelect" name="roomSelect" value="1005">&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" id="roomSelect" name="roomSelect" value="1002"><label for="male">1006</label><br/><br/>
						<label for="male">1007</label><input type="radio" id="roomSelect" name="roomSelect" value="1007">&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" id="roomSelect" name="roomSelect" value="1008"><label for="male">1008</label><br/><br/>
					</div>
				</div>
							
						
					<div class="hs_reservation_section hs_reservation_bottom">
						<div class="hs_reservation_btn_set" id="btnNext">
							<a href="javascript:kakaopay()" class="hs_reservation_btn_poin" style="color: #FFFFFF;">예약</a>
						</div>
					</div>
					
					</form>
				</div>
				<div class="hs_reservation">
				
				
						
					</div>
				</div>
		</div>
	
	</div>
	</div>
	<jsp:include page="../includePage/Footer.jsp" flush="true" />
</body>
</html>