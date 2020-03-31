<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>${applier.empName } 님 면접표</h2>
<table>
	<tr>
		<td>면접관 번호</td>
		<td>
			<form action="interviewer" method="post" id="frm1">
				<input type="text" name="empNo" id="empNo" placeholder="사원번호를 입력하시오">
			</form>
		</td>
		<td>부서명</td>
		<td>${emp.deptNo }</td>
		<td>면접관 이름</td>
		<td>${emp.empName }</td>
	</tr>
	<tr>
		<td>면접대상자 번호</td>
		<td>${applier.empNo }</td>
		<td>부서명</td>
		<td>${applier.deptNo }</td>
		<td>면접대상자 이름</td>
		<td>${applier.empName }</td>
	</tr>
	<tr>
		<td>면접일</td>
		<td colspan="3">sysdate</td>
	</tr>
</table>
<hr/>
<form action="scoring" method="post" id="frm2">
<input type="hidden" name="applierNo"/>
<table id="tableForm">
	<tr>
		<th colspan="6">분류1</th>
	</tr>
	<tr>
		<th>문항</th>
		<th>1점</th>
		<th>2점</th>
		<th>3점</th>
		<th>4점</th>
		<th>5점</th>
	</tr>
	<tr>
		<td>면접 내요아ㅗㄴㄹ나ㅣㅇ로나ㅣ</td>
		<td><input type="radio" name="q1st" value="1"></td>
		<td><input type="radio" name="q1st" value="2"></td>
		<td><input type="radio" name="q1st" value="3"></td>
		<td><input type="radio" name="q1st" value="4"></td>
		<td><input type="radio" name="q1st" value="5"></td>
	</tr>
		<tr>
		<td>면접 내요아ㅗㄴㄹ나ㅣㅇ로나ㅣ</td>
		<td><input type="radio" name="q2nd" value="1"></td>
		<td><input type="radio" name="q2nd" value="2"></td>
		<td><input type="radio" name="q2nd" value="3"></td>
		<td><input type="radio" name="q2nd" value="4"></td>
		<td><input type="radio" name="q2nd" value="5"></td>
	</tr>
		<tr>
		<td>면접 내요아ㅗㄴㄹ나ㅣㅇ로나ㅣ</td>
		<td><input type="radio" name="q3rd" value="1"></td>
		<td><input type="radio" name="q3rd" value="2"></td>
		<td><input type="radio" name="q3rd" value="3"></td>
		<td><input type="radio" name="q3rd" value="4"></td>
		<td><input type="radio" name="q3rd" value="5"></td>
	</tr>
		<tr>
		<td>면접 내요아ㅗㄴㄹ나ㅣㅇ로나ㅣ</td>
		<td><input type="radio" name="q4th" value="1"></td>
		<td><input type="radio" name="q4th" value="2"></td>
		<td><input type="radio" name="q4th" value="3"></td>
		<td><input type="radio" name="q4th" value="4"></td>
		<td><input type="radio" name="q4th" value="5"></td>
	</tr>
		<tr>
		<td>면접 내요아ㅗㄴㄹ나ㅣㅇ로나ㅣ</td>
		<td><input type="radio" name="q5th" value="1"></td>
		<td><input type="radio" name="q5th" value="2"></td>
		<td><input type="radio" name="q5th" value="3"></td>
		<td><input type="radio" name="q5th" value="4"></td>
		<td><input type="radio" name="q5th" value="5"></td>
	</tr>
</table>
<input type="submit" value="채점완료"/>
<input type="reset" value="초기화"/>
</form>
<button onclick="location.href='./contract/${applier.empNo }'">계약하기</button>
<button onclick="location.href='../personnel'">취소</button>

<script type="text/javascript">
function submit1(){
	var frm1 = document.getElementById("frm1");
	frm1.submit();
}
document.getElementById("empNo").addEventListener("blur",submit1,false);
</script>
</body>
</html>