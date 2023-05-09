<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!-- 페이지 타이틀 -->
<div class="page-titles">
   <ol class="breadcrumb">
      <li><h5 class="bc-title">시설</h5></li>
      <li class="breadcrumb-item"><a href="#">
         <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path d="M7.11086 10.2878V13.7208" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
			<path d="M8.86244 12.0045H5.35974" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
			<path d="M13.0856 10.3924H12.9875" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
			<path d="M14.748 13.6691H14.6499" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
			<path d="M6.39948 0.833328C6.39948 1.5121 6.96092 2.06236 7.65349 2.06236H8.62193C9.69042 2.06617 10.5559 2.9144 10.5608 3.9616V4.5804" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
			<path fill-rule="evenodd" clip-rule="evenodd" d="M14.0593 19.1324C11.3045 19.1791 8.60026 19.1771 5.94166 19.1324C2.99069 19.1324 0.833313 17.0275 0.833313 14.1354V9.87325C0.833313 6.98107 2.99069 4.8762 5.94166 4.8762C8.61483 4.83051 11.321 4.83146 14.0593 4.8762C17.0102 4.8762 19.1666 6.98203 19.1666 9.87325V14.1354C19.1666 17.0275 17.0102 19.1324 14.0593 19.1324Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
		</svg>
         예약현황</a>
      </li>
      <li class="breadcrumb-item active"><a href="#">나의 예약목록</a></li>
   </ol>
</div>
<div class="container-fluid">
		<div class="row">
		<div class="col-xl-12">
			<div class="card">
				<div class="card-header border-0" style="padding-bottom:10px;">
					<h4><span style="font-size:20px; color: #f96d00;">|</span><strong>&nbsp;사물함 예약현황</strong></h4>
				</div>
				<div class="card-body pt-0">
					<div class="table-responsive">
						<table class="table table-responsive-md">
							<thead>
								<tr class="text-center" style="background-color: #fafafa;">
									<th style="width: 100px;"><strong>#</strong></th>
									<th><strong>사물함 번호</strong></th>
									<th><strong>건물명</strong></th>
									<th><strong>사용 신청일</strong></th>
									<th><strong>사용 시작일</strong></th>
									<th><strong>사용 종료일</strong></th>
									<th></th>
								</tr>
							</thead>
							<tbody id="lockerTbody">
							<c:choose>
								<c:when test="${empty myLockerList }">
									<tr>
										<td colspan="8" class="text-center">예약정보가 존재하지 않습니다.</td>
									</tr>
								</c:when>
								<c:otherwise>
								<c:forEach items="${myLockerList }" var="myLocker" varStatus="stat">
									<tr class="text-center">
										<td><strong>${stat.count}</strong></td>
										<td>${myLocker.locNum }</td>
										<td>${myLocker.hallName }</td>
										<td>${myLocker.lrDate }</td>
										<td>${fn:substring(myLocker.lrSdate, 0, 10) }</td>
										<td>${fn:substring(myLocker.lrEdate, 0, 10) }</td>
										<td>
											<button type="button" class="badge light badge-danger" id="btnLockerDel" data-no="${myLocker.lrNo }" data-code="${myLocker.hallCode }" data-loc="${myLocker.locNum }">예약취소</button>
										</td>
									</tr>
								</c:forEach>	
								</c:otherwise>
								</c:choose>
							</tbody>
						</table>
						<form action="/locker/lockerReservationCancel" id="lockerDelForm" method="post">
							<input type="hidden" name="lrNo" id="lrNo" value="">
							<input type="hidden" name="locNum" id="locNum" value="">
							<input type="hidden" name="hallCode" id="hallCode" value="">
							<input type="hidden" name="stuId" id="stuId" value="${stuId }">
						</form>
					</div>
		
				</div>
			</div>
		</div>
		<div class="col-xl-12">
			<div class="card">
			
				<form method="post" id="searchForm" class="card-header border-0">
					<h4><span style="font-size:20px; color: #f96d00;">|</span><strong>&nbsp;시설 예약현황</strong></h4>
					<input type="hidden" name="page" id="page"/>
					<input type="hidden" name="stuId" id="stuId"/>
					<ul class="nav nav-tabs" style="border-bottom:none;" id="myTab-4" role="tablist">
						<li class="nav-item" role="presentation">
							<div class="basic-form">
								<div class="d-flex align-items-center flex-wrap flex-sm-nowrap">
									<div class="mb-3">
										<input type="text" class="form-control" name="searchWord" value="${searchWord }" placeholder="시설명으로 검색해주세요."/>
									</div>
									<div class="mb-3">
										<button type="submit" class="btn btn-default">
											<i class="fas fa-search"></i>검색
										</button>
									</div>
								</div>
							</div> 
						</li>
					</ul>
				</form>
				<div class="card-body pt-0">
					<div class="table-responsive">
						<table class="table table-responsive-md">
							<thead>
								<tr class="text-center" style="background-color: #fafafa;">
									<th style="width: 100px;"><strong>#</strong></th>
									<th><strong>시설명</strong></th>
									<th><strong>사용 목적</strong></th>
									<th><strong>사용 인원</strong></th>
									<th><strong>사용 신청일</strong></th>
									<th><strong>시작시간</strong></th>
									<th><strong>종료시간</strong></th>
									<th></th>
								</tr>
							</thead>
							<tbody id="facilityTbody">
								<c:set var="facilityList" value="${pagingVO.dataList }"/>
								<c:choose>
									<c:when test="${empty facilityList }">
										<tr>
											<td colspan="8" class="text-center">예약정보가 존재하지 않습니다.</td>
										</tr>
									</c:when>
									<c:otherwise>
									<c:forEach items="${facilityList }" var="facility" varStatus="stat">
										<tr class="text-center">
											<td><strong>${stat.count }</strong></td>
											<td>${facility.facName }</td>
											<td>${facility.frPurpose }</td>
											<td>${facility.frUsercnt } 명</td>
											<td>${facility.frDate }</td>
											<td>${fn:substring(facility.frStime, 11, 16) }</td>
											<td>${fn:substring(facility.frEtime, 11, 16) }</td>
											<td><button type="button" class="badge light badge-danger" id="btnDel" data-no="${facility.frNo }">예약취소</button></td>
										</tr>
									  </c:forEach>
									</c:otherwise>	
								</c:choose>	
							</tbody>
						</table>
						<form action="/facility/facilityReservationCancel" id="delForm" method="post">
							<input type="hidden" name="frNo" id="frNo" value="">
							<input type="hidden" name="stuId" id="stuId" value="${stuId }">
						</form>
					</div>
				</div>
				<div class="card-footer d-flex" id="pagingArea" style="justify-content: flex-end; padding-right:40px;">
					${pagingVO.pagingHTML }
				</div>
			</div>
		</div>
	</div>	
</div>
<script type="text/javascript">

	var pagingArea = $("#pagingArea");
	var searchForm = $("#searchForm");
	
	pagingArea.on("click", "a", function(event){
		event.preventDefault();  // a태그의 이벤트 막음
		var pageNo = $(this).data("page");
		searchForm.find("#page").val(pageNo);
		searchForm.submit();
	});



	var lockerDelForm = $("#lockerDelForm");
	var delForm = $("#delForm");
	

	$("#facilityTbody").on("click", "#btnDel", function(){
		var frNo = $(this).data("no");
		
		Swal.fire({
			  title: '예약 취소',
			  text: "예약을 정말 취소하시겠습니까?",
			  icon: 'question',
			  showCancelButton: true,
			  confirmButtonText: 'Yes'
			}).then((result) => {
			  if (result.isConfirmed) {
			    Swal.fire(
			      '성공',
			      '예약이 취소되었습니다!',
			      'success'
			    ).then(function(){
			      $("#frNo").val(frNo);
				  delForm.submit();
			    });
			  } else {
				  Swal.fire(
				      '실패',
				      '예약 취소가 중단되었습니다!',
				      'error'
				    ).then(function(){
					  delForm.reset();
				   });
			  }
			});
		});
	
		$("#lockerTbody").on("click", "#btnLockerDel", function(){
			var lrNo = $(this).data("no");
			var hallCode = $(this).data("code");
			var locNum = $(this).data("loc");
			Swal.fire({
				  title: '예약 취소',
				  text: "예약을 정말 취소하시겠습니까?",
				  icon: 'question',
				  showCancelButton: true,
				  confirmButtonText: 'Yes'
				}).then((result) => {
				  if (result.isConfirmed) {
				    Swal.fire(
				      '성공',
				      '예약이 취소되었습니다!',
				      'success'
				    ).then(function(){
				      $("#lrNo").val(lrNo);
				      $("#hallCode").val(hallCode);
				      $("#locNum").val(locNum);
				      lockerDelForm.submit();
				    });
				  } else {
					  Swal.fire(
					      '실패',
					      '예약 취소가 중단되었습니다!',
					      'error'
					    ).then(function(){
					    	lockerDelForm.reset();
					   });
				  }
				});
			});
	
</script>
