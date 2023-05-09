<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!-- 페이지 타이틀 -->
<div class="page-titles">
	<ol class="breadcrumb">
		<li><h5 class="bc-title">온라인시험</h5></li>
		<li class="breadcrumb-item"><a href="javascript:void(0)">
			<svg width="17" height="17" viewBox="0 0 17 17" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path d="M2.125 6.375L8.5 1.41667L14.875 6.375V14.1667C14.875 14.5424 14.7257 14.9027 14.4601 15.1684C14.1944 15.4341 13.8341 15.5833 13.4583 15.5833H3.54167C3.16594 15.5833 2.80561 15.4341 2.53993 15.1684C2.27426 14.9027 2.125 14.5424 2.125 14.1667V6.375Z" stroke="#2C2C2C" stroke-linecap="round" stroke-linejoin="round"/>
				<path d="M6.375 15.5833V8.5H10.625V15.5833" stroke="#2C2C2C" stroke-linecap="round" stroke-linejoin="round"/>
			</svg>
			시험 출제 </a>
		</li>
		<li class="breadcrumb-item active"><a href="#">출제 내역</a></li>
	</ol>
</div>
<div class="container-fluid">

<div class="row">
	<div class="col-xl-12">
		<div class="card">
			<div class="card-header border-0">
				<h4>
					<span style="font-size: 18px; color: #f96d00;">|</span> 온라인시험 출제내역
				</h4>
			</div>
			<div class="card-body pt-0">
				<div class="table-responsive">
					<table class="table table-responsive-md">
						<thead>
							<tr class="text-center" style="background-color: #fafafa;">
								<th style="width: 100px;"><strong>#</strong></th>
								<th><strong>과목코드</strong></th>
								<th><strong>과목명</strong></th>
								<th><strong>구분</strong></th>
								<th><strong>수강학년</strong></th>
								<th><strong>분반</strong></th>
								<th><strong>강의언어</strong></th>
								<th><strong>시험일시</strong></th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:choose>
								<c:when test="${empty examList }">
									<td colspan="9" class="text-center">시험정보가 존재하지 않습니다.</td>
								</c:when>
							<c:otherwise>
									<c:forEach items="${examList }" var="exam" varStatus="stat">
									<tr class="text-center">
										<td><strong></strong>${stat.count }</td>
										<td>${exam.subCode }</td>
										<td>${exam.subName }</td>
										<td>
											<c:if test="${exam.examGubun eq 'M'}">중간고사</c:if>
											<c:if test="${exam.examGubun eq 'F'}">기말고사</c:if>
										</td>
										<td>${exam.lecGrade }학년</td>
										<td>${exam.lecDivide }반</td>
										<td>${exam.lecLanguage }</td>
<%-- 										<td>${fn:substring(exam.examDate, 0, 10) }</td> --%>
										<td><fmt:formatDate value="${exam.examDate}" pattern="yyyy-MM-dd (EE) hh시  mm분 "/></td>
										<td>
											<button type="button" class="badge light badge-danger examDetailBtn" data-code="${exam.lecCode }" data-gubun="${exam.examGubun }">상세보기</button>
										</td>
									</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</tbody>
					</table>
				
				</div>

			</div>
		</div>
	</div>
</div>
</div>


<script type="text/javascript">

$(".examDetailBtn").on("click", function(){
	var examGubun = $(this).data("gubun");
	var lecCode = $(this).data("code");
	
	console.log("examGubun ::", examGubun);
	console.log("lecCode ::", lecCode);
	
	location.href="/exam/examDetail?examGubun=" + examGubun + "&lecCode=" + lecCode;
});
</script>
