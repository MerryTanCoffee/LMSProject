<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!-- 페이지 타이틀 -->
<div class="page-titles">
	<ol class="breadcrumb">
		<li><h5 class="bc-title">온라인 시험</h5></li>
		<li class="breadcrumb-item"><a href="javascript:void(0)">
			<svg width="17" height="17" viewBox="0 0 17 17" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path d="M2.125 6.375L8.5 1.41667L14.875 6.375V14.1667C14.875 14.5424 14.7257 14.9027 14.4601 15.1684C14.1944 15.4341 13.8341 15.5833 13.4583 15.5833H3.54167C3.16594 15.5833 2.80561 15.4341 2.53993 15.1684C2.27426 14.9027 2.125 14.5424 2.125 14.1667V6.375Z" stroke="#2C2C2C" stroke-linecap="round" stroke-linejoin="round"/>
				<path d="M6.375 15.5833V8.5H10.625V15.5833" stroke="#2C2C2C" stroke-linecap="round" stroke-linejoin="round"/>
			</svg>
			시험 응시 </a>
		</li>
		<li class="breadcrumb-item active"><a href="javascript:void(0)">채점 결과</a></li>
	</ol>
</div>
<div class="container-fluid">

	<!-- 표현하고자 하는 내용 넣기 -->
	
<div class="row">
	<div class="col-xl-12">
		<div class="card dz-card" id="bootstrap-table5">
			<div class="card-header flex-wrap d-flex justify-content-between  border-0">
				<div>
					<h4 class="card-title">
						<span style="font-size: 18px; color: #f96d00;">|</span> 
							${subName } <c:if test="${examGubun eq 'M'}">중간고사</c:if> <c:if test="${examGubun eq 'F'}">기말고사</c:if>
					<strong>채점현황</strong></h4> 
				</div>
			</div>
			<div class="card-body pt-0">
				<div class="table-responsive">
					<table class="table table-bordered table-responsive-sm text-center">
						<thead style="background-color:#e7eaf678;">
							<tr>
								<th>문제번호</th>
								<th>문제유형</th>
								<th>문제</th>
								<th>제출답안</th>
								<th>답안</th>
								<th>배점</th>
								<th>취득점수</th>
								<th>정답여부</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${stuAnswerInfo.size() == 0 }">
								<tr>
									<td colspan="8">응시하신 시험정보가 존재하지 않습니다.</td>
								</tr>
							</c:if>
							<c:if test="${stuAnswerInfo.size() != 0 }">
								<c:set value="0" var="total"/>
								<c:set value="0" var="sameCount"/>
								<c:forEach items="${stuAnswerInfo }" var="stuAnswer" varStatus="status">
									<c:set value="0" var="score"/>
									<c:set value="X" var="correct"/>
									<c:if test="${stuAnswer.exaAnswer eq stuAnswer.exSolution }">
										<c:set value="20" var="score"/>
										<c:set value="O" var="correct"/>
										<c:set value="${total + score }" var="total"/>
										<c:set value="${sameCount + 1 }" var="sameCount"/>
									</c:if>
									<c:if test="${stuAnswerInfo[0].exaCheck eq 'N' }">
										<tr>
											<td colspan="8">시험 시간초과로 인해 <strong class="fs-4" style="color:#f95959;">0점</strong> 처리 되었습니다.</td>
										</tr>
									</c:if>
									<c:if test="${stuAnswerInfo[0].exaCheck eq 'Y' }">
										<tr>
											<td>${status.count }번</td>
											<td>객관식</td>
											<td>${stuAnswer.exContent }</td>
											<td>${stuAnswer.exaAnswer }</td>
											<td>${stuAnswer.exSolution }</td>
											<td>20</td>
											<td>
												${score }
											</td>
											<td>
												${correct }
											</td>
										</tr>
									</c:if>
								</c:forEach>
							</c:if>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-xl-12">
		<div class="card dz-card" id="bootstrap-table5">
			<div class="card-header flex-wrap d-flex justify-content-between  border-0">
				<div>
					<h4 class="card-title"><span style="font-size: 18px; color: #f96d00;">|</span> ${subName } <c:if test="${examGubun eq 'M'}">중간고사</c:if> <c:if test="${examGubun eq 'F'}">기말고사</c:if>
					<strong>채점결과</strong></h4>
				</div>
			</div>
			<div class="card-body pt-0">
				<div class="table-responsive ">
					<table class="table table-bordered table-responsive-sm text-center ">
						<thead style="background-color:#e7eaf678;">
							<tr>
								<th>시험일자</th>
								<th>응시일자</th>
								<th>총 문제수</th>
								<th>맞은개수(+) / 틀린개수(-)</th>
								<th>총점</th>
								<th>내점수</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${stuAnswerInfo.size() == 0 }">
								<tr>
									<td colspan="6">응시하신 시험정보가 존재하지 않습니다.</td>
								</tr>
							</c:if>
							<c:if test="${stuAnswerInfo.size() != 0 }">
								<tr>
									<td><fmt:formatDate value="${stuAnswerInfo[0].examDate }" pattern="yyyy-MM-dd (EE) hh시  mm분 "/></td>
									<td><fmt:formatDate value="${stuAnswerInfo[0].exaTakeDate }" pattern="yyyy-MM-dd (EE) hh시  mm분 "/></td>
									<td>${stuAnswerInfo.size() } 개</td>
									<td> ${sameCount }개 / ${stuAnswerInfo.size() - sameCount }개 </td>
									<td>100</td>
									<td><span class="badge badge-success">${total }</span></td>
								</tr>
							</c:if>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

</div>