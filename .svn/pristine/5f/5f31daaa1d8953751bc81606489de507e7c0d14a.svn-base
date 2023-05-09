<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>

<meta charset="UTF-8">
<title>student score list</title>

<style>
td.hidden {
  display: none;
}
th {
	text-align: center;
}

td {
	text-align: center;
}

.nav-item textarea {
	width: 100%;
	height: 100%;
	box-sizing: border-box;
}

#subTable th {
	text-align: center;
	position: sticky;
	top: 0px;
}
</style>

<!-- 페이지 타이틀 -->
<div class="page-titles">
	<ol class="breadcrumb">
		<li><h5 class="bc-title">성적</h5></li>
		<li class="breadcrumb-item"><a href="#">
			<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path fill-rule="evenodd" clip-rule="evenodd" d="M15.8381 12.7317C16.4566 12.7317 16.9757 13.2422 16.8811 13.853C16.3263 17.4463 13.2502 20.1143 9.54009 20.1143C5.43536 20.1143 2.10834 16.7873 2.10834 12.6835C2.10834 9.30245 4.67693 6.15297 7.56878 5.44087C8.19018 5.28745 8.82702 5.72455 8.82702 6.36429C8.82702 10.6987 8.97272 11.8199 9.79579 12.4297C10.6189 13.0396 11.5867 12.7317 15.8381 12.7317Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
				<path fill-rule="evenodd" clip-rule="evenodd" d="M19.8848 9.1223C19.934 6.33756 16.5134 1.84879 12.345 1.92599C12.0208 1.93178 11.7612 2.20195 11.7468 2.5252C11.6416 4.81493 11.7834 7.78204 11.8626 9.12713C11.8867 9.5459 12.2157 9.87493 12.6335 9.89906C14.0162 9.97818 17.0914 10.0862 19.3483 9.74467C19.6552 9.69835 19.88 9.43204 19.8848 9.1223Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
			</svg> 성적조회
		</a></li>
		<li class="breadcrumb-item active"><a href="#">금학기</a></li>
	</ol>
</div>
<div class="container-fluid">
	<div class="row">
		<div class="row">
			<div class="col-xl-12">
				<div class="card">
				<div class="card-header" style="padding-bottom: 10px;">
					<h4><span style="font-size: 20px; color: #f96d00;">|</span><strong>&nbsp;금학기 성적</strong></h4>
				</div>
				<div class="card-body" id="subInfo">
	<!-- 					<div style="margin-bottom: 1%;"> -->
	<!-- 						<span style="font-size: 20px; color: #f96d00;">|</span><span -->
	<!-- 							style="font-size: large; display: inline;"><strong>&nbsp;금학기 성적 -->
	<!-- 							&nbsp;&nbsp;&nbsp;</strong></span> -->
	<!-- 					</div> -->
						<div class="table-responsive" style="overflow: auto;">
							<table id="subTable" class="table table-bordered table-hover">
								<thead>
									<tr class="table-active">
										<th>개설연도</th>
										<th>개설학기</th>
										<th>담당교수</th>
										<th>교과목명</th>
										<th>원점수</th>
										<!-- <th>등수</th> -->
										<th>등급</th>
										<th>이수학점</th>
										<th>이의신청</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${stuList}" var="studentScore">
									 <c:set var="grade" value="${studentScore.grade}"/>
										<c:if
											test="${studentScore.lecOpenYear == 2023 && studentScore.lecOpenSemester == 1}">
											<tr class="tblRow">
												<td>${studentScore.lecOpenYear}</td>
												<td>${studentScore.lecOpenSemester}</td>
												<td class="hidden" id="evalLecCode">${studentScore.lecCode}</td>
												<td id ="proName">${studentScore.proNameKo }</td>
												<td id ="subjName">${studentScore.subName}</td>
												<td>${studentScore.oveScore}</td>
												<%-- <td>${studentScore.rank}</td> --%>
												<td id="grade">
												<c:if test="${studentScore.leStatus eq 'N' }">
													<button type="button" class="btn btn-success btn-sm"
														data-bs-toggle="modal"
														data-bs-target=".bd-example-modal-lg" id="modalBtn">강의평가</button>
												</c:if>
													<div class="modal fade bd-example-modal-lg" id="evalModal" tabindex="-1"
														style="display: none;" aria-hidden="true">
														<div class="modal-dialog modal-dialog-center modal-lg">
															<div class="modal-content">
																<div class="modal-header">
																	<h3 class="modal-title"></h3>
																	<button type="button" class="btn-close"
																		data-bs-dismiss="modal"></button>
																</div>
																<div class="modal-body">
																	<div class="table-responsive">
																		<table class="table table-bordered table-responsive-sm">
																			<thead>
																				<tr style="text-align: center;">
																					<th colspan="6"><strong>설문항목</strong></th>
																					<th><strong>매우만족</strong></th>
																					<th><strong>만족</strong></th>
																					<th><strong>보통</strong></th>
																					<th><strong>불만족</strong></th>
																					<th><strong>매우불만족</strong></th>
																				</tr>
																			</thead>
																			<tbody>
																				<tr class="eval">
																					<td colspan="6"><strong>1. 강의 내용: 강의의
																							내용이 적절한가요?</strong></td>
																					<td><input type="radio" name="evList[1]"
																						value="5" class="form-check-input centered-radio"></td>
																					<td><input type="radio" name="evList[1]"
																						value="4" class="form-check-input centered-radio"></td>
																					<td><input type="radio" name="evList[1]"
																						value="3" class="form-check-input centered-radio"></td>
																					<td><input type="radio" name="evList[1]"
																						value="2" class="form-check-input centered-radio"></td>
																					<td><input type="radio" name="evList[1]"
																						value="1" class="form-check-input centered-radio"></td>
																				</tr>
																				<tr>
																					<td colspan="6"><strong>2. 강의 방식: 강의
																							방식이 이해하기 쉽고 효과적인가요?</strong></td>
																					<td><input type="radio" name="evList[2]"
																						value="5" class="form-check-input centered-radio"></td>
																					<td><input type="radio" name="evList[2]"
																						value="4" class="form-check-input centered-radio"></td>
																					<td><input type="radio" name="evList[2]"
																						value="3" class="form-check-input centered-radio"></td>
																					<td><input type="radio" name="evList[2]"
																						value="2" class="form-check-input centered-radio"></td>
																					<td><input type="radio" name="evList[2]"
																						value="1" class="form-check-input centered-radio"></td>
																				</tr>
																				<tr>
																					<td colspan="6"><strong>3. 강사의 역량: 강사는
																							전문적이고 열정적으로 강의를 진행하나요?</strong></td>
																					<td><input type="radio" name="evList[3]"
																						value="5" class="form-check-input centered-radio"></td>
																					<td><input type="radio" name="evList[3]"
																						value="4" class="form-check-input centered-radio"></td>
																					<td><input type="radio" name="evList[3]"
																						value="3" class="form-check-input centered-radio"></td>
																					<td><input type="radio" name="evList[3]"
																						value="2" class="form-check-input centered-radio"></td>
																					<td><input type="radio" name="evList[3]"
																						value="1" class="form-check-input centered-radio"></td>
																				</tr>
																				<tr>
																					<td colspan="6"><strong>4. 교재: 교재가
																							적절하고 이해하기 쉽나요?</strong></td>
																					<td><input type="radio" name="evList[4]"
																						value="5" class="form-check-input centered-radio"></td>
																					<td><input type="radio" name="evList[4]"
																						value="4" class="form-check-input centered-radio"></td>
																					<td><input type="radio" name="evList[4]"
																						value="3" class="form-check-input centered-radio"></td>
																					<td><input type="radio" name="evList[4]"
																						value="2" class="form-check-input centered-radio"></td>
																					<td><input type="radio" name="evList[4]"
																						value="1" class="form-check-input centered-radio"></td>
																				</tr>
																				<tr>
																					<td colspan="6"><strong>5. 성적 평가: 성적
																							평가 방식이 적절하고 공정한가요?</strong></td>
																					<td><input type="radio" name="evList[5]"
																						value="5" class="form-check-input centered-radio"></td>
																					<td><input type="radio" name="evList[5]"
																						value="4" class="form-check-input centered-radio"></td>
																					<td><input type="radio" name="evList[5]"
																						value="3" class="form-check-input centered-radio"></td>
																					<td><input type="radio" name="evList[5]"
																						value="2" class="form-check-input centered-radio"></td>
																					<td><input type="radio" name="evList[5]"
																						value="1" class="form-check-input centered-radio"></td>
																				</tr>
																				<tr>
																					<td colspan="6"><strong>6. 학습환경: 수업시간,
																							장소, 시설 등이 만족스러운가요?</strong></td>
																					<td><input type="radio" name="evList[6]"
																						value="5" class="form-check-input centered-radio"></td>
																					<td><input type="radio" name="evList[6]"
																						value="4" class="form-check-input centered-radio"></td>
																					<td><input type="radio" name="evList[6]"
																						value="3" class="form-check-input centered-radio"></td>
																					<td><input type="radio" name="evList[6]"
																						value="2" class="form-check-input centered-radio"></td>
																					<td><input type="radio" name="evList[6]"
																						value="1" class="form-check-input centered-radio"></td>
																				</tr>
																				<tr>
																					<td colspan="6"><strong>7. 전반적인 만족도:
																							전반적으로 강의에 만족하나요?</strong></td>
																					<td><input type="radio" name="evList[7]"
																						value="5" class="form-check-input centered-radio"></td>
																					<td><input type="radio" name="evList[7]"
																						value="4" class="form-check-input centered-radio"></td>
																					<td><input type="radio" name="evList[7]"
																						value="3" class="form-check-input centered-radio"></td>
																					<td><input type="radio" name="evList[7]"
																						value="2" class="form-check-input centered-radio"></td>
																					<td><input type="radio" name="evList[7]"
																						value="1" class="form-check-input centered-radio"></td>
																				</tr>
																			</tbody>
																		</table>
																	</div>
																</div>
																<div class="modal-footer">
																	<input type="button" class="btn light btn-primary"
																		id="evalBtn" value="제출" />
																	<button type="button" class="btn btn-danger light"
																		data-bs-dismiss="modal">닫기</button>
																</div>
															</div>
															<form action="/score/mylistDetail"
																id="evalSubmit" method="post">
																<input type="hidden" name="evList" id="evList">
																<input type="hidden" name="lecCode" id="evListLecCode">
															</form>
														</div>
													</div>
													
													<c:if test="${studentScore.leStatus eq 'Y' }">
										  	<c:choose>
								                <c:when test="${grade == 4.5}">A+</c:when>
								                <c:when test="${grade == 4.0}">A</c:when>
								                <c:when test="${grade == 3.5}">B+</c:when>
								                <c:when test="${grade == 3.0}">B</c:when>
								                <c:when test="${grade == 2.5}">C+</c:when>
								                <c:when test="${grade == 2.0}">C</c:when>
								                <c:when test="${grade == 1.5}">D</c:when>
							                	<c:otherwise>F</c:otherwise>
							            	</c:choose>
													</c:if>	 
	
												</td>
												<!-- 강의평가 완료 후 성적등급 나와야함. ${studentScore.grade } -->
												<td>${studentScore.subCredit }</td>
												<!-- 실시간 변환위해서 온클릭추가 -->
												<td><button type="button" class="btn btn-primary btn-sm updateTable"
														data-sub-name="${studentScore.subName}"
														data-ove-score="${studentScore.oveScore}"
														data-lec-code="${studentScore.lecCode}" 
														>이의신청</button></td>
											</tr>
										</c:if>
									</c:forEach>
								</tbody>
							</table>
						</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-xl-4">
			<div class="card">
				<div class="card-header" style="padding-bottom:10px;">
					<h4><span style="font-size: 20px; color: #f96d00;">|</span><strong>&nbsp;이의신청</strong></h4>
				</div>
					<div class="card-body" id="subInfo">
<!-- 			<div style="margin-bottom: 1%;"> -->
<!-- 				<span style="font-size: large; color: #f96d00;">|</span><span -->
<!-- 						style="font-size: large; display: inline;">이의신청 -->
<!-- 						작성하기&nbsp;&nbsp;&nbsp; </span> &nbsp; -->
<!-- 			</div> -->
						<div class="table-responsive" style="overflow: auto;">
							<table id="subTable" class="table table-bordered table-hover">
								<thead>
									<tr class="table-active">
										<th>교과목명</th>
										<!-- <th id="lecCode">강의코드</th> -->
										<!-- 이의신청과목에 id 추가 -->
										<th id="subName" style="color:#007ed9; font-weight: bold;">이의신청과목</th>
										<th colspan="3">
											<button type="button" id="sendObjection" class="badge badge-secondary">제출하기</button>
										</th>
									</tr>
								</thead>
								<tbody class="nav-item" role="presentation">
									<tr>
										<td colspan="3"><textarea id="my-textarea" cols="50" rows="10" placeholder="이의신청 사유를 입력해 주세요." style="padding: 10px;"></textarea></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-8 ps-0">
				<div class=card>
					<div class="card-header" style="padding-bottom:10px;">
						<h4><span style="font-size: 20px; color: #f96d00;">|</span><strong>&nbsp;이의신청 현황</strong></h4>
					</div>
						<div class="card-body" id="subInfo">
<!-- 								<div style="margin-bottom: 1%;"> -->
<!-- 									<span style="font-size: large; color: #f96d00;">|</span> -->
<!-- 									<span style="font-size: large; display: inline;">이의신청 현황 &nbsp;&nbsp;&nbsp; </span> &nbsp; -->
<!-- 								</div> -->
								<div class="table-responsive"
									style="overflow: auto;">
									<table id="subTable"
										class="table table-bordered table-hover">
										<thead>
											<tr class="table-active">
												<th>과목명</th>
												<th>담당교수</th>
												<th>신청사유</th>
												<th>신청상태</th>
												<th>신청날짜</th>
												<th>삭제</th>
											</tr>
										</thead>
										<tbody id="objBody">
											<c:forEach items="${objectionList}" var="objection">
												<tr>
													<td>${objection.subName }</td>
													<td>${objection.proNameKo }</td>
													<td>${objection.objReason }</td>
													<td>
													<c:if test="${objection.objStatus eq 'Y'}"> 수락</c:if>
													<c:if test="${objection.objStatus eq 'W'}"> 대기</c:if>
													<c:if test="${objection.objStatus eq 'N'}"> 반려</c:if>
													</td>
													<td>${objection.objDate}</td>
													<c:set var="allowDelete" value="${objection.objStatus =='W'}" />
													<td><c:choose>
															<c:when test="${allowDelete}">
																<a href="/score/deleteObjection?stuId=${studentScore.stuId}&lecCode=${objection.lecCode}"
																	onclick="showConfirmation(event)" class="badge light badge-danger">삭제</a>
															</c:when>
															<c:otherwise>
																<span style="color: red">불가</span>
															</c:otherwise>
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
	</div>
</div>


<c:set var="studentVO" value="${sessionScope.userInfo.studentVO}" />

<script type="text/javascript">
/* 강의평가 */
$(function() {
	// 버튼 클릭 이벤트 핸들러 등록
	$('.btn-success').on('click', function() {
	  // data-lec-code 속성의 값 가져오기
	  var lecCode = $(this).parent().parent().find('#evalLecCode').text();
	  var subjName = $(this).parent().parent().find('#subjName').text();
	  var proName = $(this).parent().parent().find('#proName').text();
	  console.log('lecCode>>',lecCode);
	// 모달의 id 값 변경하기
	  $("#evalModal").attr("id", lecCode + "modal");
	  $('#evListLecCode').val(lecCode);	
	  $('.modal-title').text(subjName + ' / ' + proName +'교수');
	});
		var evalBtn = $('#evalBtn');//제출버튼
		evalBtn.on("click", function() {
			var evList = [];
			for (var i = 1; i <= 7; i++) {
				var evVal = $('input[name="evList[' + i + ']"]:checked').val();
				if (!$('input[name="evList['+i+']"]:checked').length) {
				    // alert 띄우기
				      Swal.fire({
					      icon: 'warning',
					      title: '답변하지 않은 항목이 있습니다.',
					      text: i + '번째 항목에 답변하지 않았습니다.',
					    });
				    // 함수 종료
				    return;
				  }
				evList.push(evVal);
			 }
			$("#evList").val(evList);
			console.log("evList", $("#evList").val());
			$('#evalSubmit').submit();
		});
	});

/* 얘는 이의신청 누를 때마다 이의 신청과목이 바뀜 */
	 $(".updateTable").on("click",function(){
//data-subName="${studentScore.subName}"  data-oveScore="${studentScore.oveScore}"
		let subName = $(this).data("subName");
		let oveScore = $(this).data("oveScore");
		let lecCode = $(this).data("lecCode");
		
		console.log("subName : " + subName + ", oveScore : " + oveScore + ", lecCode : " + lecCode);
		
		sessionStorage.setItem("oveScore",oveScore);
		sessionStorage.setItem("subName",subName);
		sessionStorage.setItem("lecCode",lecCode);
		
		$("#subName").html(subName);
	 });
	 
	/* 얘는 이의신청 누를 때마다 이의 신청강의코드가 바뀜 */	
	function updateTable2(lecCode) {
		document.getElementById('lecCode').textContent = lecCode;
	}
	
/* 비동기 써보기 #안에 id가 들어가야하는데.... 유동적인 값이 반영되나?*/

$("#sendObjection").click(function(){
	
	/*
	sessionStorage.setItem("oveScore",oveScore);
	sessionStorage.setItem("subName",subName);
	sessionStorage.setItem("lecCode",lecCode);
	*/ //학생아이디//강의코드//이의신청사유//이전성적
	 var params = {
			 "stuId":"${studentVO.stuId}"
		   , "lecCode":sessionStorage.getItem("lecCode") 	 
           , "objReason":$("#my-textarea").val()  
           , "objPreCredit":sessionStorage.getItem("oveScore") 
   }
	 
	 console.log("params : " + JSON.stringify(params));
	 
	 $.ajax({
			type : 'POST',
			url : '/score/objectionInsert',
			contentType:"application/json;charset:utf-8",
			dataType : "json",
			data : JSON.stringify(params),
			success : function(res) {
				console.log("res>>", JSON.stringify(res));
				listObjection();
			}
		});
});

function listObjection() {
	$.ajax({
		type : 'POST',
		url : '/score/listObjection',
		dataType : "json",
		success : function(res) {
			console.log("res>>", res);
			
			let trs = '';
			
			res.forEach(function(obj){
				console.log(obj.lecCode)
				
				let allowDelete = obj.objStatus == 'W';
// 				alert("allowDelete " + allowDelete + ",  " + obj.objStatus);
				let deleteBtn = allowDelete 
				  ? `<a href="/score/deleteObjection?stuId=\${obj.stuId}&lecCode=\${obj.lecCode}" onclick="showConfirmation(event)" class='badge light badge-danger'>삭제</a>`
				  : '<span style="color: red">삭제 불가능</span>';
				
				trs = trs + 
					`<tr>
						<td>\${obj.subName}</td>
						<td>\${obj.proNameKo}</td>
						<td>\${obj.objReason}</td>
						<td>\${obj.objStatus === 'Y' ? '수락' : obj.objStatus === 'W' ? '대기' : '반려'}</td>
						<td>\${obj.objDate}</td>
						<td>\${deleteBtn}</td>					
					</tr>`;
			});
			
			
		$("#objBody").empty();
		$("#objBody").html(trs);
		
		}
	})
}

function showConfirmation(event) {
	  event.preventDefault(); // Prevent the default link behavior
	  Swal.fire({
    	title: '이의신청 삭제',
   	 	html : '이의신청을 삭제하시겠습니까?',
   		icon: 'question',
   	 	showCancelButton: true,
   	 	confirmButtonText: 'Yes'
	  }).then((result) => {
	    if (result.isConfirmed) {
	      window.location.href = event.target.href;
	    }
	  })
	}



</script>