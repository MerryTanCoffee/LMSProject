<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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
      }
</style>
<!-- 페이지 타이틀 -->
<div class="page-titles">
   <ol class="breadcrumb">
      <li><h5 class="bc-title">클래스룸</h5></li>
      <li class="breadcrumb-item"><a href="javascript:void(0)">
         <svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path fill-rule="evenodd" clip-rule="evenodd" d="M10.0122 1.82893L11.6874 5.17545C11.8515 5.50399 12.1684 5.73179 12.5359 5.78451L16.2832 6.32391C17.2091 6.45758 17.5775 7.57968 16.9075 8.22262L14.1977 10.8264C13.9314 11.0825 13.8101 11.4505 13.8731 11.812L14.5126 15.488C14.6701 16.3974 13.7023 17.0911 12.8747 16.6609L9.52545 14.9241C9.1971 14.7537 8.80385 14.7537 8.47455 14.9241L5.12525 16.6609C4.29771 17.0911 3.32986 16.3974 3.48831 15.488L4.12686 11.812C4.18986 11.4505 4.06864 11.0825 3.80233 10.8264L1.09254 8.22262C0.422489 7.57968 0.790922 6.45758 1.71678 6.32391L5.4641 5.78451C5.83158 5.73179 6.14942 5.50399 6.31359 5.17545L7.98776 1.82893C8.40201 1.00148 9.59799 1.00148 10.0122 1.82893Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
		</svg>
         이의신청 </a>
      </li>
      <li class="breadcrumb-item active"><a href="javascript:void(0)">이의신청 목록</a></li>
   </ol>
</div>
<div class="container-fluid">
	<div class="row">
   <!-- 표현하고자 하는 내용 넣기 -->
		<div class="card">
			<div class="card-header" style="padding-bottom:10px;">
				<h4><span style="font-size:20px; color: #f96d00;">|</span><strong>&nbsp;이의신청 목록</strong></h4>
			</div>
			<div class="card-body"id="subInfo">
				<div class="row mb-4" >
<!-- 					<div style="margin-bottom: 1%;"> -->
<!-- 						<span style="font-size: large; color: #f96d00;">|</span><span -->
<!-- 							style="font-size: large; display: inline;">이의신청 목록 -->
<!-- 							&nbsp;&nbsp;&nbsp; </span> &nbsp; -->
<!-- 					</div> -->
				<div class="table-responsive" style="overflow: auto;">
					<table id="subTable"
						class="table table-sm table-bordered table-hover">
						<thead>
							<tr class="table-active">
								<th>학번</th>
								<th>이름</th>
								<th>교과목명</th>
								<!-- <th>이의신청사유</th> -->
								<th>이의신청일</th>
								<!-- <th>이의결과내용</th> -->
								<th>이의신청승인여부</th>
								<th>이전성적</th>
								<th>이후성적</th>
								<th>작성</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${objProList}" var="objPro">
								<tr class="tblRow">
									<td>${objPro.stuId}</td>
									<td>${objPro.stuNameKo}</td>
									<td>${objPro.subName}</td>
									<%-- 								<td>${objPro.objReason}</td> --%>
									<td>${objPro.objDate}</td>
									<%-- 								<td>${objPro.objContent}</td> --%>
									<td>${objPro.objStatus}</td>
									<td>${objPro.objPreCredit}</td>
									<td>${objPro.objReCredit}</td>
									<td><button type="button" class="modifyBtn btn btn-primary btn-sm" 
											data-bs-toggle="modal" data-bs-target="#exampleModalCenter"
											data-stu-id="${objPro.stuId}" data-lec-code="${objPro.lecCode}" data-obj-no="${objPro.objNo}">
											작성하기</button></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			</div>
			<div class="card-header" style="padding-bottom:10px;">
				<h4><span style="font-size:20px; color: #f96d00;">|</span><strong>&nbsp;이의신청 처리완료</strong></h4>
			</div>
			<div class="card-body" id="subInfo">
				<div class="row mb-4" >
<!-- 					<div style="margin-bottom: 1%;"> -->
<!-- 						<span style="font-size: large; color: #f96d00;">|</span><span -->
<!-- 							style="font-size: large; display: inline;">이의신청 처리완료 -->
<!-- 							&nbsp;&nbsp;&nbsp; </span> &nbsp; -->
<!-- 					</div> -->
					<div class="table-responsive" style="overflow: auto;">
						<table id="resultTable"
							class="table table-sm table-bordered table-hover">
							<thead>
								<tr class="table-active">
									<th>이름</th>
									<th>교과목명</th>
									<th>이의신청사유</th>
									<th>이의결과내용</th>
									<th>이의신청승인여부</th>
									<th>이전성적</th>
									<th>이후성적</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${objProList}" var="objPro">
									<tr class="tblRow">
										<td>${objPro.stuNameKo}</td>
										<td>${objPro.subName}</td>
										<td>${objPro.objReason}</td>
										<td>${objPro.objContent}</td>
										<td>${objPro.objStatus}</td>
										<td>${objPro.objPreCredit}</td>
										<td>${objPro.objReCredit}</td>
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
		<!-- 수정모달창임 -->
		<div class="modal fade" id="exampleModalCenter">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title">이의신청 처리</h4>
						<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
					</div>
					
					<form:form id="scoreFrm" action="/score/updateObjection"
						method="post" modelAttribute="objection">
						<div class="modal-body">
							<!-- value도 다 추가해줌 -->
							<!-- 학번 : --> <input type="hidden" id="stuId" name="stuId" value="${object.stuId}">
							<!-- 강의코드 : --> <input type="hidden" id="lecCode" name="lecCode" value="${object.lecCode}"> 
							<!-- objNo : --> <input type="hidden" id="objNo" name="objNo" value="${object.objNo}"> 
							<p class="mb-0"><i class="fa-solid fa-check"></i> 답변 </p>
<%-- 							<input type="text" class="form-control" name="objContent" id="objContent" placeholder="답변을 입력해 주세요." value="${object.objContent}" required /> --%>
							<textarea rows="10" cols="30" class="form-control pt-3" name="objContent" id="objContent" placeholder="답변을 입력해 주세요." required >${object.objContent}</textarea>
							<br>
							<p><i class="fa-solid fa-check"></i> 상태 : &nbsp;
								<input type="radio" name="objStatus" id="objStatusY" value="Y" checked />
									<label for="objStatusY">승인</label>&nbsp;
								<input type="radio" name="objStatus" id="objStatusN" value="N" />
									<label for="objStatusN">거절</label>
							 </p>
							<p class="mb-0"><i class="fa-solid fa-check"></i> 성적 입력</p>
							<input class="form-control" type="number" name="objReCredit" id="objReCredit" value="${object.objReCredit}" placeholder="성적을 입력해 주세요." required /> 
						</div>
						<div class="modal-footer">
							<button type="submit" id="registerBtn" class="btn btn-success">제출</button>
							<button type="button" onclick="f_modalClose()"
								class="btn btn-danger light" data-bs-dismiss="modal">닫기</button>
						</div>
					</form:form>
				</div>
			</div>
	</div>
	<script>
		$(".modifyBtn").on("click",function(){
			//data-stu-id="20230002"
			//data-lec-code="2VOMrlIM"
			//data-obj-no="113"
			let stuId = $(this).data("stuId");//20230002
			let lecCode = $(this).data("lecCode");//2VOMrlIM
			let objNo = $(this).data("objNo");//113
			
			$("#stuId").val(stuId);
			$("#lecCode").val(lecCode);
			$("#objNo").val(objNo);
		});
	
		const myModal = document.querySelector("#myModal");
		function f_modal() {
			myModal.style.display = "block";
		}
		function f_modalClose() {
			myModal.style.display = "none";
		}

		
		// select box에서 선택한 강의 코드를 저장할 변수
		var selectedLecCode = "";
		$("#selectLecCode").change(function() {
			selectedLecCode = $(this).val(); // 선택한 강의 코드를 변수에 저장
			$("tbody tr").hide(); // 모든 행 숨기기
			$("tbody tr").filter(function() {
				return $(this).children(":eq(1)").text() == selectedLecCode; //선택한 강의 코드와 일치하는 행만 보이도록 필터링
			}).show();
		});

		
		
		/* Y/N/W구분해주기 Y/N일때만 나옴*/
		var column = 4;

		// 테이블 객체 가져오기
		var table = document.getElementById("resultTable");

		// tbody에서 모든 행 가져오기
		var rows = table.tBodies[0].rows;

		// 각 행에 대해 필터링하여 보여줄 것만 남기기
		for (var i = 0; i < rows.length; i++) {
			var cell = rows[i].cells[column];
			if (cell.innerHTML == "Y" || cell.innerHTML == "N") {
				rows[i].style.display = "";
			} else {
				rows[i].style.display = "none";
			}
		}
	</script>