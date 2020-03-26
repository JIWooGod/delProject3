<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js" ></script>
<script type="text/javascript">
$(document).ready(function(){
	$(function(){
		$("#delBtn").click(function(){
			if($("#delBtn").attr("value")=="삭제"){
	           $("#delBtn").attr("value","삭제취소");
	           $("#subjVideo").val("${list.subjOrigin}");
	         //$("#view").html("새 동영상파일: <input type="file" id="subjVideo" accept="video/*" name="subjVideo"/>");
	           $("#original_file").html("");
	        }else{
	           $("#delBtn").attr("value","삭제");
	           $("#subjVideo").val("");
	          //$("#view").html("");
	           $("#original_file").html("<video src='/hotelProject/lec/video/${list.subjStore }' width='300px' height='auto'></video>");
       		}
		});
	});
});
</script>
</head>
<body>
<h2>강의 내용 수정</h2>
<form action="modifying" method="post" enctype="multipart/form-data">
	<table id="tableForm">
		<tr>
			<td>과목분류</td>
			<td>${list.subjGroup }</td>
		</tr>
		<tr>
			<td>강사번호</td>
			<td></td>
		</tr>
		<tr>
			<td>강의명</td>
			<td><form:input path="subjName" placeholder="강의명을 입력하시오"/></td>
		</tr>
		<tr>
			<td>강의 동영상</td>
			<td id="original_file">
			<c:choose>
				<c:when test="${!empty list.subjStore }">
					<video src="/hotelProject/lec/video/${list.subjStore }" 
						width="300px" height="auto"></video>
					<input type="button" id="delBtn" value="삭제">
				</c:when>
				<c:when test="${empty list.subjStore }">
					<input type="file" id="subjVideo" accept="video/*"
						name="subjVideo"/>
				</c:when>
			</c:choose>
			<div id="view"></div>
			
			</td>
		</tr>
		<tr>
			<td>수강기간</td>
			<td><input type="number" name="subjDay" id="dayLong" min="7" max="30" value="${list.subj }">일<div id="error"></div></td>
		</tr>
		<tr>
			<td>강의내용</td>
			<td><textarea name="subjCnt">${list.subjCnt }</textarea></td>
		</tr>
	</table>
	<input type="submit" value="수정하기">
	<input type="reset" value="초기화">
</form>
<button onclick="location.href='../lecture/deleting?num=${list.subjNo}'">삭제</button>
<button onclick="location.href='../lecture/${list.subjNo}'">취소</button>
</body>
</html>