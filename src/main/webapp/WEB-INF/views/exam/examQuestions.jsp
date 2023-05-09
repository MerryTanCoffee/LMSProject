<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<script src="https://npmcdn.com/flatpickr/dist/l10n/ko.js"></script>
<style>

.flatpickr-calendar .flatpickr-innerContainer .flatpickr-weekdays .flatpickr-weekday:nth-child(7n + 1),
.flatpickr-calendar .flatpickr-innerContainer .flatpickr-days .flatpickr-day:not(.flatpickr-disabled):not(.prevMonthDay):not(.nextMonthDay):nth-child(7n + 1) {
    color: #f95959;
}
 
.flatpickr-calendar .flatpickr-innerContainer .flatpickr-weekdays .flatpickr-weekday:nth-child(7),
.flatpickr-calendar .flatpickr-innerContainer .flatpickr-days .flatpickr-day:not(.flatpickr-disabled):not(.prevMonthDay):not(.nextMonthDay):nth-child(7n) {
    color: #007cb9;
}

</style>
<!-- 페이지 타이틀 -->
<div class="page-titles">
	<ol class="breadcrumb">
		<li><h5 class="bc-title">온라인 시험</h5></li>
		<li class="breadcrumb-item"><a href="javascript:void(0)">
			<svg width="17" height="17" viewBox="0 0 17 17" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path d="M2.125 6.375L8.5 1.41667L14.875 6.375V14.1667C14.875 14.5424 14.7257 14.9027 14.4601 15.1684C14.1944 15.4341 13.8341 15.5833 13.4583 15.5833H3.54167C3.16594 15.5833 2.80561 15.4341 2.53993 15.1684C2.27426 14.9027 2.125 14.5424 2.125 14.1667V6.375Z" stroke="#2C2C2C" stroke-linecap="round" stroke-linejoin="round"/>
				<path d="M6.375 15.5833V8.5H10.625V15.5833" stroke="#2C2C2C" stroke-linecap="round" stroke-linejoin="round"/>
			</svg>
			시험 출제 </a>
		</li>
		<li class="breadcrumb-item active"><a href="#">문제 등록</a></li>
	</ol>
</div>
<div class="container-fluid">

	<!-- 표현하고자 하는 내용 넣기 -->
	
<div class="row">
	<div class="col-xl-9">
		<div class="card" id="card-title-3">
			<form action="/exam/examInsert" method="post" id="insertExamForm">
				<div class="card-header ">
					<h5 class="card-title"><span style="font-size: 18px; color: #f96d00;">|</span> ${subName } <strong>문제</strong></h5>
					
				</div>
				<div class="card-body pt-3" id="questBody">
					<div class="card-body pb-3 pt-0" style="background-color: #ffe2e28a; border-radius: 5px;">
		            	<p class="pt-3 m-0" style="font-size:16px;">&lt; 출제자 유의사항 &gt;</p>
		           		<code style="background-color: #ffe2e200; color:red;">1.</code> 항목 추가와 제거는 시험 출제 시에만 가능합니다. 수정이 불가능하므로 신중하게 작성해주세요.<br>
		           		<code style="background-color: #ffe2e200; color:red;">2.</code> 한 문제당 4지선다 유형으로 출제가 가능하며 문제 유형은 객관식만 가능합니다.<br>
		           		<code style="background-color: #ffe2e200; color:red;">3.</code> 시험일자는 오늘을 기준으로 전날로 지정할 수 없습니다.<br>
		           		<code style="background-color: #ffe2e200; color:red;">4.</code> 시험일자 입력 시, 시간은 오전 9시 ~ 오후 5시까지 입력 가능합니다.
		           	</div>
					<div class="row pb-3 pt-3">
						<div class="col-sm-6">
							<label class="form-label"><i class="fa-solid fa-angle-right"></i> &nbsp;&nbsp;시험구분</label>
							<div class="dropdown bootstrap-select default-select form-control">
								<select id="examGubun" name="examGubun" class="default-select form-control" tabindex="null">
			                        <option selected disabled>시험 구분을 선택하세요.</option>
			                        <option value="M">중간고사</option>
			                        <option value="F">기말고사</option>
	                		    </select>
							</div>
						</div>
						<div class="col-sm-6">
							<label class="form-label"><i class="fa-solid fa-angle-right"></i> &nbsp;&nbsp;시험일</label>
							 <input id="flatpicker" class="form-control" name="examDate" placeholder="날짜를 선택해주세요."/>
						</div>
					</div>	
					<input type="hidden" name="lecCode" value="${lecCode }" id="lecCode">
				</div>
			<div class="card-footer d-grid gap-2 d-md-flex justify-content-md-end">
				<button type="button" class="btn badge light badge-primary me-md-2" id="questMinusBtn">항목제거</button>
				<button type="button" class="btn badge light badge-primary me-md-2" id="questPlusBtn">항목추가</button>
				<button class="btn badge light badge-primary" id="insertBtn">출제하기</button>
			</div>
			</form>	
		</div>
	</div>
	<div class="col-xl-3">
		<div class="card text-center" id="card-title-3">
			<div class="card-header ">
				<h5 class="card-title"><span style="font-size: 18px; color: #f96d00;">|</span> ${subName } <strong>답안</strong></h5>
			</div>
			<div class="card-body" id="omrBody">
				<table class="table table-bordered" >
					<thead>
						<tr>
							<th colspan="5">Answer Status</th>
						</tr>
					</thead>
					<tbody id="answerTbody">
					</tbody>
				</table>
			</div>
			
		</div>
	</div>
</div>
</div>

<script type="text/javascript">

//데이터 피커
$("#flatpicker").flatpickr(
	{
		dateFormat: "Y/m/d H:i",
		minDate: "today",
		 enableTime: true,
		"locale" : "ko",
		 minTime: "09:00",
	    maxTime: "17:00"
	}
);

var cnt = 1;
var listCount = 0;

$(function(){
	let lecCode = $.trim($("#lecCode").val());
	console.log("lecCode:", lecCode);
	
	$("#examGubun").change( function() {
		console.log("change..!");
		let examGubunVal = $.trim($(this).val());
		console.log("시험구분:", examGubunVal);
		
		var data = {
			examGubun : examGubunVal,
			lecCode : lecCode
		}
		
		$.ajax({
			url: "/exam/checkExamSubmitStatus",
			type: "post",
			contentType: "application/json",
			data: JSON.stringify(data),
			dataType: "text",
			success: function(res){
				console.log("결과값",res);
				if(res == "EXIST"){
					Swal.fire({
					  title: '에러발생!',
					  html: "해당 시험구분에 대해 이미 출제한 문제가 있습니다.",
					  icon: 'error'
					});
				}
			}
		});

	});
	
	
	
	var questPlusBtn = $("#questPlusBtn");
	var questMinusBtn = $("#questMinusBtn");
	// 항목추가
	questPlusBtn.on("click", function(){
		var html = "";
		html += "<div class='row pt-3' id='questRow"+(cnt)+"' >";
		html += "	<div class='card' id='card-title-3' style='border:none;'>";
		html += "		<div class='card-header pt-3' style='border:none;'>";
		html += "			<font id='questionNum'>Q"+(cnt)+".</font>&nbsp;&nbsp;&nbsp;&nbsp;";
		html += "			<input type='text' id='exContent' class='form-control' placeholder=' 문제를 입력해주세요.' value='' name='examList["+(listCount)+"].exContent' />";
		html += "		</div>";
		for(var i = 0; i < 4; i++){
			html += "		<div class='card-body pb-0 pt-1'>";
			html += "			<div class='form-check custom-checkbox mb-3 checkbox-success' style='padding-left:0;'>";
			html += "				<div class='input-group'>";
			html += "					<span class='input-group-text' style='background-color:#ecf2f9; color:black;'>"+(i+1)+"번</span>";
			html += "					<div class='input-group-text' style='background-color:white;'>";
			html += "						<div class='form-check custom-checkbox'>";
			html += "							<input type='radio' data-num="+(cnt)+" class='form-check-input answerBtn' name='examList["+(listCount)+"].exSolution' value='"+(i+1)+"'>";
			html += "						</div>";
			html += "					</div>";
			html += "					<input type='text' class='form-control' placeholder='"+(i+1)+"번 보기' name='examList["+(listCount)+"].examSelectList["+i+"].exsContent'>";
			html += "				</div>";
			html += "			</div>";
			html += "		</div>";
		}
		html += "	</div>";
		html += "</div>";
		
		$("#questBody").append(html);
		
		var tableHtml = "";
			tableHtml += "<tr id='answerTr"+cnt+"'>";
			tableHtml += 	"<th scope='row' id='questionNumber' data-thNum=" + (cnt) + ">" + (cnt) + "번 </th>";
		for(var i = 1; i < 5; i++){
			tableHtml += 	"<td><button type='button' id='omr"+cnt+"_"+i+"' class='badge badge-circle badge-outline-dark ormBtn' style='background-color:white;'>" + i + "</button></td>";
		}
		tableHtml += "</tr>";			
		
		$("#answerTbody").append(tableHtml);
		
		cnt = cnt+1;
		listCount++;
				
		
		// 비교해야할 것 
		// 1. 1번 문제와 1번 omr 비교
		// 2. 1번 문제의 보기와 1번 omr의 보기 비교
		$(".answerBtn").on("click", function(e){
			console.log(e.target);

			let val = e.target.defaultValue;// 내가 클릭한 정답
			let num = e.target.dataset.num;	// 문제 번호
			
			let omrBtns = document.querySelectorAll("#answerTr"+num+" .ormBtn");
			for (var i = 0; i < omrBtns.length; i++) {
				omrBtns[i].style.backgroundColor = "white";  // 초기화
			}
			
			let omrBtn = document.querySelector("#omr"+num+"_"+val);
			omrBtn.style.backgroundColor = "black"; 
		});
	});
	// 항목제거
	questMinusBtn.on("click",()=>{
		const quests = document.querySelectorAll("[id*=questRow]");
		if(!quests.length){
			alert("제거할 항목이 존재하지 않습니다.");
			return;
		}
		console.log("quests?",quests);
		const questBody = quests[0].parentElement;
		questBody.removeChild(quests[quests.length -1]);

		const qNumbers = document.querySelectorAll("[id*=answerTr]");
		console.log("qNumbers?", qNumbers);

		
		const answerBody = qNumbers[0].parentElement;
		console.log("answerBody?", answerBody);
		
		answerBody.removeChild(qNumbers[qNumbers.length -1]);
	
		cnt--;
		listCount--;
	});
	

	const insertExamForm = $("#insertExamForm");
	const insertBtn = $("#insertBtn");

// 	let examGubun = $("#examGubun").val();
// 	console.log("examGubun::", examGubun);
	
	/*
	insertBtn.on("click", function(e){
		
		if(examGubun == "시험 구분을 선택하세요."){
			alert("시험 구분을 선택해주세요!");
			
		}
		Swal.fire({
			title : '성공!', 
			html : '등록이 완료되었습니다.', 
			icon : 'success'
		}).then((result)=>{
			
			insertExamForm.submit();
		});
	});
	*/
	
	$("#insertExamForm").on("click", "#insertBtn", function(e){
		console.log("click");
		e.preventDefault();
		
		Swal.fire({
			  title: '등록!',
			  html : "시험을 등록하시겠습니까?",
			  icon: 'question',
			  showCancelButton: true,
			  confirmButtonText: 'Yes'
			}).then((result) => {
			  if (result.isConfirmed) {
			    Swal.fire({
			    	title : '성공!',
			      	html : '시험이 등록되었습니다.',
			      	icon : 'success',
			      	value : true
			    }).then((result) => {
			    	insertExamForm.submit();
			    });
			  } else {
				  Swal.fire({
					 title :'중단!',
					 html : '등록이 중단되었습니다.',
					 icon : 'error'
				  })
			  }
			});
		
	});
	
	
		
	
});
</script>