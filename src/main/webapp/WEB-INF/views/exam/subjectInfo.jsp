<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 페이지 타이틀 -->
<div class="page-titles">
	<ol class="breadcrumb">
		<li><h5 class="bc-title">시험</h5></li>
		<li class="breadcrumb-item"><a href="javascript:void(0)">
			<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path d="M10.5346 2.55658H7.1072C4.28845 2.55658 2.52112 4.55216 2.52112 7.37733V14.9985C2.52112 17.8237 4.2802 19.8192 7.1072 19.8192H15.1959C18.0238 19.8192 19.7829 17.8237 19.7829 14.9985V11.3062" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
				<path fill-rule="evenodd" clip-rule="evenodd" d="M8.09214 10.0108L14.9424 3.16057C15.7958 2.30807 17.1791 2.30807 18.0325 3.16057L19.1481 4.27615C20.0015 5.12957 20.0015 6.51374 19.1481 7.36624L12.2648 14.2495C11.8917 14.6226 11.3857 14.8325 10.8577 14.8325H7.42389L7.51006 11.3675C7.52289 10.8578 7.73097 10.372 8.09214 10.0108Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
				<path d="M13.9014 4.21895L18.0869 8.40445" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
			</svg>
			시험 출제 </a>
		</li>
		<li class="breadcrumb-item active"><a href="#">출제할 과목 정보</a></li>
	</ol>
</div>
<div class="container-fluid">

	<!-- 표현하고자 하는 내용 넣기 -->
<div class="row">
	<div class="card">
		<div class="card-header">
			<h4><span style="font-size:18px; color: #f96d00;">|</span><strong> 출제할 과목 정보</strong></h4>
		</div>
		<div class="card-body">
		
		
	<div class="row">
		<c:choose>
			<c:when test="${empty examList }">
				<div>출제할 과목 정보가 없습니다.</div>
			</c:when>
			<c:otherwise>
				<c:forEach items="${examList }" var="exam">
					<div class="col-xl-4">
						<div class="card dz-card" id="card-title-2">
							<div class="card-header flex-wrap">
								<h3 class="card-title">
									<i class="bi bi-info-circle"></i>&nbsp; <strong> 
										${exam.subName }(${exam.subCode })</strong>
								</h3>
							</div>
							<div class="tab-content" id="myTabContent-1">
								<div class="tab-pane fade active show" id="CardTitle2" role="tabpanel" aria-labelledby="home-tab-1">
									<div class="card-body pt-0">
										<br>
										<div class="card-text">
											<div class="widget-stat card" style="border-left: 5px solid #0d99ff;">
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
										<div class="card-text">
											개설연도 : ${exam.lecOpenYear }년도 <strong style="color: #eeeeee;">|</strong>&nbsp; 개설학기 : ${exam.lecOpenSemester }학기
											<br> 
											해당학년 : ${exam.lecGrade }학년 &nbsp;<strong style="color: #eeeeee;">|</strong>&nbsp; 
											분반 : ${exam.lecDivide }반 &nbsp;<strong style="color: #eeeeee;">|</strong>&nbsp; 
											수강인원 : ${exam.subApplicant }명 <br>
										</div>
									</div>
									<div class="card-footer d-sm-flex justify-content-end align-items-center gap-2">
										<button type="button" class="btn btn-xs badge light badge-warning examInsertBtn" data-code="${exam.lecCode }" data-name="${exam.subName }">출제하기</button>
										<button type="button" class="btn btn-xs badge light badge-info examGubunBtn" data-code="${exam.lecCode }">출제내역</button>
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
	</div>
	</div>
</div> <!-- row end -->
</div> <!-- container end -->
<script type="text/javascript">

$(function(){
	$(".examInsertBtn").on("click", function(){
		var lecCode = $(this).data("code");
		var subName = $(this).data("name");
		console.log("lecCode ::", lecCode);
		console.log("subName ::", subName);
		
		location.href="/exam/examQuestionsForm?lecCode=" + lecCode + "&subName=" + subName;
	});
	
	$(".examGubunBtn").on("click", function(){
		var lecCode = $(this).data("code");
		console.log("lecCode ::", lecCode);
		location.href="/exam/examGubunList?lecCode=" + lecCode;
	});
});	
	
</script>
