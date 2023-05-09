<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>

<meta charset="UTF-8">
<title>Insert title here</title>
<style>
th {
	text-align: center;
}

td {
	text-align: center;
}

#subTable th {
	text-align: center;
	position: sticky;
	top: 0px;
	background-color: rgb(211, 211, 211);
}
</style>
<!-- 페이지 타이틀 -->
<div class="page-titles">
	<ol class="breadcrumb">
		<li><h5 class="bc-title">증명서</h5></li>
		<li class="breadcrumb-item"><a href="javascript:void(0)"> 
			<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path fill-rule="evenodd" clip-rule="evenodd" d="M13.5096 2.53165H7.41104C5.50437 2.52432 3.94146 4.04415 3.89654 5.9499V15.7701C3.85437 17.7071 5.38979 19.3121 7.32671 19.3552C7.35512 19.3552 7.38262 19.3561 7.41104 19.3552H14.7343C16.6538 19.2773 18.1663 17.6915 18.1525 15.7701V7.36798L13.5096 2.53165Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
				<path d="M13.2688 2.52084V5.18742C13.2688 6.48909 14.3211 7.54417 15.6228 7.54784H18.1482" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
				<path d="M13.0974 14.0786H8.1474" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
				<path d="M11.2229 10.6388H8.14655" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
			</svg> 증명서
		</a></li>
		<li class="breadcrumb-item active"><a href="#"> 발급</a></li>
	</ol>
</div>
<div class="container-fluid">

	<!-- 표현하고자 하는 내용 넣기 -->
	<div class="row">
		<div class="col-xl-12">
			<div class="card">
				<div class="card-body" style="border: none;">
					<div class="row fs-4">
						<div class="col-md-1 text-center"
							style="margin-top: 8px; padding: 0;">학번:</div>
						<div class="col-md-2">
							<input type="text" name="" value="${userInfo.userId }"
								disabled="disabled" class="form-control">
						</div>
						<div class="col-md-1 text-center"
							style="margin-top: 8px; padding: 0;">이름:</div>
						<div class="col-md-2">
							<input type="text" name=""
								value="${sessionScope.userInfo.studentVO.stuNameKo }"
								disabled="disabled" class="form-control">
						</div>
						<div class="col-md-1 text-center"
							style="margin-top: 8px; padding: 0;">학부(과):</div>
						<div class="col-md-3">
							<input type="text" name=""
								value="${sessionScope.userInfo.studentVO.academicVO.acaMajor }"
								disabled="disabled" class="form-control">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 여기까지 프로필 -->
	<div class="card" style="height:20vh">
		<div class="card-body" style="width: 100%;">
			<div class="row mb-4" id="subInfo">
				<div style="margin-bottom: 1%;">
					<span style="font-size: 20px; color: #f96d00;">|</span><strong><span
						style="font-size: large; display: inline;">&nbsp;증명서 종류 입력
						&nbsp;&nbsp;&nbsp; </span></strong>
				</div>

				<div class="table-responsive" style="height: 40vh; overflow: auto;">
					<table id="subTable"
						class="table table-sm table-bordered">
						<thead>
							<tr>
								<th>증명서종류</th>
								<th>이름</th>
								<th>용도</th>
								<th>수수료</th>
								<th>결제</th>
							</tr>
						<thead>
						<tbody>
							<!-- 폼페이지 
									CertificateVO cer : {chNo}, {ciCode}, {stuId}, sysdate, {chPurpose}	
									-->
							<tr>
								<form action="/certificate/insert" method="post" id="sbmBtn">
									<td>
										<!-- 폼데이터 --> <select name="ciCode"
										aria-label="Default select example">
											<option>증명서선택</option>
											<option value="CERSCORE01">성적증명서</option>
											<option value="CERGRADU01">졸업증명서</option>
											<option value="CERENROL01">재학증명서</option>
									</select>
									</td>
									<td>${sessionScope.userInfo.studentVO.stuNameKo }</td>
									<td><input type="text" name="chPurpose"
										class="form-control" placeholder="용도를 작성해주세요." required /></td>
									<td>1000원</td>
									<td><input type="button" class="btn btn-primary btn-sm"
										id='scoreBtn'
										value="결제하기"></input></td>
								</form>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	<div class="card">
		<div class="card-body" style="width: 100%;">
			<div class="row mb-4" id="subInfo">
				<div style="margin-bottom: 1%;">
					<span style="font-size: 20px; color: #f96d00;">|</span><strong><span
						style="font-size: large; display: inline;">&nbsp;증명서 결제 내역
						&nbsp;&nbsp;&nbsp; </span> </strong>
				</div>

				<div class="table-responsive" style="height: 40vh; overflow: auto;">
					<table id="subTable"
						class="table table-sm table-bordered table-hover">
						<thead>

							<tr>
								<!-- 							<th>학번</th> -->
								<th>증명서 종류</th>
								<th>용도</th>
								<th>처리여부</th>
								<th>처리일자</th>
								<th>발급</th>
							</tr>
						</thead>
						<tbody>
							<!-- 증명서 코드에 따라서 어떻게 처리할지 정해줘야..
								cerList : List<CertificateVO>
								 -->
							<c:forEach items="${cerList}" var="certificateVO">
								<tr>
									<%-- 								<td>${userInfo.userId}</td> --%>
									<td>${certificateVO.ciName}</td>
									<td>${certificateVO.chPurpose}</td>
									<td>승인</td>
									<td>${certificateVO.chIssueDate}</td>
									<td style="padding:7px;"><c:choose>
											<c:when test="${certificateVO.ciCode=='CERSCORE01'}">
												<button
													class='scoreBtn btn badge light badge-primary btn-sm'
													onclick="window.open('/certificate/scoreList', '', 'width=735, height=800')">성적증명서
													발급</button>
											</c:when>
											<c:when test="${certificateVO.ciCode=='CERGRADU01'}">
												<button 
													class='scoreBtn btn badge light badge-success btn-sm'
													onclick="window.open('/certificate/graduateList', '', 'width=650, height=750')">졸업증명서
													발급</button>
											</c:when>
											<c:when test="${certificateVO.ciCode=='CERENROL01'}">
												<button 
													class='scoreBtn btn badge light badge-warning btn-sm'
													onclick="window.open('/certificate/enrollList', '', 'width=650, height=750')">재학증명서
													발급</button>
											</c:when>
										</c:choose></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>


<script src="https://js.bootpay.co.kr/bootpay-4.2.7.min.js"
	type="application/javascript"></script>
<script>
	$('#scoreBtn')
			.on(
					'click',
					function() {
						let cName = document
								.querySelector('select[name="ciCode"] option:checked').textContent;
						let id = '${sessionScope.userInfo.userId}';
						let name = '${sessionScope.userInfo.studentVO.stuNameKo }';
						let phone = '${sessionScope.userInfo.studentVO.stuPhone }';
						let email = '${sessionScope.userInfo.studentVO.stuEmail }';

						Bootpay.requestPayment({
							"application_id" : "6425498f755e27001ead615f",
							"price" : 1000,
							"order_name" : cName,
							"order_id" : "TEST_ORDER_ID",
							"tax_free" : 0,
							"user" : {
								"id" : id,
								"username" : name,
								"phone" : phone,
								"email" : email
							},
							"extra" : {
								"open_type" : "iframe",
								"card_quota" : "0,2,3",
								"display_success_result" : true,
								"display_error_result" : true,
								"test_deposit" : true,
								"show_close_button" : true,
								"escrow" : false
							}

						}).then(function(data) {
					        // 결제가 성공한 경우 폼을 제출합니다.
					        $('#sbmBtn').submit();
					    }).catch(function(data) {
					        // 결제가 실패한 경우에 대한 처리를 수행합니다.
					        console.log(data);
					    });
					});
						
					
</script>