<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<style>
.textbox {
	display: block;
	margin-top: 10px;
}

th {
	border: 1px solid black;
	text-align: center;
}

td {
	border: 1px solid;
	text-align: center;
}
#NoSubTable th {
        text-align: center;
        position: sticky;
        top: 0px;
      }
#subTable th {
        text-align: center;
        position: sticky;
        top: 0px;
      }
#receiverBox {
	border: 1px solid #969090;
	border-radius: 10px;
	width: 100%;
	height: 100px;
	/* 스크롤 기능 추가 */
}
.receiverXBtn{
	cursor: pointer;
}
.receiver{
	margin-top: 1%;
}
</style>

<!-- 페이지 타이틀 -->
<div class="page-titles">
	<ol class="breadcrumb">
		<li><h5 class="bc-title">사용자 관리</h5></li>
		<li class="breadcrumb-item"><a href="#">
				<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path fill-rule="evenodd" clip-rule="evenodd" d="M8.79222 13.9396C12.1738 13.9396 15.0641 14.452 15.0641 16.4989C15.0641 18.5458 12.1931 19.0729 8.79222 19.0729C5.40972 19.0729 2.52039 18.5651 2.52039 16.5172C2.52039 14.4694 5.39047 13.9396 8.79222 13.9396Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
					<path fill-rule="evenodd" clip-rule="evenodd" d="M8.79223 11.0182C6.57206 11.0182 4.77173 9.21874 4.77173 6.99857C4.77173 4.7784 6.57206 2.97898 8.79223 2.97898C11.0115 2.97898 12.8118 4.7784 12.8118 6.99857C12.8201 9.21049 11.0326 11.0099 8.82064 11.0182H8.79223Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
					<path d="M15.1095 9.9748C16.5771 9.76855 17.7073 8.50905 17.7101 6.98464C17.7101 5.48222 16.6147 4.23555 15.1782 3.99997" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
					<path d="M17.0458 13.5045C18.4675 13.7163 19.4603 14.2149 19.4603 15.2416C19.4603 15.9483 18.9928 16.4067 18.2374 16.6936" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
				</svg>
				문자 </a>
		</li>
		<li class="breadcrumb-item active"><a href="/send/sms">문자 발송</a></li>
	</ol>
</div>
<div class="container-fluid">

	<div class="card">
		<div class="row">
			<div class="col-8">
				<div class="card-body" style="width: 100%;">
					<div class="row mb-4">
						<div style="margin-bottom: 1%;">
							<span style="font-size: 20px; color: #f96d00;">|</span>
							<span style="font-size: large; display: inline;"><strong>&nbsp;주소록</strong>&nbsp;&nbsp;&nbsp;
							<button type="button" class="btn light btn-light btn-xxs" id="wholePosition">전체</button> 
							<button type="button" class="btn light btn-light btn-xxs" id="proPosition">교수</button>
							<button type="button" class="btn light btn-light btn-xxs" id="stuPosition">학생</button>
							</span> 
							&nbsp;
							
						</div>
						<div class="table-responsive" style="height: 47vh; overflow: auto;">
							<table id="NoSubTable" class="table table-sm table-bordered table-hover">
								<thead>
									<tr class="table-active">
										<th>이름</th>
										<th>직책</th>
										<th>학과</th>
										<th>전화번호</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${telList}" var="tel">
										<tr class="user" data-user-id="${tel.userId}" >
											<td>${tel.nameKo}</td>
											<td id="positionType">${tel.type}</td>
											<td>${tel.major}</td>
											<td id="handPhone">${tel.phone}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>		
			</div>
			<div class="col-4 ps-0 pe-4">
				<div class="card-body" style="width: 100%;">
					<div class="row mb-4">
						<div class="ps-0 mb-2">
							<span style="font-size: 20px; color: #f96d00;">|</span>
							<span style="font-size: large; display: inline;"><strong>&nbsp;문자보내기</strong>&nbsp;&nbsp;&nbsp;</span> &nbsp;
						</div>
						<div class="tab-content" id="myTabContent" style="border: 1px solid #969090; border-radius: 10px;">
							<div class="tab-pane fade show active" id="Preview" role="tabpanel"
								aria-labelledby="home-tab">
								<div class="card-body px-0 pe-0"> 
									<ul>
										<li>
										<li>수신자 :</li>
										<div class="p-2" id="receiverBox" style="overflow-y: scroll;"></div>
								
										</li>
										<br>
										<li>내용 :</li>
										<li><textarea class="form-txtarea form-control" rows="5" id="comment" name="smsContent" placeholder="내용을 입력해 주세요." required></textarea></li>
									</ul>
									<br>
									<div class="d-flex justify-content-between">
										<input type="button" id="sendBtn" value="전송하기" class="btn light btn-primary" />
										<button type="button" class="btn btn-outline-primary" id="addBtn" style="margin-left:10px;">번호추가하기</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="card-body pt-0" style="margin-left:10px;margin-right:10px">
				<div class="row mb-4">
					<div style="margin-bottom: 1%;">
						<span style="font-size: 20px; color: #f96d00;">|</span>
						<span style="font-size: large; display: inline;"><strong>&nbsp;문자 발송 내역</strong>&nbsp;&nbsp;&nbsp;</span> &nbsp;
					</div>
					<div class="table-responsive" style="height: 40vh; overflow: auto;">
						<table id="subTable" class="table table-sm table-bordered table-hover">
							<thead>
								<tr class="table-active">
									<th scope="col-2">#</th>
									<th scope="col">교번/학번</th>
									<th scope="col">수신자</th>
									<th scope="col">연락처</th>
									<th scope="col">발신내용</th>
									<th scope="col">발신일자</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${smsList}" var="sms" varStatus="i">
									<tr>
										<td>${i.count}</td>
										<td>${sms.smsReciver}</td>
										<td>${sms.userName}</td>
										<td>${sms.phone}</td>
										<td>${sms.smsContent}</td>
										<td>${sms.smsDate}</td>
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


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function(){

	
	// function sendSMS(pageName) {
	// 	console.log("문자를 전송합니다.");
	// 	$("#smsForm").attr("action", pageName);
	// 	console.log("텍스트 :" + $('text').val());
	// 	$("#smsForm").submit();
	// }

	/* <!-- 전화번호 입력할 텍스트박스 계속 생기게하기.. -->  */

	/* var index = 0; // toList 배열 인덱스 초기값 설정
	function addTextBox(event) {
		// 이벤트의 기본 동작인 폼 제출 막기
		event.preventDefault();

		// 새로운 텍스트박스 생성
		var newTextBox = document.createElement('input');
		newTextBox.type = 'text';
		newTextBox.className = 'textbox form-control input-default';
		newTextBox.name = 'toList[' + index + ']';
		index++;

		var container = document.getElementById('textbox-container');
		container.appendChild(newTextBox);
	} */

	/* <!-- 날짜 내림차순으로 정렬을 하면서 차례대로 번호매기는것인데 테이블자체가 이상하고, cells[]에 있는 숫자는 테이블열이 바뀔때 마다 바뀐다.--> */

	const table = document.getElementById('subTable');
	const tbody = table.querySelector('tbody');
	const rows = tbody.querySelectorAll('tr');

	// rows를 발신일자 기준으로 내림차순 정렬
	const sortedRows = Array.from(rows)
		.sort((a, b) => {
			const aDate = new Date(a.cells[3].textContent);
			const bDate = new Date(b.cells[3].textContent);
			return bDate - aDate;
		});

	// 정렬된 rows를 tbody에 추가
	sortedRows.forEach((row, index) => {
		row.cells[0].textContent = index + 1; // 번호 셀에 값을 할당
		tbody.appendChild(row);
	});

	/* <!-- 학생,전체,교수 버튼눌렀을때 어떻게 할지 하는것... --> */

	const wholePositionBtn = document.getElementById("wholePosition");
	const proPositionBtn = document.getElementById("proPosition");
	const stuPositionBtn = document.getElementById("stuPosition");

	wholePositionBtn.addEventListener("click", function() {
		filterTable("전체");
	});

	proPositionBtn.addEventListener("click", function() {
		filterTable("교수");
	});

	stuPositionBtn.addEventListener("click", function() {
		filterTable("학생");
	});

	function filterTable(position) {
		const positionTypeCells = document.querySelectorAll("#positionType");
		const tableRows = document.querySelectorAll("#NoSubTable tbody tr");

		tableRows.forEach(row => {
			const positionCell = row.querySelector("#positionType");

			if (position === "전체") {
				row.style.display = "";
			} else if (positionCell.textContent === position) {
				row.style.display = "";
			} else {
				row.style.display = "none";
			}
		});
	}

	let selectUser = null;
	let cnt = 0;
	let toList = [];
	let user = {
		userId: "",
		phone: "",
		smsContent: ""
	};

	$(document).on("click", ".user", function(){
		if(selectUser){
			selectUser.css("background-color", "");
		}
		console.log("현재 사용자", $(this));
		selectUser = $(this);
		
		$(this).css("background-color", "lightblue");
	});

	// 수신자 추가하기
	$(document).on("click", "#addBtn", function(){
		if(toList.length > 0){
			const exists = toList.some((item) => item.userId === selectUser.attr("data-user-id"));
			console.log("동일 인물 추가 여부 확인: ", exists);
			if(exists){
// 				alert("이미 추가한 사람입니다.");
				Swal.fire({
				   title :  '중복 수신자',
				   html:  '이미 추가된 수신자 입니다.', 
				   icon : 'warning' 
				});
				return false;
			}
		}

		let userId = selectUser.data("userId");
		let str = "";
		if(cnt==0){
			str = `<a class="badge badge-rounded badge-info receiver">\${selectUser.find("td:eq(0)").text()}<span class="receiverXBtn" data-user-id="\${userId}">X</span></a>`;
			cnt += 1;
			user.userId = selectUser.attr("data-user-id");
			user.phone = selectUser.find("td:eq(3)").text();
			toList.push(user);
		} else if(cnt > 0) {
			str = ` <a class="badge badge-rounded badge-info receiver">\${selectUser.find("td:eq(0)").text()}<span class="receiverXBtn" data-user-id="\${userId}">X</span></a>`;
			cnt += 1;
			let newUser = Object.assign({}, user);
			newUser.userId = selectUser.attr("data-user-id");
			newUser.phone = selectUser.find("td:eq(3)").text();
			toList.push(newUser);
		}
		
		console.log("toList 목록", toList);
		$("#receiverBox").append(str);
	});

	// 문자 전송하기
	$(document).on("click", "#sendBtn", function(){
		
		if(toList.length == 0){
// 			alert("보낼 사람을 추가해주세요.");
			Swal.fire({
			   title :  '수신자 추가',
			   html:  '보낼 사람을 추가해 주세요.', 
			   icon : 'warning' 
			});
			return false;
		}

		if(!$("#comment").val()){
// 			alert("메세지 내용을 입력해주세요.");
			Swal.fire({
			   title :  '내용 입력',
			   html:  '메세지 내용을 입력해 주세요.', 
			   icon : 'warning' 
			});
			$("#comment").focus;
			return false;
		}

		for(i=0; i<toList.length; i++){
			toList[i].smsContent = $("#comment").val();
		}
		console.log("toList셋팅 확인", toList);

		$.ajax({
			type: "post",
			url: "/send/smsCool",
			contentType: "application/json",
			data: JSON.stringify(toList),
			success: function(res){
				console.log(res);
				const receiverBox = $("#receiverBox");
				const receivers = receiverBox.find("a");
				console.log("체크크크",receivers);
				receivers.remove();
				$("#subTable tbody tr").remove();
				$("#comment").val("");
				$.each(res, function(i, item){
					let str = `<tr>
							<td>\${i}</td>
							<td>\${item.smsReciver}
							<td>\${item.userName}</td>
							<td>\${item.phone}</td>
							<td>\${item.smsContent}</td>
							<td>\${item.smsDate}</td>
							</tr>`;
					$("#subTable tbody").append(str);
				});
				toList = [];
// 				alert("문자 전송이 완료되었습니다.");
				Swal.fire({
					   title :  '전송 완료',
					   html:  '문자 전송이 완료되었습니다.', 
					   icon : 'success' 
				});
			}
		});
	});

	// 추가한 수신자 삭제하기
	$(document).on("click", ".receiverXBtn", function(){
		console.log(">>>>", $(this).data("userId"));
		let userId = $(this).data("userId");
		for (let i = 0; i < toList.length; i++) {
			if (toList[i].userId == userId) {
				toList.splice(i, 1);
				i--; 
			}
		}

		console.log("toList 목록>>", toList);
		cnt--;
		$(this).parent().remove();
	});



});
</script>