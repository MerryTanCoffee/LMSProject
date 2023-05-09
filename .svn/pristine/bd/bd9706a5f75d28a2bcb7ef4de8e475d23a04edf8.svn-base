<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="page-titles">
	<ol class="breadcrumb">
		<li>
			<h5 class="bc-title">등록</h5>
		</li>
		<li class="breadcrumb-item"><a href="#">
			<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path fill-rule="evenodd" clip-rule="evenodd" d="M14.9732 2.52102H7.0266C4.25735 2.52102 2.52118 4.48177 2.52118 7.25651V14.7438C2.52118 17.5186 4.2491 19.4793 7.0266 19.4793H14.9723C17.7507 19.4793 19.4795 17.5186 19.4795 14.7438V7.25651C19.4795 4.48177 17.7507 2.52102 14.9732 2.52102Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
				<path d="M7.73657 11.0002L9.91274 13.1754L14.2632 8.82493" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
			</svg> 등록조회
		</a></li>
		<li class="breadcrumb-item active"><a href="#">등록금
				납부내역</a></li>
	</ol>
</div>
<div class="container-fluid">
	<div class="col-xl-12">
		<div class="card">
			<div class="card-body" style="border: none;">
				<div class="row">
					<div class="col-md-1 text-center" style="margin-top: 10px;">
						학년도:
					</div>
					<div class="col-md-2">
						<input type="text" name="stuId" value="2023" class="form-control"
							disabled="disabled">
					</div>
					<div class="col-md-1 text-center" style="margin-top: 10px;">
						학번:</div>
					<div class="col-md-3">
						<input type="text" name="stuId"
							value="${sessionScope.userInfo.studentVO.stuId }"
							class="form-control" disabled="disabled">
					</div>
					<div class="col-md-1 text-center" style="margin-top: 10px;">
						이름:</div>
					<div class="col-md-3">
						<input type="text" name="stuId"
							value="${sessionScope.userInfo.studentVO.stuNameKo}"
							class="form-control" disabled="disabled">
					</div>

				</div>
				<!-- row 끝 -->
			</div>
		</div>



		<!-- 등록내역 리스트 -->

		<div class="card">
			<div class="card-header" style="padding-bottom:10px;">
					<h4>
						<span style="font-size: 20px; color: #f96d00;">|</span><strong>&nbsp;등록금 납부내역</strong>
					</h4>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-hover table-bordered text-center">
						<thead>
							<tr style="background-color:#eeeeee;"">
								<th>#</th>
								<th>학년도</th>
								<th>학기</th>
								<th>등록금액</th>
								<th>장학금액</th>
								<th>납부금액</th>
								<th>납부일자</th>
								<th>납부여부</th>
								<th>확인서</th>
							</tr>
						</thead>
						<tbody>
							<c:choose>
								<c:when test="${empty tuitionList }">
									<tr>
										<td colspan="9" style="text-align: center;">등록내역이 존재하지
											않습니다.</td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach items="${tuitionList }" var="tuition">
										<tr>
											<td class="sorting_1">${tuition.rnum }</td>
											<td>${tuition.tlYear }</td>
											<td>${tuition.tlSemester }</td>
											<td style="text-align:right;"><fmt:formatNumber type="number"
													maxFractionDigits="3" value="${tuition.tlTuition }" /></td>
											<td style="text-align:right;"><fmt:formatNumber type="number"
													maxFractionDigits="3" value="${tuition.tlSchlr }" /></td>
											<td style="text-align:right;"><fmt:formatNumber type="number"
													maxFractionDigits="3" value="${tuition.tlPayment }" /></td>
											<td>${tuition.tlDueDate }</td>
											<c:if test="${tuition.tlStatus eq 'Y'}">
												<td><span class="badge badge-success light border-0">등록완료</span>
												</td>
												<td><button type="button"
														class="btn btn-primary btn-xxs"
														onclick="window.open('/tuition/tuiDetail?tlNo=${tuition.tlNo}', 'win_new3', 'width=800, height=800, top=100, left=100')">확인서</button>
												</td>
											</c:if>
											<c:if test="${tuition.tlStatus eq 'N' }">
												<td><span class="badge badge-danger light border-0">등록보류</span>
												</td>
												<td></td>
											</c:if>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</tbody>
						</tbody>
					</table>
				</div>
			</div>

		</div>
	</div>
</div>
