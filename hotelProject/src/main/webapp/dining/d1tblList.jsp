<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
function tblInsert(){
	location.href="tblInsert";
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
				<span class='subMENUon'><a href='d1menuList'>궁궐</a></span> <span
					class='subMENUout'><a href=''>황룡</a></span> <span
					class='subMENUout'><a href=''>더 델루나</a></span>
			</div>

			<div class='tl'>
				<div class='line'></div>
				<div class='title'>궁궐</div>
				<div class='line'></div>
			</div>
		</div>

		<div class='content_box'>
			<div class='sub_detail2'>
				관리자 전용 레스토랑 테이블 관리페이지 입니다.<br>
				<p style="font-size: 11px;">
					새로운 테이블을 추가하거나 수정,삭제 할 수 있습니다.<br /> 새로운 테이블을 등록하시려면 밑에 테이블 등록 버튼을
					클릭하세요.
				</p>
			</div>
			<div class='line_height30'></div>
			<div class='sub_reservation'>
				<div class='line_box'></div>
				<div>
				<table>
	<tr>
	<c:forEach items="${ seats }" var="seat" varStatus="status">
			<td>
				<button id="tblBtn" value="0" style="margin: 5px;">
					<img alt='' src='dining/img/tbl2p.png' style="width: 30px; height: 30px">
				</button><br/><p align="center" style="font-size: 9px; color: ">${ seat.rstTbl }번좌석(${ seat.tblKind })</p>
			</td>
			
			<c:if test="${ status.count%5 eq 0 }" >
				<tr></tr>
			</c:if>
	
	
	</c:forEach>
	</tr>
	</table>
					<div class="hs_reservation_btn_set">
						<a href="javascript:tblInsert();" class="hs_reservation_btn_poin"
							style="color: #FFFFFF; margin-top: 10px;">테이블 등록</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class='line_height50'></div>
	<jsp:include page="../includePage/Footer.jsp" flush="true" />
</body>
</html>









