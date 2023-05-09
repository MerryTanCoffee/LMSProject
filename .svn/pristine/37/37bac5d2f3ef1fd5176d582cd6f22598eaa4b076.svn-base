<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
$(function(){
	$("#selectLecCode").on("change",function(){
		let lecCode = $(this).val();
		
		console.log("lecCode : " + lecCode);
		
		location.href = "/score/list?lecCode="+lecCode;
	});
});
</script>
</head>
<body>
	바보
	<table>
		<tr>
			<th>ㅎㅇ</th>
		</tr>
		<!-- selectList : List<ScoreVO> -->
<%-- 		<c:forEach items="${selectList}" var="scoreVO"> --%>
<!-- 			<tr> -->
<%-- 				<td>${scoreVO.subName}</td> --%>
<!-- 			</tr> -->
<%-- 		</c:forEach> --%>
	</table>
	<div class="col-md-1 text-center" style="margin-top: 10px; padding: 0;">강의명:</div>
	<div class="col-md-2">
		<select id="selectLecCode" name="lecCode" class="form-control">
			<option selected>==강의명을 선택하세요==</option>
			<c:forEach items="${selectList}" var="scoreVO">
				<option value="${scoreVO.lecCode}">${scoreVO.subName}</option>
			</c:forEach>
		</select>
	</div>
</body>
</html>