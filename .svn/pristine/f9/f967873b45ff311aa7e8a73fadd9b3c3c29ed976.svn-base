<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="now" value="<%=new java.util.Date()%>" />
<c:set var="nowDate"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd" /></c:set> 
<%-- <p>체크 : ${nowDate }</p> --%>
<div class="page-titles">
	<ol class="breadcrumb">
		<li>
			<h5 class="bc-title">상담</h5>
		</li>
		<li class="breadcrumb-item"><a href="javascript:void(0)">
			<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path fill-rule="evenodd" clip-rule="evenodd" d="M10.986 14.0673C7.4407 14.0673 4.41309 14.6034 4.41309 16.7501C4.41309 18.8969 7.4215 19.4521 10.986 19.4521C14.5313 19.4521 17.5581 18.9152 17.5581 16.7693C17.5581 14.6234 14.5505 14.0673 10.986 14.0673Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
				<path fill-rule="evenodd" clip-rule="evenodd" d="M10.986 11.0054C13.3126 11.0054 15.1983 9.11881 15.1983 6.79223C15.1983 4.46564 13.3126 2.57993 10.986 2.57993C8.65944 2.57993 6.77285 4.46564 6.77285 6.79223C6.76499 9.11096 8.63849 10.9975 10.9563 11.0054H10.986Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
			</svg> 상담내역
		</a></li>
		<li class="breadcrumb-item active"><a href="#">상담내역조회</a></li>
	</ol>
</div>
<div class="container-fluid">
<!-- 상담 신청 내역 리스트(학생) -->
<div class="row">
    <div class="card">
        <div class="card-header" style="padding-bottom:10px;">
                <h4><span style="font-size:20px; color: #f96d00">|</span><strong>&nbsp;상담신청내역</strong></h4>
        </div>
        <div class="card-body">
            <div class="table table-responsive">
                <table class="table table-hover text-center">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>상담교수</th>
                            <th>상담일자</th>
                            <th>상담시간</th>
                            <th>상담사유</th>
                            <th>상담유형</th>
                            <th>신청상태</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
						<c:choose>
							<c:when test="${empty consultList }">
								<tr>
									<td colspan="8" class="text-center">상담신청 내역이 존재하지 않습니다.</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${consultList }" var="list" varStatus="stat">
			                        <tr class="listRow"
			                        	data-cons-obj-rsn="${list.consObjRsn }"
			                        	data-cons-num="${list.consNum }"
			                        	data-cons-date="${list.consDate }"
			                        >
			                            <td>${stat.count }</td>
			                            <input type="hidden" value="${list.proId }" />
			                            <td>${list.proNameKo }</td>
			                            <td>${fn:substring(list.consDate,0,10) }</td>
			                            <td>
			                             <c:set var = "start" value = "${fn:substring(list.consStart,1,3)}:00"/>
			                             <c:set var = "end" value = "${fn:substring(list.consEnd,1,3)+1}:00"/>
			                            ${start} - ${end }
			                            </td>
			                            <td style="text-overflow:ellipsis; overflow:hidden; white-space:nowrap; max-width:200px;">${list.consReqRsn }</td>
			                            <c:if test="${list.consInterview eq 'Y'}">
				                            <td>
				                            	<i class="bi bi-people-fill"></i>대면
				                            </td>
				                        </c:if> 
										<c:if test="${list.consInterview eq 'N'}">
											<td>
					                            <i class="bi bi-person-badge"></i>비대면
											</td>
										</c:if>
		                            	<c:if test="${list.consStatus eq 'W' }">
			                            	<td><span class="badge light badge-warning">대기</span></td>
		                            	</c:if>
		                            	<c:if test="${list.consStatus eq 'N' }">
			                            	<td><span class="badge light badge-danger">반려</span></td>
			                            	<td><button type="button" class="btn btn-sm tp-btn-light btn-primary lookReason" data-bs-toggle="modal" data-bs-target="#lookReason">보기</button></td>
		                            	</c:if>
		                            	<c:if test="${list.consStatus eq 'Y' }">
			                            	<td><span class="badge light badge-success">승인</span></td>
			                            	<c:if test="${list.consInterview eq 'N'}">
			                            	 	<c:if test="${list.consDate < nowDate }">
				                            	 	<td>
			                            	 			<button disabled type="button" class="btn btn-sm btn-primary confirmBtn" data-my-num="${userInfo.userId }" data-your-num="${list.proId }">
			                            	 				<i class="bi bi-camera-video"></i>
			                            	 			</button>
				                            	 	</td>
			                            	 	</c:if>
			                            	 	<c:if test="${list.consDate >= nowDate }">
				                            	 	<td>
				                            	 		<a href="/rtc_tea.jsp?myNum=${userInfo.userId }&yourNum=${list.proId}" target="_blank">
				                            	 			<button type="button" class="btn btn-sm btn-primary confirmBtn" data-my-num="${userInfo.userId }" data-your-num="${list.proId }">
				                            	 				<i class="bi bi-camera-video"></i>
				                            	 			</button>
				                            	 		</a>
				                            	 	</td>
			                            	 	</c:if>
			                            	</c:if>
			                            	<td></td>
		                            	</c:if>
		                            	<c:if test="${list.consStatus eq 'W' }">
				                            <td>
			                            		<form action="/consult/cancel" method="post" id="cancelFrm">
			                            			<input type="hidden" name="consNum" value="${list.consNum }"/>
			                            		</form>
				                            	<button type="button" class="btn btn-sm tp-btn-light btn-danger cancel">상담취소</button>
				                            </td>
		                            	</c:if>
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

<!-- 반려내역 보기 모달 -->
<div class="modal fade" id="lookReason">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title"><span style="font-size:18px; color: #f96d00">|</span>&nbsp;반려사유</h4>
				<button type="button" class="btn-close" data-bs-dismiss="modal">
				</button>
			</div>
			<div class="modal-body">
				<input type="hidden" name="consNum" value="">
				<textarea class="form-txtarea form-control rejectModalTd" rows="8" readonly="readonly"></textarea>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-dark" data-bs-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>
</div>

<script>
$(function(){
	$(".cancel").on("click", function(){
// 		if(!confirm("상담을 취소하시겠습니까?")){
// 			return false;
// 		}
// 		let cancelFrm = $("#cancelFrm");
// 		cancelFrm.submit();
		Swal.fire({
			title:'상담취소',
			html: '상담을 취소하시겠습니까?',
			icon: 'question',
			 showCancelButton: true,
			 confirmButtonText: 'Yes'
			}).then((result) => {  
			if (result.isConfirmed) {
			   // 이 구역은 컨펌창에서 예스를 눌렀을 때 뜨는 알러트 구간입니다.
			   	let cancelFrm = $("#cancelFrm");
				cancelFrm.submit();
			    Swal.fire({
				 title :  '취소완료',
				 html:  '상담이 취소되었습니다!',
				 icon : 'success'
			    });
						  
			} else { 
			   // 이 구역은 컨펌창에서 취소를 눌렀을 때 뜨는 알러트 구간입니다.
			    Swal.fire({
				title :  '취소 중단', 
				 html:  '취소가 중단되었습니다.', 
				 icon : 'warning'
			    });
			}
		});
	});

	
	$(document).on("click", ".lookReason", function(){
		let listRow = $(this).parent().parent();
		let reason = $("#lookReason");
		console.log(reason.find("textarea"));
		console.log(listRow);
		reason.find("textarea").html(listRow.data('consObjRsn'));
// 		reason.find("input[name=consNum]").html($())
		//let consdate = $("#listRow").find("td:eq(2)").text();
	});
});
	
// 	$(document).on("click", ".confirmBtn", function(){
// 		console.log($(this).parent().parent().find("td:eq(2)").text());
// 		let consDate = $(this).parent().parent().find("td:eq(2)").text();
		
// 		var now = new Date();
// 		now = leadingZeros(now.getFullYear(), 4) + '-'
// 			+ leadingZeros(now.getMonth() + 1, 2) + '-'
// 			+ leadingZeros(now.getDate(), 2);
// 		console.log("오늘 날짜:", now);
// 		if (consDate < now){
// 			$(this).prop('disabled', true);
// 		}
// 	});

	
// 	function leadingZeros(n, digits) {
// 		var zero = '';
// 		n = n.toString();
	
// 		if (n.length < digits) {
// 			for (i = 0; i < digits - n.length; i++)
// 				zero += '0';
// 		}
// 		return zero + n;
// 	}
	
	
	
</script>

