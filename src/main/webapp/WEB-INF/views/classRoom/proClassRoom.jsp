<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
#imgArea { 
     text-align: center;
    width: 60px; 
    height: 60px; 
    object-fit: contain; 
} 
</style>
<!-- 교수 클래스룸  -->
<div class="page-titles">
    <ol class="breadcrumb">
    <li><h5 class="bc-title">클래스룸</h5></li>
    <li class="breadcrumb-item"><a href="javascript:void(0)">
        <svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path fill-rule="evenodd" clip-rule="evenodd" d="M10.0122 1.82893L11.6874 5.17545C11.8515 5.50399 12.1684 5.73179 12.5359 5.78451L16.2832 6.32391C17.2091 6.45758 17.5775 7.57968 16.9075 8.22262L14.1977 10.8264C13.9314 11.0825 13.8101 11.4505 13.8731 11.812L14.5126 15.488C14.6701 16.3974 13.7023 17.0911 12.8747 16.6609L9.52545 14.9241C9.1971 14.7537 8.80385 14.7537 8.47455 14.9241L5.12525 16.6609C4.29771 17.0911 3.32986 16.3974 3.48831 15.488L4.12686 11.812C4.18986 11.4505 4.06864 11.0825 3.80233 10.8264L1.09254 8.22262C0.422489 7.57968 0.790922 6.45758 1.71678 6.32391L5.4641 5.78451C5.83158 5.73179 6.14942 5.50399 6.31359 5.17545L7.98776 1.82893C8.40201 1.00148 9.59799 1.00148 10.0122 1.82893Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
		</svg> 
        클래스 </a>
    </li>
    <li class="breadcrumb-item active"><a href="javascript:void(0)">${subName}</a></li>
</ol>
</div>
<div class="container-fluid" style="padding-top:1.0rem">
    <div class="row">
        <div class="card">
            <div class="card-header" style="padding-bottom:10px;">
                <h4><span style="font-size:20px; color: #f96d00;">|</span>&nbsp;<strong>${subName} 클래스룸</strong></h4>
            </div>
            <div class="card-body">
                <div class="row">
               		<!-- //////////////////// 온라인 시험 리스트  ////////////////////// -->
                	<div class="col-xl-6">
                		<div class="card">
	                		<div class="card-header border-0 pb-0 pt-3" style="padding-left:10px;">
								<div class="card-title fw-bold fs-4">
									&nbsp;&nbsp;&nbsp;<i class="fa-regular fa-pen-to-square"></i>&nbsp;&nbsp;&nbsp; 온라인 시험 정보
								</div>
								<button type="button" class="btn btn-xs badge light badge-primary examInsertBtn" data-code="${lecCode }" data-name="${subName }">출제하기</button>
							</div>
							<div class="card-body pt-3 pb-1"> 
							<div class="row">
							<c:choose>
								<c:when test="${empty examList }">
									<br>
									<span class="text-center">시험정보가 존재하지 않습니다.</span>
								</c:when>
								<c:otherwise>
									<c:forEach items="${examList }" var="exam">
										<div class="col-xl-6" style="padding-right:0;">
										<div class="tab-pane fade active show" id="CardTitle2" role="tabpanel" aria-labelledby="home-tab-1">
									<div class="card-body pt-0">
										<div class="card-text">
											<div class="widget-stat card mb-3" <c:if test="${exam.examGubun eq 'M'}">style="border-left: 5px solid #0d99ff;"</c:if><c:if test="${exam.examGubun eq 'F'}">style="border-left: 5px solid #fb7777;"</c:if>>
												<div class="card-body p-3">
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
															<strong style="color:#626fe6;"><c:if test="${exam.examGubun eq 'M'}">중간고사</c:if></strong>
															<strong style="color:#fb7777;"><c:if test="${exam.examGubun eq 'F'}">기말고사</c:if></strong>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="card-text">
											개설연도 : ${exam.lecOpenYear }년도 <strong style="color: #eeeeee;">|</strong>&nbsp; 개설학기 : ${exam.lecOpenSemester }학기
											<br> 
											해당학년 : ${exam.lecGrade }학년 &nbsp;<strong style="color: #eeeeee;">|</strong>&nbsp; 
											분반 : ${exam.lecDivide }반 &nbsp; 
											<br> 수강인원 : ${exam.subApplicant }명 
										</div>
									</div>
									<div class="card-footer d-sm-flex justify-content-end align-items-center gap-2" style="border-color:#a9a6a69c;"> 
										<button type="button" class="badge light badge-warning examDetailBtn" data-code="${exam.lecCode }" data-gubun="${exam.examGubun }">상세보기</button>										
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
                        <!-- //////////////////// 수업 공지사항 ////////////////////// -->
                        <div class="col-xl-6">
                            <div class="card">
                                <div class="card-header border-0 pb-0 pt-3" style="padding-left:10px;">
                                    <div class="card-title fw-bold fs-4">
                                        &nbsp;&nbsp;&nbsp;<i class="fa-regular fa-clipboard"></i>&nbsp;&nbsp;&nbsp; 수업 공지사항
                                    </div>
                                    <!-- 더보기 버튼-->
                                    <div class="">
                                        <button type="button" class="btn btn-primary light sharp" id="notBtn" data-lec-code="${lecCode }" data-class-name="${className }">
                                            <svg width="20px" height="20px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
                                        </button>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive" style="height:15vh;overflow:auto;">
                                        <table class="table table-responsive-md">
                                            <thead>
                                                <tr>
                                                    <th><strong>#</strong></th>
                                                    <th><strong>제목</strong></th>
                                                    <th><strong>등록일</strong></th>
                                                </tr>
                                            </thead>
                                             <tbody  style="border-top: #175bc7;">
										    <c:set value="${pagingVO.dataList }" var="boardList"/>
										    <c:choose>
										      <c:when test="${empty noticeList}">
										        <tr>
										          <td colspan="5" style="text-align:center;">공지사항이 존재하지 않습니다.</td>                                 
										        </tr>
										      </c:when>
										      <c:otherwise>
										        <c:forEach items="${noticeList }" var="list" varStatus="i"> 
										          <tr>
										            <td>${i.count }</td> 
                                       				<td><a href="/lecNotice/detail/${list.lecNoticeNo }">${list.lnTitle }</a></td>
                                     			    <td>${list.lnRegDate }</td>
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
					<div class="row">
                        <!-- /////////////////// 자료실 //////////////////////////////-->
                        <div class="col-xl-6">
                            <div class="card" style="height:98%;">
                                <div class="card-header border-0 pb-0 pt-3" style="padding-left:10px;">
                                    <div class="card-title fw-bold fs-4">
                                        &nbsp;&nbsp;&nbsp;<i class="fa-regular fa-folder-open"></i>&nbsp;&nbsp;&nbsp; 자료실
                                    </div>
                                    <!-- 더보기 버튼-->
                                    <div class=""> 
                                        <button type="button" class="btn btn-primary light sharp" id = "refBtn" data-lec-code="${lecCode }" data-class-name="${className }">
                                            <svg width="20px" height="20px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
                                        </button>
                                    </div>
                                </div>
                 				<div class="card-body">
                                    <div class="table-responsive" style="height:15vh;overflow:auto;">
		                            <table class="table table-responsive-md">
		                                <thead>
		                                    <tr>
		                                        <th><strong>#</strong></th>
		                                        <th><strong>파일명</strong></th>
		                                        <th><strong>등록일자</strong></th>
		                                    </tr>
		                                </thead>
										 <tbody  style="border-top: #175bc7;">
										    <c:set value="${pagingVO.dataList }" var="boardList"/>
										    <c:choose>
										      <c:when test="${empty referenceList}">
										        <tr>
										          <td colspan="5" style="text-align:center;">자료 내역이 존재하지 않습니다.</td>                                 
										        </tr>
										      </c:when>
										      <c:otherwise>
										        <c:forEach items="${referenceList }" var="list" varStatus="i"> 
										          <tr>
										            <td>${i.count }</td> 
										            <td><a href="/reference/referenceList/${lecCode}">${fn:substringAfter(list.lrFileName, '_')}</a>
										            </td>
										            <td><fmt:formatDate value="${list.lrUploadDate}" pattern="yyyy-MM-dd" type="date"/></td>
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

                        <!-- //////////////////////// 과제 ////////////////////// -->
                        <div class="col-xl-6">
                            <div class="card" style="height:98%;">
                                <div class="card-header border-0 pb-0 pt-3" style="padding-left:10px;">
                                    <div class="card-title fw-bold fs-4 ">
                                        &nbsp;&nbsp;&nbsp;<i class="fa-solid fa-note-sticky"></i>&nbsp;&nbsp;&nbsp; 과제
                                    </div>
                                    <!-- 더보기 버튼-->
                                  	<div class="">
										<button type="button" class="btn btn-primary light sharp" id="subBtn" data-lec-code="${lecCode }" data-class-name="${className }">
											<svg width="20px" height="20px" viewBox="0 0 24 24"	version="1.1">
											<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
											<rect x="0" y="0" width="24" height="24" />
											<circle fill="#000000" cx="5" cy="12" r="2" />
											<circle fill="#000000" cx="12" cy="12" r="2" />
											<circle fill="#000000" cx="19" cy="12" r="2" /></g></svg>
										</button>
									</div>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive" style="height:15vh;overflow:auto;">
		                            <table class="table table-responsive-md">
		                                <thead>
		                                    <tr>
		                                        <th><strong>#</strong></th>
		                                        <th><strong>제목</strong></th>
		                                        <th><strong>제출기한</strong></th>
		                                    </tr>
		                                </thead>
										 <tbody  style="border-top: #175bc7;">
										    <c:set value="${pagingVO.dataList }" var="boardList"/>
										    <c:choose>
										      <c:when test="${empty homeworkList}">
										        <tr>
										          <td colspan="5" style="text-align:center;">제출한 과제 내역이 존재하지 않습니다.</td>                                 
										        </tr>
										      </c:when>
										      <c:otherwise>
										        <c:forEach items="${homeworkList }" var="list" varStatus="i"> 
										          <tr>
										            <td>${i.count }</td>
										            <td><a href="/submit/submitList/${lecCode}/${list.hwNo}">${list.hwTitle }</a>
										            </td>
										            <td>${fn:substring(list.hwDeadline, 0, 10) }</td>
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
                        <!-- 과제 끝 -->
                </div>
            </div>
        </div>
    </div>
</div>
<script>
$(document).on("click", "#subBtn", function() {
	var lecCode = $(this).data('lec-code');
	console.log("lecCode>>", lecCode);
	location.href = "/submit/homeworkList/" + lecCode;
});
$(document).on("click", "#refBtn", function() {
	var lecCode = $(this).data('lec-code');
	console.log("lecCode>>", lecCode);
	location.href = "/reference/referenceList/" + lecCode;
});
$(document).on("click", "#notBtn", function() {
	var lecCode = $(this).data('lec-code');
	console.log("lecCode>>", lecCode);
	location.href = "/lecNotice/list/" + lecCode;
});

$(document).on("click","#atdBtn",function(){
	var lecCode = $(this).data('code');
	console.log("lecCode>>", lecCode);
	location.href = "/atd/list/" + lecCode;
})
	

	$(function() {
		
		$(".examInsertBtn").on("click", function(){
			var lecCode = $(this).data("code");
			var subName = $(this).data("name");
			console.log("lecCode ::", lecCode);
			console.log("subName ::", subName);
			
			location.href="/exam/examQuestionsForm?lecCode=" + lecCode + "&subName=" + subName;
		});
		
		$(".examDetailBtn").on("click", function(){
			var examGubun = $(this).data("gubun");
			var lecCode = $(this).data("code");
			
			console.log("examGubun ::", examGubun);
			console.log("lecCode ::", lecCode);
			
			location.href="/exam/examDetail?examGubun=" + examGubun + "&lecCode=" + lecCode;
		});
		
		$(document).on('click', '.atdTr td', function() {
	 		console.log("atdTr의 td", $(this).index());
	 		var $span = $(this).find('span');
	 		var tbody = this.parentElement; 
	 		if ($span[0].dataset.value == 'Y') {
	 		  console.log("Switching from Y to N");
	 		  $span[0].dataset.value="N";
	 		  $span.removeClass('text-success').addClass('text-danger').html('<i class="fa-regular fa-xmark"></i>');
	 		}else if($span[0].dataset.value == 'W') {
	 		  console.log("Switching from W to Y");
	 		  $span[0].dataset.value="Y";
	 		  $span.removeClass().addClass('text-success').html('<i class="fa-solid fa-check"></i>');
	 		}else if($span[0].dataset.value == 'N') {
	 		  console.log("Switching from N to W");
	 		  $span[0].dataset.value="W";
	 		  $span.removeClass('text-danger').html('');
	 		} 
	 		  
			var stuId = $(this).parent().find('#stuId').text();
			var cnt = $(this).parent().find('.fa-solid.fa-check').length;
			// 데이터 시작
			var obj = {
				"atdTotal" : cnt,
				"stuId" : stuId,
				"lecCode" : '${lecCode}'
			}

			// 1주부터 16주까지 데이터 추가 
			//배열식접근법! obj.week1 이렇게 접근하는것과 같다. 
			for (let i = 1; i <= 16; i++) {
				obj["week" + i] = tbody.querySelector('#week' + i).dataset.value;
			}
			console.log("누느로화긴:", obj);
			// 데이터 엔드

			$.ajax({
				type : 'POST',
				url : '/atd/update',
				dataType : "text",
				data : obj,
				success : function(res) {
					console.log("res>>", res);
				}
			})
			
			

			console.log("cnt", cnt)
			$(this).parent().find('.cnt').text(cnt);
			
			
			if($(this).index() == 16){
				var atdScore = 	$(this).parent().find('.cnt').text()*6.25;
				console.log("출석점수?",atdScore)
		       var atdData ={
					"stuId" : stuId,
					"lecCode" : '${lecCode}',
					"atdScore" : atdScore 
				}
				 	$.ajax({
						type:'post',
					     url: '/atd/scoreUpdate',
						dataType :"text",
						data: atdData,
						success : function(res){
							console.log(">>>>",res);
						}
						
					})
			   }
		});
	})
</script>