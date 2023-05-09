<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="page-titles">
	<ol class="breadcrumb">
		<li><h5 class="bc-title">${notice.subName}</h5></li>
		<li class="breadcrumb-item"><a href="javascript:void(0)"> <svg
					width="17" height="17" viewBox="0 0 17 17" fill="none"
					xmlns="http://www.w3.org/2000/svg">
					<path
						d="M2.125 6.375L8.5 1.41667L14.875 6.375V14.1667C14.875 14.5424 14.7257 14.9027 14.4601 15.1684C14.1944 15.4341 13.8341 15.5833 13.4583 15.5833H3.54167C3.16594 15.5833 2.80561 15.4341 2.53993 15.1684C2.27426 14.9027 2.125 14.5424 2.125 14.1667V6.375Z"
						stroke="#2C2C2C" stroke-linecap="round" stroke-linejoin="round" />
					<path d="M6.375 15.5833V8.5H10.625V15.5833" stroke="#2C2C2C"
						stroke-linecap="round" stroke-linejoin="round" />
				</svg> 클래스룸
		</a></li>
		<li class="breadcrumb-item active"><a href="#">공지 상세보기</a></li>
	</ol>
	<a class="text-primary fs-13" data-bs-toggle="offcanvas"
		href="#offcanvasExample1" role="button"
		aria-controls="offcanvasExample1">+ Add Task</a>
</div>
<div class="container-fluid">
	<div class="row">
		<div class="card">
			<div class="card-header flex-wrap border-0"
				style="padding-left: 0px;">
				<div>
					<h4 class="card-title" id="cateName">
						<span style="font-size: 18px; color: #f96d00;">|&nbsp;</span>
						공지 상세보기
						<input type="hidden" name="lecCode" value="${notice.lecCode}" id="lecCode">
					</h4>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="card card-primary">
						<div class="card-header">
							<h2 class="card-title">
								<strong>제목 :</strong>&nbsp;&nbsp;${notice.lnTitle }
							</h2>
							<div class="card-tools">
								<div>
									<strong>작성자&nbsp;:</strong>&nbsp;${notice.proNameKo } / <strong>작성일&nbsp;:</strong>&nbsp;${notice.lnRegDate }
									/ <strong>조회수&nbsp;:</strong>&nbsp;${notice.lnHit }
								</div>
							</div>
						</div>
						<div id="quickForm" novalidate="novalidate">
							<div class="card-body">내용&nbsp;:&nbsp; ${notice.lnContent }</div>
							<div
								class="card-footer d-grid gap-3 d-md-flex justify-content-md-end">
								<button type="button" class="btn badge light badge-dark"
									id="listBtn">목록</button>
								<button type="button" class="btn badge light badge-primary"
									id="updateBtn">수정</button>
								<button type="button" class="btn badge light badge-danger"
									id="delBtn" style="border-color: #ff5e5e;">삭제</button>
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
		var lecCode = $("#lecCode").val();
		var lecNoticeNo = '${notice.lecNoticeNo}';
		var userId = '${sessionScope.userInfo.userId}';
		console.log("스터디코드", studyCode);
		console.log("아이디", userId);

		listBtn.on("click", function() {
			location.href = "/lecNotice/list/" + lecCode;
		});
		updateBtn.on("click", function() {
			nFrm.submit();
		});
	});
</script>