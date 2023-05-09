<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- ===================[fullCalendar 6.1.4 CDN]===================== -->
<!--  fullCalendar 6.1.4버전 CDN -->
<script
	src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.4/index.global.min.js"></script>
<!-- fullCalendar 6.1.4버전 언어 설정 -->
<script src="/resources/fullcalendar/ko.global.min.js"></script>
<!-- ===================[fullCalendar 6.4.1 CDN]===================== -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<title>schedule</title>

<script>
	(function() {
		$(function() {
			var request = $.ajax({
				url : "/schedule/list",
				type : "post",
				dataType : 'json',
			/* success : function(data){

			} */
			});
			request.fail(function(jqXHR, textStatus) {
// 				alert("오류발생!! : " + textStatus);
				Swal.fire({
				   title :  '에러 발생', 
				   html:  textStatus, 
				   icon : 'error' 
				});
			});

			request.done(function(data) {

						console.log("ㅁㅁㅁㅁ0", data);

						var modalElement = document
								.getElementById('calendarModal')
						var modal = new bootstrap.Modal(modalElement);
						//룸코드..추가해보자
						var id = $("#calNo").val();
						var title = $("#calendar_title"); //일정 제목
						var content = $("#calendar_content"); //일정 내용
						var textColor = $("#textColor"); // 글자색상
						var barColor = $("#barColor"); // 배경색상

						var startTime = $("#startTime"); //시작시간
						var endTime = $("#endTime"); //종료시간
						var start = $("#calendar_start_date");
						var end = $("#calendar_start_date");

						var saveBtn = $("#addCalendar");
						var closeBtn = $("#closeBtn");
						var modalCloseBtn = $("#modalClose");
						var deleteBtn = $("#delCalendar");
						var flag = false;

						//saveBtn 시작//////////////////////////////////////////
						saveBtn.on("click",function() {
								console.log("flag == ", flag);
								var title = $("#calendar_title");
								//memo라서 헷갈린당..
								var content = $("#calendar_content");
								//color을 안 넣어줬었지 이건 내가 처리해야댐
								var textColor = $("#textColor"); // 글자색상
								var barColor = $("#barColor"); // 배경색상

								var startTime = $("#startTime");
								var endTime = $("#endTime");
								//allDay 생겼네?
								var allDay = $("#allDay");
								var start = $("#calendar_start_date");
								var end = $("#calendar_end_date");

								var saveBtn = $("#addCalendar");
								var closeBtn = $("#closeBtn");
								var modalCloseBtn = $("#modalClose");
								var deleteBtn = $("#delCalendar");

								//일정등록
								if (flag == true) {
									titleInput = title.val();
									contentInput = content.val();
									console.log("allDay체크 ::",
											allDay.val());

									startTimeInput = startTime
											.val();
									endTimeInput = endTime.val();
// 									alert("startTimeInput : " + startTimeInput + ", endTimeInput : " + endTimeInput);

									startInput = document
											.getElementById('calendar_start_date').value;
									endInput = document
											.getElementById('calendar_end_date').value;

									barColorInput = barColor.val(); //색추가

									console.log("startInput : "
											+ startInput);

									console.log("title : "
											+ titleInput
											+ ", content : "
											+ contentInput
											+ "startDate : "
											+ startInput);

									// value="T" 체크박스설정임...입력값을 받아와서 디비에 저장
									/*                   if(allDay.val() == 'T'){ //일정이 하루종일인 경우
									                     $.ajax({
									                        type : "POST",
									                        url : "/calendar/register",
									                        data :{
									                           'title' : titleInput,
									                           'content' : contentInput,
									                           'startDate' : startInput + "T" + "00:00:00",
									                           'endDate ' : startInput + "T" + "24:00:00"
									                        },
									                        success : function(res){
									                           alert("일정이 추가되었습니다.");
									                           location.reload();
									                              if(title == null || title == ""){
									                                 alert("일정의 제목을 입력하세요.");
									                              }
									                              if(content == null || content == ""){
									                                 alert("일정의 제목을 입력하세요.");
									                              }
									                              if(new Date(endInput) - new Date(startInput) < 0){
									                                 alert("종료일이 시작일보다 먼저입니다.")
									                              }
									                        }
									                     });
									                  } */
									$.ajax({
											type : "POST",
											url : "/schedule/register",
											data : {
												'usTitle' : titleInput,
												'usContent' : contentInput,
												'usSdate' : startInput
														+ "T"
														+ startTimeInput,
												'usEdate' : endInput
														+ "T"
														+ endTimeInput,
												'usBarColor' : barColorInput
											//색추가
											},
												success : function(res) {
// 													alert("일정이 추가되었습니다.");
													Swal.fire({
													   title : '일정 추가 성공', 
													   html:  '일정이 추가 되었습니다.', 
													   icon : 'success' 
													});
													location.reload();
													//룸코드는 이런거 없어도 되지 않을까 강제로 넣는건데.....
													if (title == null
															|| title == "") {
// 														alert("일정의 제목을 입력하세요.");
														Swal.fire({
														   title : '제목 입력', 
														   html:  '등록할 일정의 제목을 입력해 주세요.', 
														   icon : 'warning' 
														});
													}
													if (content == null
															|| content == "") {
// 														alert("일정의 내용을 입력하세요");
														Swal.fire({
														   title : '내용 입력', 
														   html:  '등록할 일정의 내용을 입력해 주세요.', 
														   icon : 'warning' 
														});
													}
													if (new Date(endInput)- new Date(startInput) < 0) {
// 														alert("종료일이 시작일보다 먼저입니다.");
														Swal.fire({
														   title : '시간 입력 경고', 
														   html:  '일정 종료일이 시작일보다 먼저입니다.', 
														   icon : 'warning' 
														});
													}
												}
											});
									$("#calendar_content").val('');
									$("#calendar_start_date").val(
											'');
									$("#calendar_end_date").val('');
									$("#barColor").val(''); // 색추가
									modal.hide();
									//깜빡
									location.reload();

								} else {
									id = $("#calNo").val();
									title = $("#calendar_title")
											.val();
									content = $("#calendar_content")
											.val();
									startDate = $(
											"#calendar_start_date")
											.val();
									endDate = $(
											"#calendar_end_date")
											.val();
									startTime = $("#startTime").val();
									endTime = $("#endTime").val();
									barColor = $("#barColor").val(); //색추가

									console.log(">> 수정 : " + id
											+ ", " + title + ", "
											+ content + ", "
											+ startDate + ", "
											+ startTime);
									var param = {
										'usNo' : id,
										'usTitle' : title,
										'usContent' : content,
										'usSdate' : startDate + "T"
												+ startTime,
										'usEdate' : endDate + "T"
												+ endTime,
										'usBarColor' : barColor
									//색 추가함
									}
									$.ajax({
										type : "post",
										url : "/schedule/update",
										data : param,
										dataType : "json",
										success : function(req) {
											console.log(reg);
										}
									}); //ajax end
// 									alert("수정 완료");
									Swal.fire({
									   title : '수정 완료', 
									   html:  '일정 수정이 완료 되었습니다.', 
									   icon : 'warning' 
									}).then((result) => {
										modal.hide();
										location.reload();
									});
								}
						});
						//saveBtn끝///////////////////////////////////////

						//deleteBtn 시작/////////////////////////////////////
						deleteBtn.on("click", function() {
							id = $("#calNo").val();
							var param = {
								'usNo' : id,
							}
							/*
							if (confirm("삭제할꺼야?")) {
								$.ajax({
									type : "post",
									url : "/schedule/remove",
									data : param,
									dataType : "json",
									success : function(req) {
										console.log("reg : " + req);
									}
								});
								alert(title + "삭제되었어")
								//  event.remove(); // 캘린더 화면에서 해당 일정 삭제
								modal.hide();
								location.reload();
							} // if(confirm) end
							*/
							Swal.fire({
								 title: '일정 삭제',
								 html : '해당 일정을 삭제 하시겠습니까?',
								 icon: 'question',
								 showCancelButton: true,
								 confirmButtonText: 'Yes'
								}).then((result) => { 
								if (result.isConfirmed) {
									$.ajax({
										type : "post",
										url : "/schedule/remove",
										data : param,
										dataType : "json",
										success : function(req) {
											console.log("reg : " + req);
										}
									});
									Swal.fire({
										title : '삭제 성공',
									 	html:  '일정이 삭제 되었습니다.',
									 	icon : 'success'
								    }).then((result) => {
								    	modal.hide();
										location.reload();
								    });
								} else { 
								    Swal.fire({
									title :  '삭제 취소', 
									 html:  '일정 삭제를 취소하셨습니다.',
									 icon : 'error'
								    });
								}
							});
						});
						//deleteBtn 끝////////////////////////////////////////

						//closeBtn 시작//////////////////////////////////////////

						// modal [x] 버튼
						closeBtn.on("click", function() {
							//modal 창 내용 초기화
							$("#calendar_title").val('');
							$("#calendar_content").val('');
							$("#calendar_start_date").val('');
							$("#calendar_end_date").val('');
							calendar.unselect();
							console.log("x버튼 클릭")
							modal.hide();
						});
						//closeBtn 끝//////////////////////////////////////////

						//modalClose 시작/////////////////////////////////////
						//modal [취소] 버튼
						modalCloseBtn.on("click", function() {
							//modal 창 초기화
							$("#calendar_title").val('');
							$("#calendar_content").val('');
							$("#calendar_start_date").val('');
							$("#calendar_end_date").val('');
							$("#barColor").val(''); //색깔
							calendar.unselect();
							console.log("취소버튼 클릭");
							modal.hide();
						});
						////modalClose 끝/////////////////////////////////////

						//log로 controller에서 넘어온 데이터 정보
						console.log("data가 잘 넘어오는지.." + JSON.stringify(data));
						var calendarElement = $('#calendar')[0];

						/////////////////////////////////////////////////
						// full-calendar 생성////////////////////////
						var calendar = new FullCalendar.Calendar(
								calendarElement,
								{
									//              height:700px,
									//              width:800px,
									expandRows : true, //높이 맞게 재설정
									//헤더에 표시할 툴바
									headerToolbar : {
										left : 'prev,next,today',
										center : 'title',
										right : 'dayGridMonth, timeGridWeek, timeGridDay, listWeek'
									},
									initialView : 'dayGridMonth', // 초기 로드 화면
									navLinks : true, // 날짜 선택시 daysk week 캘린더로
									editable : true, //수정 가능 여부
									selectable : true, //달력 일자 드래그
									nowIndicator : true, //현재 시간 마크
									dayMaxEvents : true, //이벤트가 오버되면 높이 제한(+몇 개)
									locale : 'ko', //한국어 설정

									//select 시작
									select : function(info) { //캘린더에서 드래그이벤트
										flag = true;
										console.log("info1 >>", info);
										//이게 없으면 
										$("#deleteCalendar").hide(); //'삭제' 버튼이 남아있는 것을 숨김
										modal.show();

										console.log("title : ", title);
										//이부분이 if(title == null || title == ""){ 였음
										//사실상 모양만 추가로 한다는 것임
										if (flag = true) {
											$("#addCalendar").text("추가");
										}

										$('#calendarModal').modal();
										var saveBtn = $("#addCalendar");

										$("#calendar_start_date").val(
												info.startStr); //startStr은 라이브러리에있는걸까
										$("#calendar_end_date")
												.val(info.endStr);

										calendar.unselect() //일정 선택 취소 시 실행될 코드 작성
									},
									//select 끝
									//eventClick 시작
									eventClick : function(info) { //등록 일정 클릭했을때
										console.log("info2 >>", info.event);
										console.log(calendar.getEvents());//캘린더 안의 데이터 확인용
										//$("#calNo").val(info.event.extendedProps.no); 수정함
										$("#calNo").val(info.event.id); //이렇게 쓰는게 아니고 원체없는 값이면 extendedProps를 꼭 써줘야해

										//이부분이 머더라.. 아마 처음 셋팅 값인듯 
										var startDate = info.event.startStr
												.split('T')[0];
										var startTime = (info.event.startStr
												.split('T')[1]).split('+')[0];
										var endDate = info.event.endStr
												.split('T')[0];
										var endTime = (info.event.endStr
												.split('T')[1]).split('+')[0];

										// split은 문자열을 인자로 주어진 문자열을 
										// 기준으로 쪼개서 배열에 담는다.

										title = info.event.title;
										content = info.event.extendedProps.content;
										deleteBtn = $("#delCalendar");
										if (title != null || title != '') {
											/* 추가였지만 등록된걸 누르면 수정 */

											$("#addCalendar").text('수정');
											deleteBtn.css("display", "inline");
											//                    $("#deleteCalendar").attr("style","display:inline");
										}
										//검색검색
										modal.show();
										$('#calendarModal').modal();
										$("#calendar_title").val(title);
										$("#calendar_content").val(content);
										//startDate와 endDate는 시간날짜 합친거라고 하기에는...애매한데.. 
										$("#calendar_start_date")
												.val(startDate);
										$("#calendar_end_date").val(endDate);
										$("#startTime").val(startTime);
										$("#endTime").val(endTime);
										$("#barColor").val(barColor);

									},
									//이벤트 부분에 데이터가 아무것도 없으니깐 아무것도 안떴지..죽자
									//비동기라 따로노는 부분임
									events : data
								//                 [
								//                  {
								//                     title: 'All Day Event',
								//                     start: '2023-04-06',
								//                  },
								//                  {
								//                     title: 'All Day Event',
								//                     start: '2023-04-07',
								//                 }
								//              ]
								});
						// full-calendar 생성 끝///////////
						// 캘린더 랜더링
						calendar.render();
					});
		});
	})();
</script>

<body>
	<!-- 모달창  시작 -->
	<div class="modal fade" id="calendarModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true"
		style="display: none;">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content" id="modalBox" style="display: block;">
				<div class="modal-header">
					<!-- 					<span id="closeBtn" class="close" data-dismiss="modal" -->
					<!-- 						aria-label="Close" style="margin-left: 380px; display: inline;">X</span> -->
					<!-- 					<h3 class="modal-title" id="exampleModalLabel" >일정 등록</h3> -->
					<h4 class="modal-title" id="exampleModalLabel">schedule
						registration</h4>
					<button type="button" class="btn-close" data-bs-dismiss="modal">
					</button>
					<hr />
				</div>
				<div class="modal-body pt-0">
					<!-- 여기가 아니라 위에다 studyCode.val()으로 직접 넣어줬음... -->
					<input type="hidden" id="studyCode" name="studyCode"
						value="${studyCode}">
					<!-- name의 행방이매우 궁금했었음. -->
					<!-- name이랑 VO 가 안이어져도 되는 이유는 controller에서 put으로 데이터를 넣는 작업을 해주었기 떄문에 안해도 되는것같음..   -->
					<input type="hidden" id="calNo" name="calNo" value=""><br />

					<div>
						<i class="fa-solid fa-check"></i> 일정 제목 <input type="text"
							class="form-control" id="calendar_title" name="calendar_title"
							placeholder="제목을 입력해 주세요.">
					</div>
					<br>
					<div>
						<i class="fa-solid fa-check"></i> 내용
						<textarea class="form-control" id="calendar_content"
							name="calendar_content" rows="10" cols="50"
							placeholder="내용을 입력해 주세요."></textarea>
						<br>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<i class="fa-solid fa-check"></i> <label
								for="calendar_start_date">시작 날짜</label> <input type="date"
								class="form-control" id="calendar_start_date"
								name="calendar_start_date">
						</div>
						<div class="col-sm-6">
							<i class="fa-solid fa-check"></i> <label for="startTime">시작
								시간</label> <input type="time" id="startTime" name="startTime"
								class="form-control">
						</div>
					</div>
					<br>
					<div class="row">
						<div class="col-sm-6">
							<i class="fa-solid fa-check"></i> <label for="calendar_end_date">종료
								날짜</label> <input type="date" class="form-control"
								id="calendar_end_date" name="calendar_end_date">
						</div>
						<div class="col-sm-6">
							<i class="fa-solid fa-check"></i> <label for="endTime">종료
								시간</label> <input type="time" id="endTime" name="endTime"
								class="form-control">
						</div>
					</div>
					<br>
				    <select class="default-select barColor form-control" id="barColor" name="barColor">
						<option>색상을 선택해 주세요.</option>
						<option value="red">빨강</option>
						<option value="orange">오렌지</option>
						<option value="blue">파랑</option>
						<option value="green">초록</option>
					</select>
				</div>
				<div class="modal-footer">
					<button type="button" class=" btn tp-btn-light btn-primary"
						id="addCalendar">추가</button>
					<button type="button" class="딜리트 btn tp-btn-light btn-danger"
						id="delCalendar" style="display: none">삭제</button>
					<button type="button" class="취소 btn tp-btn-light btn-warning"
						id="modalClose" data-dismiss="modal">취소</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 모달창 끝 -->

	<!-- 캘린더 -->
	<!-- 페이지 타이틀 -->
	<div class="page-titles">
		<ol class="breadcrumb">
			<li>
				<h5 class="bc-title">학사일정</h5>
			</li>
			<li class="breadcrumb-item"><a href="javascript:void(0)"> 
				<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path d="M16.3787 1.875H15.625V1.25C15.625 1.08424 15.5592 0.925268 15.4419 0.808058C15.3247 0.690848 15.1658 0.625 15 0.625C14.8342 0.625 14.6753 0.690848 14.5581 0.808058C14.4408 0.925268 14.375 1.08424 14.375 1.25V1.875H10.625V1.25C10.625 1.08424 10.5592 0.925268 10.4419 0.808058C10.3247 0.690848 10.1658 0.625 10 0.625C9.83424 0.625 9.67527 0.690848 9.55806 0.808058C9.44085 0.925268 9.375 1.08424 9.375 1.25V1.875H5.625V1.25C5.625 1.08424 5.55915 0.925268 5.44194 0.808058C5.32473 0.690848 5.16576 0.625 5 0.625C4.83424 0.625 4.67527 0.690848 4.55806 0.808058C4.44085 0.925268 4.375 1.08424 4.375 1.25V1.875H3.62125C2.99266 1.87599 2.3901 2.12614 1.94562 2.57062C1.50114 3.0151 1.25099 3.61766 1.25 4.24625V17.0037C1.25099 17.6323 1.50114 18.2349 1.94562 18.6794C2.3901 19.1239 2.99266 19.374 3.62125 19.375H16.3787C17.0073 19.374 17.6099 19.1239 18.0544 18.6794C18.4989 18.2349 18.749 17.6323 18.75 17.0037V4.24625C18.749 3.61766 18.4989 3.0151 18.0544 2.57062C17.6099 2.12614 17.0073 1.87599 16.3787 1.875ZM17.5 17.0037C17.499 17.3008 17.3806 17.5854 17.1705 17.7955C16.9604 18.0056 16.6758 18.124 16.3787 18.125H3.62125C3.32418 18.124 3.03956 18.0056 2.8295 17.7955C2.61944 17.5854 2.50099 17.3008 2.5 17.0037V4.24625C2.50099 3.94918 2.61944 3.66456 2.8295 3.4545C3.03956 3.24444 3.32418 3.12599 3.62125 3.125H4.375V3.75C4.375 3.91576 4.44085 4.07473 4.55806 4.19194C4.67527 4.30915 4.83424 4.375 5 4.375C5.16576 4.375 5.32473 4.30915 5.44194 4.19194C5.55915 4.07473 5.625 3.91576 5.625 3.75V3.125H9.375V3.75C9.375 3.91576 9.44085 4.07473 9.55806 4.19194C9.67527 4.30915 9.83424 4.375 10 4.375C10.1658 4.375 10.3247 4.30915 10.4419 4.19194C10.5592 4.07473 10.625 3.91576 10.625 3.75V3.125H14.375V3.75C14.375 3.91576 14.4408 4.07473 14.5581 4.19194C14.6753 4.30915 14.8342 4.375 15 4.375C15.1658 4.375 15.3247 4.30915 15.4419 4.19194C15.5592 4.07473 15.625 3.91576 15.625 3.75V3.125H16.3787C16.6758 3.12599 16.9604 3.24444 17.1705 3.4545C17.3806 3.66456 17.499 3.94918 17.5 4.24625V17.0037Z" fill="#888888"></path>
						<path d="M7.68311 7.05812L6.24999 8.49125L5.44186 7.68312C5.38421 7.62343 5.31524 7.57581 5.23899 7.54306C5.16274 7.5103 5.08073 7.49306 4.99774 7.49234C4.91475 7.49162 4.83245 7.50743 4.75564 7.53886C4.67883 7.57028 4.60905 7.61669 4.55037 7.67537C4.49168 7.73406 4.44528 7.80384 4.41385 7.88065C4.38243 7.95746 4.36661 8.03976 4.36733 8.12275C4.36805 8.20573 4.3853 8.28775 4.41805 8.364C4.45081 8.44025 4.49842 8.50922 4.55811 8.56687L5.80811 9.81687C5.92532 9.93404 6.08426 9.99986 6.24999 9.99986C6.41572 9.99986 6.57466 9.93404 6.69186 9.81687L8.56686 7.94187C8.68071 7.82399 8.74371 7.66612 8.74229 7.50224C8.74086 7.33837 8.67513 7.18161 8.55925 7.06573C8.44337 6.94985 8.28661 6.88412 8.12274 6.8827C7.95887 6.88127 7.80099 6.94427 7.68311 7.05812Z" fill="#888888"></path>
						<path d="M15 8.125H10.625C10.4592 8.125 10.3003 8.19085 10.1831 8.30806C10.0658 8.42527 10 8.58424 10 8.75C10 8.91576 10.0658 9.07473 10.1831 9.19194C10.3003 9.30915 10.4592 9.375 10.625 9.375H15C15.1658 9.375 15.3247 9.30915 15.4419 9.19194C15.5592 9.07473 15.625 8.91576 15.625 8.75C15.625 8.58424 15.5592 8.42527 15.4419 8.30806C15.3247 8.19085 15.1658 8.125 15 8.125Z" fill="#888888"></path>
						<path d="M7.68311 12.6831L6.24999 14.1162L5.44186 13.3081C5.38421 13.2484 5.31524 13.2008 5.23899 13.1681C5.16274 13.1353 5.08073 13.1181 4.99774 13.1173C4.91475 13.1166 4.83245 13.1324 4.75564 13.1639C4.67883 13.1953 4.60905 13.2417 4.55037 13.3004C4.49168 13.3591 4.44528 13.4288 4.41385 13.5056C4.38243 13.5825 4.36661 13.6648 4.36733 13.7477C4.36805 13.8307 4.3853 13.9127 4.41805 13.989C4.45081 14.0653 4.49842 14.1342 4.55811 14.1919L5.80811 15.4419C5.92532 15.559 6.08426 15.6249 6.24999 15.6249C6.41572 15.6249 6.57466 15.559 6.69186 15.4419L8.56686 13.5669C8.68071 13.449 8.74371 13.2911 8.74229 13.1272C8.74086 12.9634 8.67513 12.8066 8.55925 12.6907C8.44337 12.5749 8.28661 12.5091 8.12274 12.5077C7.95887 12.5063 7.80099 12.5693 7.68311 12.6831Z" fill="#888888"></path>
						<path d="M15 13.75H10.625C10.4592 13.75 10.3003 13.8158 10.1831 13.9331C10.0658 14.0503 10 14.2092 10 14.375C10 14.5408 10.0658 14.6997 10.1831 14.8169C10.3003 14.9342 10.4592 15 10.625 15H15C15.1658 15 15.3247 14.9342 15.4419 14.8169C15.5592 14.6997 15.625 14.5408 15.625 14.375C15.625 14.2092 15.5592 14.0503 15.4419 13.9331C15.3247 13.8158 15.1658 13.75 15 13.75Z" fill="#888888"></path>
					</svg> 학사일정
			</a></li>
			<li class="breadcrumb-item active"><a href="#">일정등록</a></li>
		</ol>
	</div>
	<!-- 본문 내용 -->
	<div class="container-fluid">
		<div class="row">
			<div class="card">
				<div class="card-body">
					<div id='calendar-container'>
						<div id='calendar'></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
