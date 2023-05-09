<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<title>students score list</title>
<style>
th {
	border: 1px solid black;
	text-align: center;
	background-color: rgb(41, 103, 68);
}

td {
	border: 1px solid;
	text-align: center;
	background-color: white;
	color: black;
}

#myModal {
	position: fixed;
	height: 100%;
	width: 100%;
	left: 0;
	top: 0;
	background-color: azure;
	display: none;
}

#myCont {
	width: 60%;
	height: 50%;
	margin: 20% auto;
	background-color: rgb(36, 128, 119);
	color: white
}
</style>
<!-- 페이지 타이틀 -->
<div class="page-titles">
	<ol class="breadcrumb">
	   <li><h5 class="bc-title">학생성적 목록</h5></li>
	   <li class="breadcrumb-item"><a href="javascript:void(0)">
		  <svg width="17" height="17" viewBox="0 0 17 17" fill="none" xmlns="http://www.w3.org/2000/svg">
			 <path d="M2.125 6.375L8.5 1.41667L14.875 6.375V14.1667C14.875 14.5424 14.7257 14.9027 14.4601 15.1684C14.1944 15.4341 13.8341 15.5833 13.4583 15.5833H3.54167C3.16594 15.5833 2.80561 15.4341 2.53993 15.1684C2.27426 14.9027 2.125 14.5424 2.125 14.1667V6.375Z" stroke="#2C2C2C" stroke-linecap="round" stroke-linejoin="round"/>
			 <path d="M6.375 15.5833V8.5H10.625V15.5833" stroke="#2C2C2C" stroke-linecap="round" stroke-linejoin="round"/>
		  </svg>
		  클래스룸 </a>
	   </li>
	   <li class="breadcrumb-item active"><a href="javascript:void(0)">학생성적 목록</a></li>
	</ol>
 </div>
 <div class="container-fluid">
	<!-- 표현하고자 하는 내용 넣기 -->
	<div class="row">
		<div class="col-xl-12">
			<div class="card">
				<div class="card-body" style="border: none;">
					<div class="row">
						<div class="col-md-1 text-center"
							style="margin-top: 10px; padding: 0;">이름:</div>
						<div class="col-md-2">
							<input type="text" name="" value="${userInfo.professorVO.proNameKo }"
								disabled="disabled" class="form-control">
						</div>
						<div class="col-md-1 text-center"
							style="margin-top: 10px; padding: 0;">교번:</div>
						<div class="col-md-2">
							<input type="text" name="" value="${userInfo.userId }"
								disabled="disabled" class="form-control">
						</div>
						<div class="col-md-1 text-center"
							style="margin-top: 10px; padding: 0;">전공:</div>
						<div class="col-md-3">
							<input type="text" name=""
								value="${sessionScope.userInfo.professorVO.proMajor}"
								disabled="disabled" class="form-control">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 여기까지 프로필 -->
	<!-- 여기에는 교수의 등록, 전체학생조회, 수정이 들어갈것이다. 아마도? -->
	<div class="card dz-card" id="accordion-one"
		style="width: 100%; height: 500px; overflow: auto">
		<div class="card-header flex-wrap">
			<div>
				<h4 class="card-title"
					style="color: #22313f; font-weight: 800; font-size: 18px;">학생
					성적 목록</h4>
			</div>
		</div>
		<div class="tab-content" id="myTabContent">
			<div class="tab-pane fade show active" id="Preview" role="tabpanel"
				aria-labelledby="home-tab">
				<div class="card-body pt-0">
					<div class="table-responsive">
						<table id="example" class="display table" width="100%" border="0"
							cellspacing="0" cellpadding="0">
							<thead>
								<tr>
									<th>개설연도</th>
									<th>개설학기</th>
									<th>강의명</th>
									<th>등수</th>
									<th>학과</th>
									<th>학년</th>
									<th>학기</th>
									<th>학번</th>
									<th>이름</th>
									<th>중간고사</th>
									<th>기말고사</th>
									<th>과제</th>
									<th>출석</th>
									<th>최종성적</th>
									<th>학점</th>
									<th>수정</th>
									<th>삭제</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${sList}" var="studentScore">
									<tr>
										<td>${studentScore.lecOpenYear }</td>
										<td>${studentScore.lecOpenSemester }</td>
										<td>${studentScore.subName }</td>
										<td>${studentScore.rank }</td>
										<td>${studentScore.acaMajor }</td>
										<td>${studentScore.acaGrade }</td>
										<td>${studentScore.acaSemester }</td>
										<td>${studentScore.stuId }</td>
										<td>${studentScore.stuNameKo }</td>
										<td>${studentScore.atdScore }</td>
										<td>${studentScore.mdtScore }</td>
										<td>${studentScore.fnlScore }</td>
										<td>${studentScore.asgScore }</td>
										<td>${studentScore.oveScore }</td>
										<td>${studentScore.grade }</td>
										<!-- class="btn btn-primary mb-2" 때문에 조짐 그럼 무슨문제냐면 어디서 잘못건드림-->
										<td><button type="button" id="modifyBtn"
												class="" data-bs-toggle="modal"
												data-bs-target="#exampleModalCenter"
												style="background-color: transparent; border: transparent; color:black; margin-bottom:0px; padding:0px" 
												onclick="f_modal2('${studentScore.stuId}', '${studentScore.lecCode}', '${studentScore.atdScore}', '${studentScore.mdtScore}', '${studentScore.fnlScore}', '${studentScore.asgScore}')">수정</button></td>
										<%-- <td><button type="button" id="removeBtn" style="background-color:transparent; border:transparent" onclick="f_delete('${studentScore.stuId}')">삭제</button></td> --%>
										<td><a href="/score/delete?stuId=${studentScore.stuId}&lecCode=${studentScore.lecCode}">삭제</a></td>


									</tr>
								</c:forEach>
							</tbody>
						</table>
						<!-- 모달창 띄우는 버튼임 -->
						<button type="button" class="btn btn-primary"
							data-bs-toggle="modal" data-bs-target="#exampleModalCenter"
							onclick="f_modal()">성적등록</button>
					</div>
				</div>
				
			</div>
		</div>

	</div>
 </div>
	<div>
		<!-- 등록/수정모달창임 -->
		<div class="modal fade" id="exampleModalCenter">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">학생성적 작성하기</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal">
						</button>
					</div>
					<!-- modelAttribute="score" 추가함.-->
					<form:form id="scoreFrm" action="/score/register" method="post"
						modelAttribute="score">
						<div class="modal-body">
							<!-- value도 다 추가해줌 -->
							학번 : <input type="text" name="stuId" id="stuId"> <br>
							강의코드 : <input type="text" name="lecCode" id="lecCode"> <br>
							출석 : <input type="text" name="atdScore" id="atdScore"> <br>
							중간고사 : <input type="text" name="mdtScore" id="mdtScore">
							<br> 기말고사 : <input type="text" name="fnlScore" id="fnlScore">
							<br> 과제 : <input type="text" name="asgScore" id="asgScore">
							<br>
						</div>
						<div class="modal-footer">
							<button type="submit" id="registerBtn" class="btn btn-success">완료</button>
							<button type="button" onclick="f_modalClose()"
								class="btn btn-danger light" data-bs-dismiss="modal">닫기</button>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
	<script>
		const myModal = document.querySelector("#myModal");
		function f_modal() {
			myModal.style.display = "block";
		}
		function f_modalClose() {
			myModal.style.display = "none";
		}

		//const myModal2 = document.querySelector("#myModal2");
		function f_modal2(rstStuId, rstLecCode, rstAtdScore, rstMdtScore,
				rstFnlScore, rstAsgScore) { // restStuId = 수정버튼 눌렀을 때 들어오는 stuID 

			console.log("학번 >> ", rstStuId, "강의코드 >> ", rstLecCode, "출석점수>>",
					rstAtdScore, "중간고사>>", rstMdtScore, "기말고사>>", rstFnlScore,
					"과제>>", rstAsgScore);
			// 				const rstStuId = document.querySelector("#stuId").value = '';
			$("#stuId").val(rstStuId);
			$("#lecCode").val(rstLecCode);
			$("#atdScore").val(rstAtdScore);
			$("#mdtScore").val(rstMdtScore);
			$("#fnlScore").val(rstFnlScore);
			$("#asgScore").val(rstAsgScore);

			$("#scoreFrm").attr("action", "/score/update");

			// 				console.log("stuId:", stuId);
			myModal.style.display = "block";
			alert("수정시작");

			//modifyBtn.addEventListener("click", function(){
			//});
		}

		/* function f_modalClose2() {
			myModal2.style.display = "none";
		} */

		//post방식 삭제 버튼 눌렀을 때 발생하는 일
		const removeBtn = document.querySelector("#removeBtn");
		function f_delete(stdId) {
			console.log("stdId : ", stdId);
			alert("삭제완료");
		}
	</script>
	
	<script>
	// select box에서 선택한 강의 코드를 저장할 변수
	var selectedLecCode = "";
	$("#selectLecCode").change(function() {
		selectedLecCode = $(this).val();  // 선택한 강의 코드를 변수에 저장
		$("tbody tr").hide();  // 모든 행 숨기기
		$("tbody tr").filter(function() {
			return $(this).children(":eq(1)").text() == selectedLecCode;  //선택한 강의 코드와 일치하는 행만 보이도록 필터링
		}).show();
	});
	</script>
