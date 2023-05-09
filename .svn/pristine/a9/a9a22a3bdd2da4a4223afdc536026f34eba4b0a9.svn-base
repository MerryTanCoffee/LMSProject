<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
.fileImg {
  max-width: 120px;
  max-height: 100%;
}
img {
  max-width: 100%;
  max-height: 100%;
}
.chatbox .contacts_body.no-height {
  height: auto;
}

.user_img_msg {
    width: 40px;
    height: 40px;
    object-fit: cover;
    object-position: center 20%;
}
#all {
  font-family: 'Arial', sans-serif;
  font-size: 24px;
  font-weight: bold;
  color: #4a4a4a;
  text-align: center;
}
#emoticonBox {
	display: none;
	position: absolute;
  bottom: 0;
  right: 30.5rem;
	width: 300px;
	height: 300px;
	background-color: white;
	border: 1px solid #b5b0ad9d;
	z-index: 9999;
	box-shadow: 0 0 10px rgba(0,0,0,0.5);
}
.chatList {
	position: relative;
  transition: all 0.3s ease-in-out;
}
.chatList:hover {
	transform: translateX(5px);
  box-shadow: 0 0 10px rgba(0,0,0,0.5);
  background-color: #B0D4E5 ;
}
#infoTableChat td {
	user-select: none;
	cursor: pointer;
}
.emoImg {
	width: 40px;
	height: 40px;
	padding: 5px;
}
.emoImg:hover {
	border-radius: 5px;
	background-color: rgb(183, 183, 183);
	cursor: pointer;
}
#emoticonBoxList{
	text-align: center;
}
#emoSelect {
	display: none;
	position: absolute;
	bottom: 77px;
	opacity: 0.5;
	background-color: #b5b0ad9d;
	width: 100%;
	height: 100px;
	z-index: 2000;
}
#emoSelect img {
	opacity: 1 !important;
	z-index: 3000;
	position: absolute;
	top: 0;
	bottom: 0; 
	left: 0;
	right: 0; 
	margin: auto;
}
#emoSelectCancel {
	position: absolute;
	top: 0;
	right: 0;
	cursor: pointer;
}
#emoticon {
	cursor: pointer;
	font-size: 15px;
}
#DZ_W_Contacts_Body3 {
	background-image: url("/resources/images/chatimg/chat_bg01.png");
}
#inputChat::placeholder {
	font-size: 13px;
	padding: auto;
	margin: auto;
}

</style>

<!--**********************************
            Chat box start
        ***********************************-->
		<div class="chatbox">
			<div class="chatbox-close"></div>
			<div class="card" id="emoticonBox">
				<div class="card-header fs-4 py-2" style="background-color: yellow;">
					이모티콘
				</div>
				<div class="card-body p-2" id="emoticonBoxList">
					<c:forEach begin="1" step="1" end="36" var="i" varStatus="i">
					  <img src="${pageContext.request.contextPath}/resources/images/emoticon/small/${i.index}.png" class="emoImg" alt="" srcset="">
					</c:forEach>
				</div>
			</div>
			<div id="emoSelect">
				<span class="badge text-bg-dark fs-6 px-2 py-0" id="emoSelectCancel">X</span>
			</div>
			<div class="custom-tab-1">
				<ul class="nav nav-tabs">
					<li class="nav-item">
						<a class="nav-link" data-bs-toggle="tab" href="#notes">Notes</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" data-bs-toggle="tab" href="#alerts">알림</a>
					</li>
					<li class="nav-item">
						<a class="nav-link active" data-bs-toggle="tab" href="#chat">채팅</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane fade active show" id="chat" role="tabpanel">
						<div class="card mb-sm-3 mb-md-0 contacts_card dz-chat-user-box">
							<div class="card-header chat-list-header text-center">
								<div style="display: flex; justify-content: center; align-items: center; width: 100%;">
									<h3 class="mb-1" id="all"
										style="font-family: 'Arial', sans-serif; font-size: 24px; font-weight: bold; color: #4a4a4a; text-align: center;">
										채팅 목록</h3>
								</div>
							</div>
		
							<div class="card-body contacts_body p-0 dz-scroll auto-height" id="DZ_W_Contacts_Body"
								style="overflow-y: auto; max-height: 1000px;">
								<table class="table text-center full-width-table  auto-height" id="infoTableChat">
		
									<tbody id="tbody">
										<tr class="chatList">
											<td></td>
											<td></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
		
						<!-- 채팅대상 클릭시 채팅내용-->
						<div class="card chat dz-chat-history-box d-none">
							<div class="card-header chat-list-header text-center">
								<a href="#" class="dz-chat-history-back chatBack">
									<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px"
										height="18px" viewBox="0 0 24 24" version="1.1">
										<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
											<polygon points="0 0 24 0 24 24 0 24" />
											<rect fill="#000000" opacity="0.3"
												transform="translate(15.000000, 12.000000) scale(-1, 1) rotate(-90.000000) translate(-15.000000, -12.000000) "
												x="14" y="7" width="2" height="10" rx="1" />
											<path
												d="M3.7071045,15.7071045 C3.3165802,16.0976288 2.68341522,16.0976288 2.29289093,15.7071045 C1.90236664,15.3165802 1.90236664,14.6834152 2.29289093,14.2928909 L8.29289093,8.29289093 C8.67146987,7.914312 9.28105631,7.90106637 9.67572234,8.26284357 L15.6757223,13.7628436 C16.0828413,14.136036 16.1103443,14.7686034 15.7371519,15.1757223 C15.3639594,15.5828413 14.7313921,15.6103443 14.3242731,15.2371519 L9.03007346,10.3841355 L3.7071045,15.7071045 Z"
												fill="#000000" fill-rule="nonzero"
												transform="translate(9.000001, 11.999997) scale(-1, -1) rotate(90.000000) translate(-9.000001, -11.999997) " />
										</g>
									</svg>
								</a>
								<div>
									<h3 class="mb-1" id="content"></h3>
									<p style="margin-bottom: 0; display: inline; font-size: 13px;" id="memList"></p>
								</div>
								<div class="dropdown">
								</div>
							</div>
		
							<!-- 채팅내용-->
							<div class="card-body msg_card_body dz-scroll" id="DZ_W_Contacts_Body3">
								<!-- ////////////////////////////////  -->
								<!-- 채팅 받기 -->
								<div class="d-flex justify-content-start mb-4">
									<div class="msg_cotainer" id="other">
										<span class="msg_time"></span>
									</div>
									<div class="img_cont_msg">;
										<img id="otherProfile">
									</div>
								</div>
		
								<!-- ////////////////////////////////  -->
								<!-- 채팅주기 -->
								<div class="d-flex justify-content-end mb-4">
									<div class="msg_cotainer_send" id="mine">
										<span class="msg_time_send"></span>
									</div>
									<div class="img_cont_msg">;
										<img id="myProfile">
									</div>
								</div>
							</div>
							<!-- 채팅 내용 작성, 보내기 -->
							<div class="card-footer type_msg pt-0 pb-1 px-0">
								<div class="input-group">
									<div class="input-group-append p-1" style="border-right: 1px solid #b5b0ad9d;">
										<div class="d-flex justify-content-center mb-2 pt-1" id="emoDiv">
											<span id="emoticon">
												<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-emoji-smile" viewBox="0 0 16 16">
												<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
												<path d="M4.285 9.567a.5.5 0 0 1 .683.183A3.498 3.498 0 0 0 8 11.5a3.498 3.498 0 0 0 3.032-1.75.5.5 0 1 1 .866.5A4.498 4.498 0 0 1 8 12.5a4.498 4.498 0 0 1-3.898-2.25.5.5 0 0 1 .183-.683zM7 6.5C7 7.328 6.552 8 6 8s-1-.672-1-1.5S5.448 5 6 5s1 .672 1 1.5zm4 0c0 .828-.448 1.5-1 1.5s-1-.672-1-1.5S9.448 5 10 5s1 .672 1 1.5z"/>
												</svg>
											</span>
										</div>
										<div class="input-group-append">
											<label for="inputFileChat" class="input-group-text">파일 <i class="fas fa-file"></i></label>
											<input type="file" id="inputFileChat" style="display: none;">
										</div>
										<button onclick="send()" type="button" class="btn btn-primary" style="display:none"></button>
									</div>
									<textarea id="inputChat" class="form-control ms-2" placeholder="메세지 입력 후 엔터"></textarea>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<script type=text/javascript>
	var ws;
	var studyCode;
	var profile;

	var userId = '${userInfo.userId}';

	// 소켓 열기
	function openWebSocket(p_studyCode) {
		studyCode = p_studyCode.getAttribute('data-code');
		console.log("studyCode>>", studyCode);
		
			ws = new WebSocket(`ws://localhost/studyChat.do/\${studyCode}`);

			ws.onopen = function (event) {
				console.log("웹소켓 열림 >> ",event)
					if (event.data === undefined) {
							return;
					}
			};
	}   


	// 소켓 닫기
	$(document).on("click", ".chatBack", function(){
		ws.close();
		console.log("클라: 소켓 닫기");
		
		if(imgSelectFlag){
			imgSelectFlag = false;
			$("#emoSelect img").remove();
			$("#emoSelect").toggle();
		}
		if(emoticonBoxFlag){
			$("#emoticonBox").toggle();
			emoticonBoxFlag = false;
		}
		console.log("imgSelectFlag:", imgSelectFlag);
		console.log("emoticonBoxFlag:", emoticonBoxFlag);
	});


	//채팅 내용을 보내면 서버로 그 내용을 보내줌.
	function send() {
		
		var inputChat = document.getElementById('inputChat');
			var message = inputChat.value;
			var stuId =  '${userInfo.userId}';
			var stuName = '${sessionScope.userInfo.studentVO.stuNameKo}';
			
			if(largeEmoticon){
				message = `<img src=\${largeEmoticon} alt=""><br>\${message}`;
			}
					inputChat.value = '';
					// 프로필 이미지 가져오기 (함수 써서 가공함)
					fetchProfileImage(stuId).then(function(imgSrc) {
							// 이미지 URL을 메시지에 포함
						var socketMsg = message + "," + stuName + "," + imgSrc;
				
					// 메세지 입력하면 insert하는 ajax
					if(message != null) {
						$.ajax({
						type:'post',
						url:'/chat/chatting',
						data:{
							stuId : stuId,
									chatCont : message,
									studyCode : studyCode,
									chatDate : new Date().toTimeString().split(' ')[0]
						},
						success:function(){
								let msg = JSON.stringify(socketMsg);
							let mmsg = msg.substring(1,msg.length-1);
							console.log("소켓에 보낼 메세지:", mmsg)
								ws.send(mmsg);	// websocket handler로 전송(서버로 전송)
						}
					})
				}
				});
					
					ws.onmessage = function(event){
						if(event.data == "소켓 연결 종료"){
							console.log(event.data);
							return false;
						}

						if(event.data == "me"){
							console.log("나한테 오냐?");
							return false;
						}
							console.log("onmessage", event.data);
							
								
							var sender = event.data.split(' : ')[0];
							var msg = event.data.split(' : ')[1];	
							var imgSrc = event.data.split(' : ')[2];
							
					let str = "";
					let now = new Date(); // 현재 날짜와 시간
					let year = now.getFullYear(); // 년도
					let month = now.getMonth() + 1; // 월 (0부터 시작하므로 1을 더해줌)
					let day = now.getDate(); // 일
					let hours = now.getHours(); // 시간
					let minutes = now.getMinutes(); // 분
					let seconds = now.getSeconds(); // 초

					// 월, 일, 시간, 분, 초가 1자리 수일 경우 0을 앞에 붙여 2자리로 만듦
					month = month < 10 ? '0' + month : month;
					day = day < 10 ? '0' + day : day;
					hours = hours < 10 ? '0' + hours : hours;
					minutes = minutes < 10 ? '0' + minutes : minutes;
					seconds = seconds < 10 ? '0' + seconds : seconds;

					// 오전/오후 구분
					let amPm = hours < 12 ? '오전' : '오후';

					// 출력 문자열 생성
					let date = year + '-' + month + '-' + day;
					let time = amPm + ' ' +hours + ':' + minutes;

						// 채팅 내용을 화면에 뿌려줌
							if (sender === '<나>') {
									str += '<div class="d-flex justify-content-end mb-4 text-center">';
									str += '<div class="msg_cotainer_send" id="mine">';
									str += `<div><span>\${msg}</span></div>`;
									str += `<div class="text-muted small mt-2" style="text-align: end; line-height: 1;"><span>\${date}</span><br><span>\${time}</sapn></div>`;
									str += '</div>';
									str += `<div class="img_cont_msg"><img src=\${imgSrc} class="rounded-circle user_img_msg"><span>나</span></div>`;
									str += '</div>';
							} else {
									str += '<div class="d-flex justify-content-start mb-4 text-center">';
									str += `<div class="img_cont_msg"><img src=\${imgSrc} class="rounded-circle user_img_msg"><span style="white-space:nowrap;">\${sender}</span></div>`;
									str += '<div class="msg_cotainer" style="margin-left: 1rem; text-align:left" id="other">';
									str += `<div><span>\${msg}</span></div>`;
									str += `<div class="text-dark small mt-2" style="text-align: start; line-height: 1;"><span>\${date}</span><br><span>\${time}</sapn></div>`;
									str += '</div>';
									str += '</div>';
							}
							$("#DZ_W_Contacts_Body3").append(str);
							scrollToBottom();
						}
	}   

		// 스크롤 아래로
	function scrollToBottom() {
			var chatHistory = document.getElementById("DZ_W_Contacts_Body3");
			chatHistory.scrollTop = chatHistory.scrollHeight;
	}
				
			
	//엔터키 누르면 채팅 입력
	document.getElementById("inputChat").addEventListener("keydown", function(event) {
			if (event.key === "Enter") {

				if(($("#inputChat").val() == null || $("#inputChat").val() == "") && !imgSelectFlag){
					return false;
				}
				if(imgSelectFlag){
					imgSelectFlag = false;
					$("#emoSelect img").remove();
					$("#emoSelect").toggle();
				}
				send();
				event.preventDefault();
			}
	});

		// stuId를 가지고 프로필 이미지 경로를 가져오는 함수!!
		function fetchProfileImage(stuId) {
				return $.ajax({
						type: "post",
						url: "/chat/chatMemProfile",
						dataType: "json",
							data: {userId : stuId,	userType : '${userInfo.userType}'},
				}).then(function(profileRes) {
					console.log("프로필 경로 가져오기 확인", profileRes);
					let imgSrc = null;
					if(!profileRes["profile"]) {
						imgSrc = `${pageContext.request.contextPath}/resources/images/profile.png`;
					} else {
								imgSrc = `${pageContext.request.contextPath}/resources/images/profile\${profileRes.profile.profilePath}\${profileRes.profile.profileName}`;
					}
						return imgSrc;
				});
		}

	// 채팅 리스트 가져오는 함수
	$(function() {
			var obj = {
				userId : '${userInfo.userId}'
			}
			
			// 채팅(스터디룸) 리스트 불러오는 ajax
			$.ajax({
				type :"post",
				url : "/chat/list",
				dataType : "json",
				data: obj,
				success: function (res) {
						$("#infoTableChat > tbody").empty();
						if (res.length > 0) {
								$.each(res, function (index, item) {
										index = index + 1;
										let str = "<tr class='chatList'>";

										// studyDate 값을 Date 객체로 변환
										let date = new Date(item.studyDate);

										// 년월일만 포맷하여 사용
										let formattedDate = date.getFullYear() + '-' + (date.getMonth() + 1).toString().padStart(2, '0') + '-' + date.getDate().toString().padStart(2, '0');

										str += `<td colspan='2' class='siGubun text-start' id='chatDetail' data-id="\${item.stuId}" data-code="\${item.studyCode}" data-title="\${item.studyTitle}" onclick="openWebSocket(this)">`;
										str += `<strong>스터디명 : \${item.studyTitle}</strong><br><small>스터디 개설일 : <p style="margin-bottom: 0; display: inline;">\${formattedDate}</p></small>`;
										str += `</td>`;
										str += "</tr>"
										$("#infoTableChat > tbody").append(str);
								});
						}
				},
			});
			// 불러온 리스트를 화면에 뿌려줌
			$("#infoTableChat > tbody").on("click", "#chatDetail", function(){
				
						$(".contacts_card.dz-chat-user-box").addClass("d-none");
						// Display the chat content area
						$(".card.chat.dz-chat-history-box").removeClass("d-none");
				studyCode = $(this).data("code");
				const studyTitle = $(this).data("title");
				
				
						$("h3#content").text(studyTitle);
					
				const obj = {
					'studyCode' : studyCode
				}
				
				// 채팅방 하나의 내용을 가져옴
				$.ajax({
						type: "post",
						url: "/chat/detail",
						dataType: "json",
						data: obj,
						success: function(res) {
								$("#DZ_W_Contacts_Body3").html("");
								let str = "";
								let cnt = 0;

								if (res.length > 0) {
										$.each(res, function(index, item) {
												const stuId = `\${item.stuId}`;
												const myId =  ${userInfo.userId};

												const dateObj = new Date(item.chatDate);
												const year = dateObj.getFullYear();
												const month = String(dateObj.getMonth() + 1).padStart(2, '0');
												const date = String(dateObj.getDate()).padStart(2, '0');
												const hour = String(dateObj.getHours()).padStart(2, '0');
												const minute = String(dateObj.getMinutes()).padStart(2, '0');
												const second = String(dateObj.getSeconds()).padStart(2, '0');
												const meridiem = hour < 12 ? '오전' : '오후';

												const dateFormatted = `\${year}-\${month}-\${date}`;
												const timeFormatted = `\${meridiem} \${hour}:\${minute}:\${second}`;
												
												$.ajax({
														type: "post",
														url: "/chat/chatMemProfile",
														dataType: "json",
														data: {userId : stuId,	userType : '${userInfo.userType}'},
														async:false, // 일시적 해결책, 동기
														success: function(profileRes) {
										cnt++;
										let imgSrc;
										if(profileRes && profileRes["profile"]) {
											imgSrc =  `${pageContext.request.contextPath}/resources/images/profile\${profileRes.profile.profilePath}\${profileRes.profile.profileName}`;
										} else {
											imgSrc =  `${pageContext.request.contextPath}/resources/images/profile.png`;
										}
																
																if (myId == stuId) {
																		str += '<div class="d-flex justify-content-end mb-4 text-center">';
																		str += '<div class="msg_cotainer_send" id="mine" style="margin-left: 1rem; text-align:right">';
																		str += `<div>\${item.chatCont}</div>`;
																		str += `<div class="text-muted small mt-2" style="text-align: end; line-height: 1;">\${dateFormatted}<br>\${timeFormatted}</div>`;
																		str += '</div>';
																		str += '<div class="img_cont_msg">';
																		str += `<img src=\${imgSrc} class="rounded-circle user_img_msg">`;
																		str += '<span>나</span></div>';
																		str += '</div>';
																} else {
																		str += '<div class="d-flex justify-content-start mb-4 text-center">';
																		str += '<div class="img_cont_msg">';
																		str += `<img src=\${imgSrc} class="rounded-circle user_img_msg"><span style="white-space:nowrap;">\${item.stuNameKo}</span>`;
																		str += '</div>';
																		str += '<div class="msg_cotainer" id="other" style="margin-left: 1rem; text-align:left;">';
																		str += `<div>\${item.chatCont}</div>`;
																		str += `<div class="text-dark small mt-2" style="text-align: start; line-height: 1;">\${dateFormatted}<br>\${timeFormatted}</div>`;
																		str += '</div>';
																		str += '</div>';
																}
										if(cnt == res.length){
											
																	if(str!=""){
																	$("#DZ_W_Contacts_Body3").append(str);
														}
										}
														},
													
												});
										});
								}
								
								setTimeout(function() {
										$("#DZ_W_Contacts_Body3").scrollTop($("#DZ_W_Contacts_Body3")[0].scrollHeight);
								}, 300);
						},
				});
				
			// 스터디룸에 포함된 학생 목록을 가져오는 ajax
			$.ajax({
				type :"post",
				url : "/chat/chatMember",
				dataType : "json",
				data: obj,
				success: function (res) {
					let str = "";
						if (res.length > 0) {
										$.each(res, function(index, item) {
												str += `  \${item.stuNameKo}`;
										});
								}	
						$("#memList").text(str);
				},
			});		
			
		});
		
		//  파일 드래그 앤 드롭 업로드
		var dropZone = $('#DZ_W_Contacts_Body3');
		var fileInput = $('<input type="file" multiple="multiple" accept="image/*" style="display:none;">').appendTo(dropZone);

		dropZone.on('dragover', function() {
			dropZone.css('color', '#000');
			return false;
		});

		dropZone.on('dragleave', function() {
			dropZone.css('color', '#ccc');
			return false;
		});

		dropZone.on('drop', function(e) {
			e.preventDefault();
			dropZone.css('color', '#ccc');

			var files = e.originalEvent.dataTransfer.files;
			fileInput[0].files = files;
			console.log("드롭다운 파일 정보>>", files);
			uploadFiles(files);
		});

		function uploadFiles(files) {
			var formData = new FormData();
			for (var i = 0; i < files.length; i++) {
				formData.append('file', files[i]);
			}
			var str = "";
			var stuId = '${userInfo.userId}';

			$.ajax({
				type : "post",
				url : "/chat/uploadFile",
				data : formData,
				dataType : "text",
				processData : false,
				contentType : false,
				success : function(data){
					//alert(data);
					console.log("data!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",data)
					if(checkImageType(data)) { // 이미지이면 이미지 태그를 이용한 출력형태
						str += "<div>";
						str += "<a href = '/chat/displayFile?fileName="+ data + "'>";
						str += "<img class='fileImg' src = '/chat/displayFile?fileName=" + data+ "'/>";
						str += "</a>";
						str += "</div>";
						$.ajax({
								type:'post',
								url:'/chat/chatting',
								data:{
									stuId : stuId,
										studyCode : studyCode,
									chatCont:"<a href = '/chat/displayFile?fileName="+ data + "' target='_blank' ><img class='fileImg' src = '/chat/displayFile?fileName=" + data + "'/></a>"
								},
								success:function(){
									console.log("이미지 저장 완료");
								}
							})
					} else { // 파일이면 파일명에 대한 링크로만 출력
						str += "<div>";
						str += "<a href ='/chat/displayFile?fileName="+data+"'>" + data + "</a>";
						str += "</div>";
						console.log("file str", str)
						$.ajax({
								type:'post',
								url:'/chat/chatting',
								data:{
									stuId : stuId,
										studyCode : studyCode,
									chatCont : "<a href ='/chat/displayFile?fileName="+data+"'>" + data + "</a>"
								},
								success:function(){
									console.log("파일 저장 완료");
								}
							})
					}
					fetchProfileImage(stuId).then(function(imgSrc) {
									// 이미지 URL을 메시지에 포함
							var stuName = '${sessionScope.userInfo.studentVO.stuNameKo}';
							var socketMsg = str + "," + stuName + "," + imgSrc;
						// 메세지 입력하면 insert하는 ajax
								if(str != null) {
									
								let msg = JSON.stringify(socketMsg);
								let mmsg = msg.substring(1,msg.length-1);
								console.log("웹소켓로 전송할 메세지", mmsg);
								ws.send(mmsg);	// websocket handler로 전송(서버로 전송)
							
								setTimeout(function() {
										$("#DZ_W_Contacts_Body3").scrollTop($("#DZ_W_Contacts_Body3")[0].scrollHeight);
								}, 300);
								}
								
							});
					
				}
			});
		}

	});


	// var inputFileChat = $("#inputFileChat");

	// 파일 업데이트
	$("#inputFileChat").on("input", function(event) {
		console.log("change event,,");
		
		var files = event.target.files;
		var file = files[0];
		var str = "";
		var stuId = '${userInfo.userId}';
		
			
			var formData = new FormData();
			formData.append("file", file);
			
			$.ajax({
				type : "post",
				url : "/chat/uploadFile",
				data : formData,
				dataType : "text",
				processData : false,
				contentType : false,
				success : function(data){
					//alert(data);
					console.log("data!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",data)
					if(checkImageType(data)) { // 이미지이면 이미지 태그를 이용한 출력형태
						str += "<div>";
						str += "<a href = '/chat/displayFile?fileName="+ data + "'>";
						str += "<img class='fileImg' src = '/chat/displayFile?fileName=" + data+ "'/>";
						str += "</a>";
						str += "</div>";
						$.ajax({
								type:'post',
								url:'/chat/chatting',
								data:{
									stuId : stuId,
										studyCode : studyCode,
									chatCont:"<a href = '/chat/displayFile?fileName="+ data + "' target='_blank' ><img class='fileImg' src = '/chat/displayFile?fileName=" + data + "'/></a>"
								},
								success:function(){
									console.log("이미지 저장 완료");
								}
							})
					} else { // 파일이면 파일명에 대한 링크로만 출력
						str += "<div>";
						str += "<a href ='/chat/displayFile?fileName="+data+"'>" + data + "</a>";
						str += "</div>";
						console.log("file str", str)
						$.ajax({
								type:'post',
								url:'/chat/chatting',
								data:{
									stuId : stuId,
										studyCode : studyCode,
									chatCont : "<a href ='/chat/displayFile?fileName="+data+"'>" + data + "</a>"
								},
								success:function(){
									console.log("파일 저장 완료");
								}
							})
					}
					fetchProfileImage(stuId).then(function(imgSrc) {
									// 이미지 URL을 메시지에 포함
							var stuName = '${sessionScope.userInfo.studentVO.stuNameKo}';
							var socketMsg = str + "," + stuName + "," + imgSrc;
						// 메세지 입력하면 insert하는 ajax
								console.log("str 타입", typeof(str));
								if(str != null) {
									
								let msg = JSON.stringify(socketMsg);
								let mmsg = msg.substring(1,msg.length-1);
								console.log("웹소켓로 전송할 메세지", mmsg);
									ws.send(mmsg);	// websocket handler로 전송(서버로 전송)
							
								setTimeout(function() {
										$("#DZ_W_Contacts_Body3").scrollTop($("#DZ_W_Contacts_Body3")[0].scrollHeight);
								}, 300);
								}
								
							});
					
				}
			});
			
	});

	// 파일 데이터 검증
	function getOriginalName(fileName){
		if(checkImageType(fileName)){
			return;
		}		
		var idx = fileName.indexOf("_") + 1;
		console.log("fileName>>>", fileName.substr(idx));
		return fileName.substr(idx);
	}

	function checkImageType(fileName){
		var pattern = /jpg|gif|png|jpeg/i;
		return fileName.match(pattern); // 패턴과 일치하면 true (너 이미지 맞구나?)
	}

	let emoticonBoxFlag = false;
	// 이모티콘 박스 열기
	$(document).on("click", "#emoticon", function(){
		console.log("이모티콘 박스 클릭");
		
		if(!emoticonBoxFlag){
			emoticonBoxFlag = true;
			$("#emoticonBox").toggle();
		} else if(emoticonBoxFlag){
			emoticonBoxFlag = false;
			$("#emoticonBox").toggle();
		}
		console.log("imgSelectFlag:", imgSelectFlag);
		console.log("emoticonBoxFlag:", emoticonBoxFlag);
	});

	let imgSelectFlag = false;
	let largeEmoticon = null;

	$(document).on("click", ".emoImg", function(){
		console.log("이모티콘 경로>>", $(this).attr("src"));
		if(!imgSelectFlag){	// 이모티콘 선택
			$("#emoSelect").toggle();
			imgSelectFlag = true;
		}else if(imgSelectFlag){ // 이미 선택한 뒤라서 이전 이모티콘 제거
			$("#emoSelect img").remove();
		}
		
		isImgSelect = $(this);
		largeEmoticon = $(this).attr("src").replace("small", "large");
		console.log("바뀐 이모티콘 경로>>", largeEmoticon);

		let img = $('<img>'); // 새로운 img 태그 생성
		img.attr('src', largeEmoticon); // img 태그에 src 속성 추가
		img.appendTo($("#emoSelect")); // img 태그를 요소에 추가

		console.log("imgSelectFlag:", imgSelectFlag);
		console.log("emoticonBoxFlag:", emoticonBoxFlag);
	});

	// 이모티콘 X버튼
	$(document).on("click", "#emoSelectCancel", function(){
		imgSelectFlag = false;
		$("#emoSelect img").remove();
		$("#emoSelect").toggle();
		console.log("imgSelectFlag:", imgSelectFlag);
		console.log("emoticonBoxFlag:", emoticonBoxFlag);
	});

	$(document).on("click", ".chatbox-close", function(){

		if(imgSelectFlag){
			imgSelectFlag = false;
			$("#emoSelect img").remove();
			$("#emoSelect").toggle();
		}
		if(emoticonBoxFlag){
			$("#emoticonBox").toggle();
			emoticonBoxFlag = false;
		}
		console.log("imgSelectFlag:", imgSelectFlag);
		console.log("emoticonBoxFlag:", emoticonBoxFlag);
	});
	</script>


