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
	function tblInsert() {
		location.href = "tblInsert";
	}
	
	function tblDelete(){
		$.ajax({
			type : "POST",
			url : "d1tblDelete",
			datatype : "html",
			success : function(data1){
				$("#div1").html(data1);
			}
		});
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
				<span class='subMENUon'><a href='tblList?no=1'>궁궐</a></span> <span
					class='subMENUout'><a href='tblList?no=2'>황룡</a></span> <span
					class='subMENUout'><a href='tblList?no=3'>더 델루나</a></span>
			</div>

			<div class='tl'>
				<div class='line'></div>
				<div class='title'>
					<c:forEach items="${ seats }" var="seat" end="0">
						${ seat.rstName }
					</c:forEach>
				</div>
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
				<div align="center">
					<table>
						<tr>
							<c:forEach items="${ seats }" var="seat" varStatus="status">
								<td>
										<img alt='' src='dining/img/table-icon.png'
											style="width: 60px; height: 60px; margin: 5px">
									<br />
								<p align="center" style="font-size: 11px; color: #8f8f8f">
									<a href="d1tblDetail?no=${ seat.rstTbl }">${ seat.rstTbl }번 좌석</a>
								</p>
								</td>

								<c:if test="${ status.count%5 eq 0 }">
									<tr></tr>
								</c:if>


							</c:forEach>
						</tr>
					</table>
					<div class="hs_reservation_btn_set" align="center">
						<a href="javascript:tblInsert();" class="hs_reservation_btn_poin"
							style="color: #FFFFFF; margin-top: 10px;">테이블 등록</a>
							<a href="javascript:tblDelete();" class="hs_reservation_btn_poin"
							style="color: #FFFFFF; margin-top: 10px;">테이블 삭제</a>
					</div>
				</div>
				<div align="center" id="div1" style="margin-left: 300px; margin-top: 30px"></div>
			</div>
		</div>
	</div>
	<div class='line_height50'></div>
	<jsp:include page="../includePage/Footer.jsp" flush="true" />
</body>
</html>










