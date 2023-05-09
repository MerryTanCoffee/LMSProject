<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:formatDate var="now" value="<%=new Date()%>"
	pattern="yyyy년 MM월 dd일" />

<script src="https://cdn.jsdelivr.net/npm/chart.js@3.3.2"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>

<style>
.c3-chart-text {
	font-size: 18px;
	font-weight: bold;
}

th {
	text-align: center;
}

td {
	text-align: center;
}

#subTable th {
	background-color: rgb(188, 187, 187);
	text-align: center;
	position: sticky;
	top: 0px;
}

/* .c3 .c3-axis-x path, .c3 .c3-axis-x line, .c3 .c3-axis-y path, .c3 .c3-axis-y line, .tick text { */
/* 	stroke: black; */
/* } */
</style>

<!-- 페이지 타이틀 -->
<div class="page-titles">
	<ol class="breadcrumb">
		<li><h5 class="bc-title">졸업</h5></li>
		<li class="breadcrumb-item"><a href="javascript:void(0)"> <svg
					width="17" height="17" viewBox="0 0 17 17" fill="none"
					xmlns="http://www.w3.org/2000/svg">
            <path
						d="M2.125 6.375L8.5 1.41667L14.875 6.375V14.1667C14.875 14.5424 14.7257 14.9027 14.4601 15.1684C14.1944 15.4341 13.8341 15.5833 13.4583 15.5833H3.54167C3.16594 15.5833 2.80561 15.4341 2.53993 15.1684C2.27426 14.9027 2.125 14.5424 2.125 14.1667V6.375Z"
						stroke="#2C2C2C" stroke-linecap="round" stroke-linejoin="round" />
            <path d="M6.375 15.5833V8.5H10.625V15.5833" stroke="#2C2C2C"
						stroke-linecap="round" stroke-linejoin="round" />
         </svg> 학적
		</a></li>
		<li class="breadcrumb-item active"><a href="javascript:void(0)">졸업</a></li>
	</ol>
	<a class="text-primary fs-13" data-bs-toggle="offcanvas"
		href="#offcanvasExample1" role="button"
		aria-controls="offcanvasExample1">+ Add Task</a>
</div>
<div class="container-fluid">

	<!-- 표현하고자 하는 내용 넣기 -->

	<div class="card" style="height: 30vh;">
		<div class="card-body" style="width: 100%;">
			<div class="row mb-4" id="subInfo">
				<div style="margin-bottom: 1%;">
					<span style="font-size: large; color: #f96d00;">|</span> <span
						style="font-size: large; display: inline;">졸업요건 확인
						&nbsp;&nbsp;&nbsp; </span> &nbsp;
				</div>
				<div class="table-responsive" style="height: 40vh; overflow: auto;">
					<!-- table id="example3" -->
					<table id="subTable"
						class="table table-sm table-bordered table-hover">
						<thead>
							<tr>
								<th>전공필수</th>
								<th>전공선택</th>
								<th>교양필수</th>
								<th>교양선택</th>
								<th>학점총계</th>
								<th>평점환산</th>
								<th>평점평균</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><c:set var="totalCredits" value="0" /> <c:forEach
										items="${sListJP}" var="studentScore">
										<c:set var="totalCredits"
											value="${totalCredits + studentScore.subCredit}" />
									</c:forEach> <!-- 전공필수의 학점 총합 출력 --> ${totalCredits}/40</td>

								<td><c:set var="totalCredits" value="0" /> <c:forEach
										items="${sListJS}" var="studentScore">
										<c:set var="totalCredits"
											value="${totalCredits + studentScore.subCredit}" />
									</c:forEach> <!-- 전공선택의 학점 총합 출력 --> ${totalCredits}/30</td>

								<td><c:set var="totalCredits" value="0" /> <c:forEach
										items="${sListGP}" var="studentScore">
										<c:set var="totalCredits"
											value="${totalCredits + studentScore.subCredit}" />
									</c:forEach> <!-- 교양필수의 학점 총합 출력 --> ${totalCredits}/40</td>

								<td><c:set var="totalCredits" value="0" /> <c:forEach
										items="${sListGS}" var="studentScore">
										<c:set var="totalCredits"
											value="${totalCredits + studentScore.subCredit}" />
									</c:forEach> <!-- 교양필수의 학점 총합 출력 --> ${totalCredits}/30</td>

								<td><c:set var="totalCreditsJP" value="0" /> <c:forEach
										items="${sListJP}" var="studentScore">
										<c:set var="totalCreditsJP"
											value="${totalCreditsJP + studentScore.subCredit}" />
									</c:forEach> <c:set var="totalCreditsJS" value="0" /> <c:forEach
										items="${sListJS}" var="studentScore">
										<c:set var="totalCreditsJS"
											value="${totalCreditsJS + studentScore.subCredit}" />
									</c:forEach> <c:set var="totalCreditsGP" value="0" /> <c:forEach
										items="${sListGP}" var="studentScore">
										<c:set var="totalCreditsGP"
											value="${totalCreditsGP + studentScore.subCredit}" />
									</c:forEach> <c:set var="totalCreditsGS" value="0" /> <c:forEach
										items="${sListGS}" var="studentScore">
										<c:set var="totalCreditsGS"
											value="${totalCreditsGS + studentScore.subCredit}" />
									</c:forEach> ${totalCreditsJP+totalCreditsJS+totalCreditsGP+totalCreditsGS}</td>

								<td><c:set var="totalGrade" value="0" /> <c:set
										var="numCourses" value="0" /> <c:forEach items="${sList}"
										var="studentScore">
										<c:set var="totalGrade"
											value="${totalGrade + studentScore.grade}" />
										<c:set var="numCourses" value="${numCourses + 1}" />
									</c:forEach> ${totalGrade / numCourses*(100/4.5)} /100.0</td>

								<td><c:set var="totalGrade" value="0" /> <c:set
										var="numCourses" value="0" /> <c:forEach items="${sList}"
										var="studentScore">
										<c:set var="totalGrade"
											value="${totalGrade + studentScore.grade}" />
										<c:set var="numCourses" value="${numCourses + 1}" />
									</c:forEach> ${totalGrade / numCourses} /4.5</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>



	<div class="card" style="height: 50vh";>
		<div class="card-body" style="width: 100%;">
			<div class="row mb-4" id="subInfo">
				<div style="margin-bottom: 1%;">
					<span style="font-size: large; color: #f96d00;">|</span> <span
						style="font-size: large; display: inline;">졸업요건 그래프
						&nbsp;&nbsp;&nbsp; </span> &nbsp;
				</div>
					<canvas id="chart" style="height:300px"></canvas>
			</div>
		</div>
	</div>
</div>




<script>

<c:set var="totalCreditsJP" value="0" /> <c:forEach
	items="${sListJP}" var="studentScore">
	<c:set var="totalCreditsJP"
		value="${totalCreditsJP + studentScore.subCredit}" />
</c:forEach> <c:set var="totalCreditsJS" value="0" /> <c:forEach
	items="${sListJS}" var="studentScore">
	<c:set var="totalCreditsJS"
		value="${totalCreditsJS + studentScore.subCredit}" />
</c:forEach> <c:set var="totalCreditsGP" value="0" /> <c:forEach
	items="${sListGP}" var="studentScore">
	<c:set var="totalCreditsGP"
		value="${totalCreditsGP + studentScore.subCredit}" />
</c:forEach> <c:set var="totalCreditsGS" value="0" /> <c:forEach
	items="${sListGS}" var="studentScore">
	<c:set var="totalCreditsGS"
		value="${totalCreditsGS + studentScore.subCredit}" />
</c:forEach>
var ctx = document.getElementById('chart').getContext('2d');
const data = {
     labels: [
         '전공필수',
         '전공선택',
         '교양필수',
         '교양선택'
     ],
     datasets: [{
         type: 'bar',
         label: '이수학점',
         data: [${totalCreditsJP}, ${totalCreditsJS}, ${totalCreditsGP}, ${totalCreditsGS}],
         borderColor: 'rgb(255, 99, 132)',
         backgroundColor: 'rgba(255, 99, 132, 0.2)'
     }, {
         type: 'bar',
         label: '필요학점',
         data: [40, 30, 40, 30],
         fill: false,
         borderColor: 'rgb(54, 162, 235)'
     }]
 };
 const mixedChart = new Chart(ctx, {
     type: 'bar',
     data: data,
     options: {
         animation: {
             duration: 2000 // 애니메이션 지속 시간 (2초)
         }
     }
 });  
</script>