<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<style>
::-webkit-scrollbar {
	width: 10px;
}

::-webkit-scrollbar-track {
	background-color: #fff;
}

::-webkit-scrollbar-thumb {
	background-color: #ecf5ff;
}

::-webkit-scrollbar-thumb:hover {
	background-color: #56a5eb;
}

header {
  position: sticky;
  top: 0px; /* 도달했을때 고정시킬 위치 */
  padding: 15px;
  z-index: 10;
  background-color: #fff;
}

#progressBox {
  position: sticky;
  top: 80px; /* 도달했을때 고정시킬 위치 */
  z-index: 11;
}
</style>

<div class="col-lg-8 mx-auto p-4 py-md-5">
	
	<header class="d-flex align-items-center pb-3 border-bottom justify-content-between">
		<a href="#" class="d-flex align-items-center text-body-emphasis text-decoration-none">
<%-- 			<span class="fs-3">${fn:substring(stuExamFormList[0].examDate, 0, 10) } ${stuExamFormList[0].subName}  --%>
			<span class="fs-3"><fmt:formatDate value="${stuExamFormList[0].examDate}" pattern="yyyy-MM-dd (EE) "/> ${stuExamFormList[0].subName} 
				<c:if test="${stuExamFormList[0].examGubun  eq 'M'}">중간고사</c:if>
				<c:if test="${stuExamFormList[0].examGubun  eq 'F'}">기말고사</c:if>
			</span>
		</a>
		<!-- 타이머 box -->
		<div class="d-flex align-items-center">
			<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-alarm" viewBox="0 0 16 16">
              <path d="M8.5 5.5a.5.5 0 0 0-1 0v3.362l-1.429 2.38a.5.5 0 1 0 .858.515l1.5-2.5A.5.5 0 0 0 8.5 9V5.5z" />
              <path d="M6.5 0a.5.5 0 0 0 0 1H7v1.07a7.001 7.001 0 0 0-3.273 12.474l-.602.602a.5.5 0 0 0 .707.708l.746-.746A6.97 6.97 0 0 0 8 16a6.97 6.97 0 0 0 3.422-.892l.746.746a.5.5 0 0 0 .707-.708l-.601-.602A7.001 7.001 0 0 0 9 2.07V1h.5a.5.5 0 0 0 0-1h-3zm1.038 3.018a6.093 6.093 0 0 1 .924 0 6 6 0 1 1-.924 0zM0 3.5c0 .753.333 1.429.86 1.887A8.035 8.035 0 0 1 4.387 1.86 2.5 2.5 0 0 0 0 3.5zM13.5 1c-.753 0-1.429.333-1.887.86a8.035 8.035 0 0 1 3.527 3.527A2.5 2.5 0 0 0 13.5 1z" />
            </svg>
			<span class="fs-5" id="timer">&nbsp;60분 00초</span>
<!-- 			<span class="fs-5" id="timer">&nbsp;00분 10초</span> -->
		</div>
	</header>
	<!-- 프로세스 바 -->
	<div class="card-body pt-0" id="progressBox">
		<div class="progress" style="height:4px;">
			<div class="progress-bar linear" id="progressBar" style="width: 100%" role="progressbar">
			</div>
		</div>
	</div>	

	<!-- 문제 box -->
	<main>
		<!-- 문제 1 -->
		<form action="/exam/stuExamAnswerInsert" method="post" id="examSubmitForm">
			<input type="hidden" name="stuId" value="${stuId }"  >
			<input type="hidden" name="examGubun" value="" id="examGubun">
			<input type="hidden" name="lecCode" value="" id="lecCode">
			<input type="hidden" name="exaAnswer" value="" id="exaAnswer"/>
			<input type="hidden" name="correctCount" value="" id="correctCount"/>
			<c:set value="${stuExamFormList[0].examList }" var="examList"/>
			<input type="hidden" name="exNum" value="${fn:length(examList) }" id="exNum">
			<c:forEach items="${examList }" var="list" varStatus="fstat">
				<br><br>
				<h4 class="text-body-emphasis mb-4">
					<input type="hidden" name="exSolution" value="${list.exSolution }" id="exSolution">
					<strong>${list.exNum }번. </strong><span>${list.exContent }</span>
				</h4>
				<div class="fs-5 col-md-8 ms-3">
					<c:forEach items="${list.examSelectList }" var="bogi" varStatus="stat">
					<div class="form-check mb-2">
						<input class="form-check-input answer" type="radio" name="exaAnswer${fstat.count }" value="${stat.count }"> 
						<label class="form-check-label" for=""> ${bogi.exsContent }</label>
					</div>
					</c:forEach>
				</div>
			</c:forEach>
		</form>
		

		<div class="mb-5"></div>


		<!-- 제출 버튼 -->
		<div class="row g-5">
			<button type="button" class="btn btn-primary" id="submitBtn">제출</button>
		</div>
	</main> 
	<footer class="pt-5 my-5 text-body-secondary border-top"> 해당
		저작물의 권한은 대원대학교에 있으며 저작물 유출 시 법적조치를 취할 수 있음을 명시합니다. © Daewon Univ. </footer>
</div>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
<script type="text/javascript">

	var time = 10;
	var min = "";
	var sec = "";
	var bar = document.querySelector('#progressBar');
	
	var lecCode = location.href.split("?")[1].split("=")[1].split("&")[0];
	var examGubun = location.href.substr(-1);
	
	console.log("lecCode::", lecCode);
	console.log("examGubun::", examGubun);

	// setInterval(함수, 시간) : 주기적인 실행
	var timer = setInterval(function() {
		min = parseInt(time / 60);
		sec = time % 60;

// 		var totalSeconds = 60 * 60
		var totalSeconds = 10;
        var remainingSeconds = min * 60 + sec;
        
        bar.style.width = (remainingSeconds*100/totalSeconds) + "%";
		
		min = min < 10 ? "0" + min : min;
		sec = sec < 10 ? "0" + sec : sec;
		
		document.getElementById("timer").innerHTML = "&nbsp;" + min + "분 " + sec + "초";
		time--;
		
		// 타임아웃 시
		if (time <= 0) {
			clearInterval(timer);
			Swal.fire({
				title : '시간초과!',
			  	html : '시험시간이 경과되었습니다.<br>3초 후에 페이지가 이동됩니다.',
			  	icon : 'error',
			  	value : true
			}).then((result) => {
				$("input:radio").attr("disabled", "disabled");
				// ajax 비동기 처리로 시험 보고 있는 회원의 성적을 0점으로 만든다.
				
				var data = {
					lecCode : lecCode,
					examGubun : examGubun,
					stuId : ${stuId}
				}
				
				$.ajax({
					url : "/exam/insertZeroScore",
					type: "post",
					data: JSON.stringify(data),
					contentType: "application/json",
					dataType: "text",
					success: function(res){
						if(res == "OK"){
							move_page();
						}
					}
				});
				
				setTimeout('move_page()', 3000); // 3초후에 함수실행
			});
			setTimeout('move_page()', 3000);
			
		}
		
	}, 1000);
	function move_page(){
	  location.href="/exam/stuExamList";  
	}
	
	
	$("#examSubmitForm").on("click", ".answer", function(){
		var answer = $(this).val();
		console.log("answer::", answer);
	});
	
	
	
	var data = "";
	let correctCnt = 0;	// 정답 갯수
	let wrongCnt = 0;	// 오답 갯수
	let mdtScore = 0;	// 중간점수
	let fnlScore = 0;	// 기말점수
	let points = 20;	// 배점 20점
	
	$("#submitBtn").on("click", function(e){
		
		$("#lecCode").val(lecCode);
		$("#examGubun").val(examGubun);

		var correctCount = 0;
		var exEle = $("[name=exSolution]");
		$("#examSubmitForm .answer:checked").map(function(idx, value){
			data += value.defaultValue+",";
			$("#exaAnswer").val(data);
			console.log($("#exaAnswer").val(data));
			
			if(exEle[idx].defaultValue == value.defaultValue){
				correctCount += 20;
			}

		});

		$("#correctCount").val(correctCount);
		
		Swal.fire({
			  title: '제출?',
			  html : "시험을 제출하시겠습니까?<br>제출하시면 답안 수정은 불가능 합니다.",
			  icon: 'question',
			  showCancelButton: true,
			  confirmButtonText: 'Yes'
			}).then((result) => {
			  if (result.isConfirmed) {
			    Swal.fire({
			    	title : '성공!',
			      	html : '시험이 제출되었습니다.<br>시험에 응시해주셔서 감사합니다. <br>좋은결과 얻으시길 바랍니다.',
			      	icon : 'success',
			      	value : true
			    }).then((result) => {
			    	$("#examSubmitForm").submit();
			    });
			  } else {
				  Swal.fire({
					 title :'실패!',
					 html : '제출을 중단하셨습니다.',
					 icon : 'error'
				  })
			  }
			});
	});
</script>
