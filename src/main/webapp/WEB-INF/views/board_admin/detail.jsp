<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- 페이지 타이틀 -->
<c:if test="${board.cateCode eq 'n002' }">
	<div class="page-titles">
		<ol class="breadcrumb">
			<li><h5 class="bc-title">일반공지</h5></li>
			<li class="breadcrumb-item"><a href="javascript:void(0)">
				<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M14.4065 14.8714H7.78821" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
					<path d="M14.4065 11.0338H7.78821" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
					<path d="M10.3137 7.2051H7.78827" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
					<path fill-rule="evenodd" clip-rule="evenodd" d="M14.5829 2.52066C14.5829 2.52066 7.54563 2.52433 7.53463 2.52433C5.00463 2.53991 3.43805 4.20458 3.43805 6.74374V15.1734C3.43805 17.7254 5.01655 19.3965 7.56855 19.3965C7.56855 19.3965 14.6049 19.3937 14.6168 19.3937C17.1468 19.3782 18.7143 17.7126 18.7143 15.1734V6.74374C18.7143 4.19174 17.1349 2.52066 14.5829 2.52066Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
				</svg>
				상세보기 </a>
			</li>
			<li class="breadcrumb-item active"><a href="#">일반공지</a></li>
		</ol>
		<a class="text-primary fs-13" data-bs-toggle="offcanvas" href="#offcanvasExample1" role="button" aria-controls="offcanvasExample1">+ Add Task</a>
	</div>
</c:if>
<c:if test="${board.cateCode eq 'n001' }">
	<div class="page-titles">
		<ol class="breadcrumb">
			<li><h5 class="bc-title">학사공지</h5></li>
			<li class="breadcrumb-item"><a href="javascript:void(0)">
				<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M14.4065 14.8714H7.78821" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
					<path d="M14.4065 11.0338H7.78821" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
					<path d="M10.3137 7.2051H7.78827" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
					<path fill-rule="evenodd" clip-rule="evenodd" d="M14.5829 2.52066C14.5829 2.52066 7.54563 2.52433 7.53463 2.52433C5.00463 2.53991 3.43805 4.20458 3.43805 6.74374V15.1734C3.43805 17.7254 5.01655 19.3965 7.56855 19.3965C7.56855 19.3965 14.6049 19.3937 14.6168 19.3937C17.1468 19.3782 18.7143 17.7126 18.7143 15.1734V6.74374C18.7143 4.19174 17.1349 2.52066 14.5829 2.52066Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
				</svg>
				상세보기 </a>
			</li>
			<li class="breadcrumb-item active"><a href="#">학사공지</a></li>
		</ol>
	</div>
</c:if>
<c:if test="${board.cateCode eq 'r001' }">
	<div class="page-titles">
		<ol class="breadcrumb">
			<li><h5 class="bc-title">채용정보</h5></li>
			<li class="breadcrumb-item"><a href="javascript:void(0)">
				<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M14.4065 14.8714H7.78821" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
					<path d="M14.4065 11.0338H7.78821" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
					<path d="M10.3137 7.2051H7.78827" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
					<path fill-rule="evenodd" clip-rule="evenodd" d="M14.5829 2.52066C14.5829 2.52066 7.54563 2.52433 7.53463 2.52433C5.00463 2.53991 3.43805 4.20458 3.43805 6.74374V15.1734C3.43805 17.7254 5.01655 19.3965 7.56855 19.3965C7.56855 19.3965 14.6049 19.3937 14.6168 19.3937C17.1468 19.3782 18.7143 17.7126 18.7143 15.1734V6.74374C18.7143 4.19174 17.1349 2.52066 14.5829 2.52066Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
				</svg>
				상세보기 </a>
			</li>
			<li class="breadcrumb-item active"><a href="#">채용정보</a></li>
		</ol>
		<a class="text-primary fs-13" data-bs-toggle="offcanvas" href="#offcanvasExample1" role="button" aria-controls="offcanvasExample1">+ Add Task</a>
	</div>
</c:if>

<!-- /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->

<div class="container-fluid">
	<div class="row" >
		<div class="card">
		<div class="card-header flex-wrap" style="padding-bottom:10px;">
            <div>
              <h4 id="cateName">
              	 <span style="font-size: 20px; color: #f96d00;">|&nbsp;</span>게시글 상세보기
              </h4>
            </div>
        </div>
		
		<div class="row">
			<div class="col-md-12">
				<div class="card border-0">
					<div class="card-header">
						<h2 class="card-title"><strong>제목 :</strong>&nbsp;&nbsp;${board.boTitle }</h2>
						<div class="card-tools">
							<input type="hidden" name="scateCode" id="scateCode" value="${board.cateCode}">
							<div>
								<strong>작성자&nbsp;:</strong>&nbsp;${board.empNameKo } / 
								<strong>작성일&nbsp;:</strong>&nbsp;${board.boWriteDate } / 
								<strong>조회수&nbsp;:</strong>&nbsp;${board.boHit }
							</div>
							<c:if test="${board.cateCode eq 's001'}">
								<c:choose>
									<c:when test="${board.ssStatus ne 'N'}"><span class="badge badge-lg light badge-danger">모집완료된 스터디입니다.</span></c:when>
									<c:when test="${board.userId == sessionScope.userInfo.userId}">
										<span class="badge badge-xl light badge-warning">본인이 모집중인 스터디입니다.</span>
										<input type="hidden" name="scateCode" id="scateCode" value="${board.cateCode}"> 
									</c:when>
									<c:otherwise>
										<button type="button" class="btn btn-primary mb-2"
											data-bs-toggle="modal" data-bs-target="#exampleModalCenter">참여신청하기</button>
										<div class="modal fade" id="exampleModalCenter"
											style="display: none;" aria-hidden="true">
											<div class="modal-dialog modal-dialog-centered"
												role="document">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title">Modal title</h5>
														<button type="button" class="btn-close"
															data-bs-dismiss="modal"></button>
													</div>
													<div class="modal-body">
														<form action="/board/study/${board.boNo}" method="post"
															id="stuInForm">
															<input type="hidden" name="boTitle" value="${board.boTitle}"> 
															<input type="hidden" name="cateCode" id="cateCode" value="${board.cateCode}"> 
															<input type="hidden" name="boNo" value="${board.boNo }">
															<input type="hidden" name="boId" value="${board.userId }">
														
														<p>참여자 정보</p>
														*실명
														<div>
															<input type="text" 
																value="${sessionScope.userInfo.studentVO.stuNameKo }">
														</div>
														*학과
														<div>
															<input type="text" 
																value="${sessionScope.userInfo.studentVO.academicVO.acaMajor}">
														</div>
														*참여동기
														<div>
															<textarea rows="5" cols="50" name="motiv"></textarea>
														</div>
														</form>
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-danger light"
															data-bs-dismiss="modal">Close</button>
														<button type="button" class="btn btn-primary" id="studyIn">신청하기</button>
													</div>
												</div>
											</div>
										</div>
										<!-- <input type="button" class="btn btn-success"
											style="float: right" id="studyIn" value="참여신청하기"> -->
									</c:otherwise>
								</c:choose>
							</c:if>
						</div>
					</div>
					<div id="quickForm" novalidate="novalidate">
						<div class="card-body">
						내용&nbsp;:&nbsp; ${board.boContent }</div>
						<div class="card-footer bg-white">
							<ul
								class="mailbox-attachments d-flex align-items-stretch clearfix">
								<c:if test="${not empty board.boardAttachList }">
									<c:forEach items="${board.boardAttachList}" var="boardAttach">
										<li>
											<!-- 파일데이터를 출력하기위한 출력세트 --> <span
											class="mailbox-attachment-icon"> <i class="far fa-file-pdf"></i>
										</span>
											<div class="mailbox-attachment-info">
												<a href="#" class="mailbox-attachment-name"> <i
													class="fas fa-paperclip"></i>${boardAttach.baOrigin }
												</a> <span class="mailbox-attachment-size clearfix mt-1">
													<span>${boardAttach.baFancySize } </span> <c:url
														value="/board/download" var="downloadURL">
														<c:param name="baNo" value="${boardAttach.baNo }" />
													</c:url> <a href="${boardAttach.baSavePath}"
													download="${boardAttach.baOrigin }" id="down"> <span
														class="btn btn-default btn-sm float-right"> <i
															class="fas fa-download"></i>
													</span>
												</a>
												</span>
											</div>
										</li>
									</c:forEach>
								</c:if>
							</ul>
						</div>
						<div class="card-footer d-grid gap-3 d-md-flex justify-content-md-end">
							<button type="button" class="btn btn-dark" id="listBtn">목록</button>
							<button type="button" class="btn btn-success" id="updateBtn">수정</button>
							<button type="button" class="btn btn-danger" id="delBtn" style="border-color:#ff5e5e;">삭제</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>
	$(function() {
		var nFrm = $("#nFrm");
		var upDc = $("#upDc");
		var listBtn = $("#listBtn");
		var updateBtn = $("#updateBtn");
		var delBtn = $("#delBtn");
		var cateCode = $("#scateCode").val();
		console.log("카테코드", cateCode);
		var downcount = $("#downcount").val();
		var down = $("#down");
		var studyIn = $("#studyIn");
		var stuInForm = $("#stuInForm");
		var modalBtn = $("#modalBtn");

		studyIn.on("click", function() {
			if (confirm("정말로 참여하시겠습니까")) {
				stuInForm.submit();
			} else {
				stuInForm.reset();
			}
		});

		down.on("click", function() {
			// 				downcount = parseInt(downcount)+1;
			upDc.submit();
		});
		listBtn.on("click", function() {
			location.href = "/board/admin/list/" + cateCode;
		});
		updateBtn.on("click", function() {
			nFrm.submit();
		});
		delBtn.on("click", function() {
			if (confirm("정말로 삭제하시겠습니까?")) {
				nFrm.attr("action", "/board/delete");
				nFrm.attr("method", "post");
				nFrm.submit();
			} else {
				nFrm.reset();
			}
		});

		const params = new URLSearchParams(location.search);
		const alertMsg = params.get('msg');

		if (alertMsg) {
			alert(alertMsg);
		}
	});
</script>