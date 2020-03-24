<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>강의등록</h2>
<form action="uploading" method="post" enctype="multipart/form-data">
	<table id="tableForm">
		<tr>
			<td>과목분류</td>
			<td></td>
		</tr>
		<tr>
			<td>강사번호</td>
			<td><input type="text" name="tchNo" placeholder="강사번호를 입력하시오"></td>
		</tr>
		<tr>
			<td>강의명</td>
			<td><input type="text" name="subjName" placeholder="강의명을 입력하시오"></td>
		</tr>
		<tr>
			<td>강좌 업로드</td>
			<td><input type="file" accept="video/*" name="subjVideo"></td>
		</tr>
		<tr>
			<td>강의내용</td>
			<td><textarea name="subjCnt">강의 목차 및 간략한 소개를 입력하시오</textarea></td>
		</tr>
	</table>
	<input type="submit" value="등록하기">
	<input type="reset" value="초기화">
	<button onclick="loaction.href='../lecture'">목록으로</button>
</form>
</body>
</html>