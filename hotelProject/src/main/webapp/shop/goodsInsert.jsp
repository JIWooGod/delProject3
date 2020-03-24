<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>델루나 쇼핑몰 - 관리자</title>
	<script language="javascript">
	function addboard(){
		boardform.submit();
	}
	</script>
</head>

<body>
 <jsp:include page="./shopInclude/shopHeader.jsp" flush="true" /> 


<form action="InsertPro" method="post"  
	name="boardform" enctype="multipart/form-data">
<table cellpadding="0" cellspacing="0">
	<tr align="center" valign="middle">
		<td colspan="5">상품등록</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">입고코드</div>
		</td>
		<td>
			<input name="boardSubject" type="text" size="20" maxlength="20" 
				value=""/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">판매가격</div>
		</td>
		<td>
			<input name="boardSubject" type="text" size="20" maxlength="20" 
				value=""/>
		</td>
	</tr>	
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">카테고리</div>
		</td>
		<td>
				<select name="CATEGORY" id="CATEGORY">
				<option value="null">필수선택</option>
				<option value="Outer">Outer</option>
				<option value="Top">Top</option>
				<option value="Bottom">Bottom</option>
				<option value="Shoes">Shoes</option>
				<option value="ACC">고급</option>
				<option value="승합">승합</option>
				
		</td>
		
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">상품코드</div>
		</td>
		<td>
			<input name="boardPass" type="text" size="20" maxlength="30" 
				value=""/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">상품명</div>
		</td>
		<td>
			<input name="boardSubject" type="text" size="50" maxlength="100" 
				value=""/>
		</td>
	</tr>
		<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">수량</div>
		</td>
		<td>
			<input name="goodsQty" type="number" min="0" required="required"  width="5" />
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12">
			<div align="center">상품설명</div>
		</td>
		<td>
			<textarea name="boardContent" cols="67" rows="15"></textarea>
		</td>
	</tr>
	<tr>
			<td style="font-family:돋음; font-size:12">
				<div align="center">상품 이미지</div>
			</td>
			<td>
				<input type="file" name="report" multiple = "multiple" />
				<div >${fileError }</div>
			</td>	
	</tr>
	<tr bgcolor="cccccc">
		<td colspan="2" style="height:1px;">
		</td>
	</tr>
	<tr><td colspan="2">&nbsp;</td></tr>
	<tr align="center" valign="middle">
		<td colspan="5">
			<a href="javascript:addboard()">[등록]</a>&nbsp;&nbsp;
			
			
			<a href="javascript:history.go(-1)">[뒤로]</a>
		</td>
	</tr>
</table>
</form>
</body>
</html>