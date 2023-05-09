<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

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
			시험 응시 </a>
		</li>
		<li class="breadcrumb-item active"><a href="#">응시 과목 정보</a></li>
	</ol>
</div>
<div class="container-fluid">

	<!-- 표현하고자 하는 내용 넣기 -->
<div class="row">
	<div class="card">
		<div class="card-header">
			<h4><span style="font-size:18px; color: #f96d00;">|</span><strong> 응시 과목 정보</strong></h4>
		</div>
	<div class="card-body">
	<div class="row">
		<c:choose>
			<c:when test="${empty stuExamList }">
			<div class="col-xl-12">
				<div class="card">
					<div class="card-header border-0">
						<h4><span style="font-size:18px; color: #f96d00;">|</span> 시험 내역</h4>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-responsive-md border-0">
								<thead>
									<tr class="border-0">
										<th class="text-center border-0 fs-4">응시할 시험이 존재하지 않습니다.</th>
									</tr>
								</thead>
							</table>
						</div>
					</div>
				</div>
			</div>
			</c:when>
			<c:otherwise>
				<c:forEach items="${stuExamList }" var="exam">
					<div class="col-xl-4">
						<div class="card dz-card" id="card-title-2">
							<div class="card-header flex-wrap">
								<h3 class="card-title">
									 <strong><i class="bi bi-info-circle"></i>&nbsp;${exam.subName }</strong>
									 
								</h3>
							</div>
							<div class="tab-content" id="myTabContent-1">
								<div class="tab-pane fade active show" id="CardTitle2" role="tabpanel" aria-labelledby="home-tab-1">
									<div class="card-body pt-0">
										<br>
										<div class="card-text">
											<div class="widget-stat card" <c:if test="${exam.examGubun eq 'M'}">style="border-left: 5px solid #0d99ff;"</c:if><c:if test="${exam.examGubun eq 'F'}">style="border-left: 5px solid #fb7777;"</c:if>>
												<div class="card-body p-4">
													<div class="media ai-icon">
														<span <c:if test="${exam.examGubun eq 'M'}">class="me-3 bgl-primary text-primary"</c:if><c:if test="${exam.examGubun eq 'F'}">class="me-3 bgl-danger text-danger"</c:if>> 
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
															<h5 class="mb-0 fs-4"> 
																<strong style="color:#626fe6;"><c:if test="${exam.examGubun eq 'M'}">중간고사</c:if></strong>
																<strong style="color:#fb7777;"><c:if test="${exam.examGubun eq 'F'}">기말고사</c:if></strong>
															</h5>
																<br>시험일
																<br>: <fmt:formatDate value="${exam.examDate}" pattern="yyyy-MM-dd (EE) hh시  mm분 "/>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="card-text">
											개설연도 : ${exam.lecOpenYear }년도 &nbsp;<strong style="color: #eeeeee;">|</strong>&nbsp; 개설학기 : ${exam.lecOpenSemester }학기
											<br> 
											해당학년 : ${exam.lecGrade }학년 &nbsp;
											<strong style="color: #eeeeee;">|</strong>&nbsp; 분반 :
											${exam.lecDivide }반 &nbsp;
											<br>
										</div>
									</div>
									<div class="card-footer d-sm-flex justify-content-end align-items-center gap-2">
										<button type="button" class="btn btn-xs badge light badge-warning takeExamBtn"  data-code="${exam.lecCode }" data-name="${exam.subName }" data-gubun="${exam.examGubun }">응시하기</button>
										<button type="button" class="btn btn-xs badge light badge-info takeExamListBtn"  data-code="${exam.lecCode }" data-name="${exam.subName }" data-gubun="${exam.examGubun }">응시내역</button>
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
	</div>
</div>

<script type="text/javascript">
$(function(){
	
	$(".takeExamBtn").on("click", function(){
		console.log("click!!");
		
		var lecCode = $(this).data("code");
		var subName = $(this).data("name");
		var examGubun = $(this).data("gubun");
		console.log("lecCode:", lecCode);
		console.log("subName:", subName);
		console.log("examGubun:", examGubun);
		
		Swal.fire({
		  title: '시험에 응시하시겠습니까?',
		  html: "<응시자 유의사항><br>1. 시험은 반드시 수강생 본인이 응시해야 합니다.<br>2. '제출' 버튼을 누르지 않으면 0점 처리가 됩니다.<br>3. 한번 제출한 답안은 수정할 수 없습니다.",
		  icon: 'question',
		  showCancelButton: true,
		  confirmButtonText: '네',
		  cancelButtonText: '취소',
		}).then((result) => {
		  if (result.isConfirmed) {
			  var data = {
					stuId : ${stuId},
					lecCode : lecCode,
					examGubun : examGubun 
				}
				$.ajax({
					url : "/exam/checkExamStatus",
					type: "post",
					contentType : "application/json",
					data: JSON.stringify(data),
					dataType: "text",
					success: function(res){
						console.log(res);
						if(res == "NOTEXIST"){
						    location.href="/exam/stuExamForm?lecCode=" + lecCode + "&subName=" + subName + "&examGubun=" + examGubun;
						}else{
							Swal.fire({
							  title: '시험 응시 상태',
							  html: "이미 시험에 응시하셨습니다!",
							  icon: 'info'
							});
						}
					}
				});
		  }
		}); 
	});
	
	$(".takeExamListBtn").on("click", function(){
			
		var lecCode = $(this).data("code");
		var subName = $(this).data("name");
		var examGubun = $(this).data("gubun");
		console.log("lecCode:", lecCode);
		console.log("subName:", subName);
		console.log("examGubun:", examGubun);
		
		location.href="/exam/stuTakeExamList?lecCode=" + lecCode + "&subName=" + subName + "&examGubun=" + examGubun;
	});
	
	
});

</script>