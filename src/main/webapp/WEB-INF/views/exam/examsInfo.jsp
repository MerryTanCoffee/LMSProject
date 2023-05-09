<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 페이지 타이틀 -->
<div class="page-titles">
	<ol class="breadcrumb">
		<li><h5 class="bc-title">온라인 시험</h5></li>
		<li class="breadcrumb-item"><a href="javascript:void(0)">
			<svg width="17" height="17" viewBox="0 0 17 17" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path d="M2.125 6.375L8.5 1.41667L14.875 6.375V14.1667C14.875 14.5424 14.7257 14.9027 14.4601 15.1684C14.1944 15.4341 13.8341 15.5833 13.4583 15.5833H3.54167C3.16594 15.5833 2.80561 15.4341 2.53993 15.1684C2.27426 14.9027 2.125 14.5424 2.125 14.1667V6.375Z" stroke="#2C2C2C" stroke-linecap="round" stroke-linejoin="round"/>
				<path d="M6.375 15.5833V8.5H10.625V15.5833" stroke="#2C2C2C" stroke-linecap="round" stroke-linejoin="round"/>
			</svg>
			시험 출제 </a>
		</li>
		<li class="breadcrumb-item active"><a href="javascript:void(0)">온라인 시험</a></li>
	</ol>
</div>
<div class="container-fluid">

<div class="row">
		<c:choose>
			<c:when test="${empty examList }">
				<div>시험정보가 존재하지 않습니다.</div>
			</c:when>
			<c:otherwise>
				<c:forEach items="${examList }" var="exam">
					<div class="col-xl-3">
						<div class="card dz-card" id="card-title-2">
							<div class="card-header flex-wrap">
								<h3 class="card-title">
									<span style="font-size: 18px; color: #f96d00;">|</span> <strong>
										${exam.subName }(${exam.subCode })</strong>
								</h3>
							</div>
							<div class="tab-content" id="myTabContent-1">
								<div class="tab-pane fade active show" id="CardTitle2" role="tabpanel" aria-labelledby="home-tab-1">
									<div class="card-body pt-0">
										<br>
										<div class="card-text">
											<div class="widget-stat card">
												<div class="card-body p-4">
													<div class="media ai-icon">
														<span class="me-3 bgl-primary text-primary"> 
														<svg id="icon-orders" xmlns="http://www.w3.org/2000/svg"
																width="30" height="30" viewBox="0 0 24 24" fill="none"
																stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
																class="feather feather-file-text">
															<path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path>
															<polyline points="14 2 14 8 20 8"></polyline>
															<line x1="16" y1="13" x2="8" y2="13"></line>
															<line x1="16" y1="17" x2="8" y2="17"></line>
															<polyline points="10 9 9 9 8 9"></polyline>
														</svg>
														</span>
														<div class="media-body">
															<h5 class="mb-0">${exam.subName } </h5>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="card-text" style="color: grey;">
											개설연도 : ${exam.lecOpenYear }년도 <br> 해당학년 :
											${exam.lecGrade }학년 &nbsp;<strong
												style="color: #eeeeee;">|</strong>&nbsp; 분반 :
											${exam.lecDivide }반 &nbsp;<strong
												style="color: #eeeeee;">|</strong>&nbsp; 수강인원 :
											${exam.subApplicant }명 <br>
										</div>
									</div>
									<div class="card-footer d-sm-flex justify-content-end align-items-center">
										<button type="button" class="btn tp-btn-light btn-primary examInsertBtn" data-gubun="${exam.examGubun }" data-code="${exam.lecCode }">출제하기</button>
										<button type="button" class="btn tp-btn-light btn-primary examGubunBtn" data-gubun="${exam.examGubun }" data-code="${exam.lecCode }">목록</button>
									</div>
									
									
								</div>
								<div class="tab-pane fade" id="CardTitle2-html" role="tabpanel" aria-labelledby="home-tab-1">
									<div class="card-body p-0 code-area"></div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	
</div>
<!-- row end -->

</div>

<script type="text/javascript">

$(function(){
	$(".examInsertBtn").on("click", function(){
		var lecCode = $(this).data("code");
		console.log("lecCode ::", lecCode);
		location.href="/exam/examQuestionsForm?lecCode=" + lecCode;
	});
	
	$(".examGubunBtn").on("click", function(){
		var lecCode = $(this).data("code");
		console.log("lecCode ::", lecCode);
		location.href="/exam/examGubunList?lecCode=" + lecCode;
	});
});	
	
</script>
