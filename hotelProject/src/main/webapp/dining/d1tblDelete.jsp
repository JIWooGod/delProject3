<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function aa(){
	location.href="d1tblDeleteAction?no="+$("#no").val();
}
</script>
</head>
<body>

<select id="no">
<option>선택하세요</option>
	<c:forEach items="${ seats }" var="seat">
		<option>${ seat.rstTbl }</option>
	</c:forEach>
</select>
<button onclick="aa()">삭제</button>
</body>
</html>