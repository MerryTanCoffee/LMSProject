<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<style>
/* ======== Calendar ======== */
.my-calendar {
	width: 100%;
	/*     margin: 30px; */
	padding: 40px 20px 0px; 
	text-align: center;
	/* font-weight: 800; */
	/* 	border: 1px solid #ddd; */
	cursor: default;
}
.my-calendar .calendar-box {
/* 	float: right; */
/* 	width: 58%; */
	width: 50%;
	padding-left: 10px;
    padding-right: 40px;
}
.clicked-date .cal-day {
	font-size: 24px;
}
.clicked-date .cal-date {
	font-size: 120px;
}
.ctr-box {
	padding: 0 12px;
	margin-bottom: 20px;
	font-size: 18px;
	color: #295b95;
}
.ctr-box .btn-cal {
	position: relative;
	float: left;
	width: 25px;
	height: 25px;
	margin-top: 5px;
	font-size: 16px;
	cursor: pointer;
	border: none;
	background: none;
	color: #295b95;
}
.ctr-box .btn-cal:after {
	content: '<';
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	line-height: 25px;
	font-weight: bold;
	font-size: 20px;
}
.ctr-box .btn-cal.next {
	float: right;
}
.ctr-box .btn-cal.next:after {
	content: '>';
}
.cal-table {
	width: 100%;
}
.cal-table th {
	width: 14.2857%;
	padding-bottom: 15px;
	font-size: 16px;
	font-weight: 900;
}
.cal-table td {
	padding: 3px 0;
	/*     height: 50px; */
	height: 47px;
	font-size: 15px;
	vertical-align: middle;
}
.cal-table td.day {
	position: relative;
	cursor: pointer;
}

.cal-table td.event {
	position: relative;
	cursor: pointer;
}

.cal-table td.event::after {
	background: grey;
	border-radius: 50%;
	bottom: .5em;
	display: block;
	content: '';
	height: .5em;
	left: 50%;
	top:92%;
	margin: -.25em 0 0 -.25em;
	position: absolute;
	width: .5em;
	
}

.cal-table td.today {
/*  	background: #ffd255;  */
	border-radius: 50%; 
/* 	border-bottom : 5px solid #ffd255; */
	color: black; 
}
.cal-table td.day-active {
 	background: #ff8585;
 	border-radius: 50%;
	color: black;
/* 	border-bottom : 5px solid #ff8585; */
}
.cal-table td.has-event:after {
	content: '';
	display: block;
	position: absolute;
	left: 0;
	bottom: 0;
	width: 100%;
	height: 4px;
	background: #FFC107;
}

#timeTbl td {
	padding: 0.55rem, 0.2rem;
}

</style>

<!-- 페이지 타이틀 -->
<div class="page-titles">
	<ol class="breadcrumb">
		<li><h5 class="bc-title">PRO Dashboard</h5></li>
		<li class="breadcrumb-item"><a href="javascript:void(0)">
			<svg width="17" height="17" viewBox="0 0 17 17" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path d="M2.125 6.375L8.5 1.41667L14.875 6.375V14.1667C14.875 14.5424 14.7257 14.9027 14.4601 15.1684C14.1944 15.4341 13.8341 15.5833 13.4583 15.5833H3.54167C3.16594 15.5833 2.80561 15.4341 2.53993 15.1684C2.27426 14.9027 2.125 14.5424 2.125 14.1667V6.375Z" stroke="#2C2C2C" stroke-linecap="round" stroke-linejoin="round"/>
				<path d="M6.375 15.5833V8.5H10.625V15.5833" stroke="#2C2C2C" stroke-linecap="round" stroke-linejoin="round"/>
			</svg>
			Home </a>
		</li>
		<li class="breadcrumb-item active"><a href="#">PRO Dashboard</a></li>
	</ol>
	<a class="text-primary fs-13" data-bs-toggle="offcanvas" href="#offcanvasExample1" role="button" aria-controls="offcanvasExample1">+ Add Task</a>
</div>
<div class="container-fluid">

	<!-- 1번째 row: 기본인적사항, 학사일정  -->
	<div class="row">
		<!-- //////////////////////////////////////// 인적사항  ////////////////////////////////////////-->
		<div class="col-xl-3 col-lg-4">
			<div class="clearfix">
				<div class="card card-bx profile-card author-profile m-b30">
					<div class="card-body">
						<div class="p-5">
							<div class="author-profile">
								<div class="author-media" id = "proImg">
									<img src="${pageContext.request.contextPath}/resources/images/profile.png" style="width: 150px; height: 150px;"> 
									<div class="upload-link" title="" data-toggle="tooltip" data-placement="right" data-original-title="update">
										<input type="file" class="update-flie">
										<i class="fa fa-camera"></i>
									</div>
								</div>
								<div class="author-info">
									<h6 class="title">${userInfo.professorVO.proNameKo }</h6>
									<span>${userInfo.professorVO.proNameEn }</span>
								</div>
							</div>
						</div>
						<div class="info-list">
							<ul>
								<li><a href="#">교번</a><span>${userInfo.userId }</span></li>
								<li><a href="#">단과대</a><span>${userInfo.professorVO.collName }</span></li>
								<li><a href="#">전공</a><span>${userInfo.professorVO.proMajor }</span></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //////////////////////////////////////// 학사일정  ////////////////////////////////////////-->
		<div class="col-xl-9">
			<div class="card" style="height: 95.6%;">
			<div class="card-header border-0 pb-0">
				<div class="card-title fw-bold fs-4" style="color: #295b95;">
					&nbsp;&nbsp;&nbsp;<i class="fa-regular fa-calendar-check"></i>&nbsp;&nbsp;&nbsp;학사
					일정
				</div>
			</div>
			<div class="card-body pt-0">
				<div class="my-calendar clearfix d-flex">
					<div class="calendar-box">
						<div class="ctr-box clearfix">
							<button type="button" title="prev" class="btn-cal prev">
							</button>
							<strong><span class="cal-year"></span>. <span
								class="cal-month"></span></strong>
							<button type="button" title="next" class="btn-cal next">
							</button>
						</div>
						<table class="cal-table"> 
							<thead>
								<tr>
									<th style="color: #f95959;">일</th>
									<th>월</th>
									<th>화</th>
									<th>수</th>
									<th>목</th>
									<th>금</th>
									<th style="color: #005792;">토</th>
								</tr>
							</thead>
							<tbody class="cal-body"></tbody>
						</table>
					</div>
					<!-- 일정 표현 -->
					<div class="card-body pt-0" style="padding-left: 10px;" id="miniSchedule"></div>
				</div>
			</div>
		</div>
		</div>	
	</div>
	
	<!-- 2번째 row: 시간표, 교수가 강의하고 있는 과목정보  -->
	<div class="row">
		<!-- //////////////////////////////////////// 교수 시간표  ////////////////////////////////////////-->
		<div class="col-xl-6"> 
			<div class="card">
				<div class="card-header border-0 pb-0">
					<div class="card-title fw-bold fs-4 " style="color: #295b95;">
						&nbsp;&nbsp;&nbsp;<i class="fa-solid fa-table"></i>&nbsp;&nbsp;&nbsp;시간표
					</div>
				</div>
				<div class="card-body">
					<table class="table table-bordered text-center" id="timeTbl">
						<thead>
							<tr id="datTr" class="table-active">
								<th style="width:10%;">구분</th>
								<th style="width:18%;">월</th>
								<th style="width:18%;">화</th>
								<th style="width:18%;">수</th>
								<th style="width:18%;">목</th>
								<th style="width:18%;">금</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td data-bs-toggle="tooltip" 
								data-bs-title="9:00 ~ 10:00" 
								data-bs-placement="left"
								>1교시</td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td data-bs-toggle="tooltip" 
								data-bs-title="10:00 ~ 11:00" 
								data-bs-placement="left"
								>2교시</td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td data-bs-toggle="tooltip" 
								data-bs-title="11:00 ~ 12:00" 
								data-bs-placement="left"
								>3교시</td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td data-bs-toggle="tooltip" 
								data-bs-title="12:00 ~ 13:00" 
								data-bs-placement="left"
								>4교시</td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td data-bs-toggle="tooltip" 
								data-bs-title="13:00 ~ 14:00" 
								data-bs-placement="left"
								>5교시</td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td data-bs-toggle="tooltip" 
								data-bs-title="14:00 ~ 15:00" 
								data-bs-placement="left"
								>6교시</td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td data-bs-toggle="tooltip" 
								data-bs-title="15:00 ~ 16:00" 
								data-bs-placement="left"
								>7교시</td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td data-bs-toggle="tooltip" 
								data-bs-title="16:00 ~ 17:00" 
								data-bs-placement="left"
								>8교시</td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td data-bs-toggle="tooltip" 
								data-bs-title="17:00 ~ 18:00" 
								data-bs-placement="left"
								>9교시</td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>	
		<!-- //////////////////////////////////////// 강의중인 과목  ////////////////////////////////////////-->
		<div class="col-xl-6">
			<div class="card">
				<div class="card-header border-0 pb-0">
					<div class="card-title fw-bold fs-4 " style="color: #295b95;">
						&nbsp;&nbsp;&nbsp;<i class="fa-solid fa-circle-info"></i>&nbsp;&nbsp;&nbsp; 강의 목록
					</div>
				</div>
				<div class="card-body">
						<div class="table-responsive">
						<table class="table table-responsive-md text-center" id="lecList">
							<thead>
								<tr class="bg-info">
									<th style="width:10%;"><strong>#</strong></th>
									<th style="width:30%;"><strong>과목명</strong></th>
									<th style="width:30%;"><strong>건물/강의실</strong></th>
									<th style="width:30%;"><strong>강의시간</strong></th>
								</tr>
							</thead>
							<tbody>
							<c:forEach items="${proLectureList }" var="lecture" varStatus="i">
								<tr>
									<td><strong>${i.count }</strong></td>
									<td>${lecture.subName }</td>
									<td>${lecture.hallName }/${lecture.lrNum }</td>
									<td>${lecture.weekName } 
										${fn:substring(lecture.startTime, 1, fn:length(lecture.startTime)) }:00
										~ ${fn:substring(lecture.endTime, 1, fn:length(lecture.startTime)) }:00
									</td>
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

<script type="text/javascript">

const init = {
		monList: ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12'],
		dayList: ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'],
		today: new Date(),
		monForChange: new Date().getMonth(),
		activeDate: new Date(),
		getFirstDay: (yy, mm) => new Date(yy, mm, 1),
		getLastDay: (yy, mm) => new Date(yy, mm + 1, 0),

		nextMonth: function () {
			let d = new Date();
			d.setDate(1);
			d.setMonth(++this.monForChange);
			this.activeDate = d;
			return d;
		},
		prevMonth: function () {
			let d = new Date();
			d.setDate(1);
			d.setMonth(--this.monForChange);
			this.activeDate = d;
			return d;
		},
		addZero: (num) => (num < 10) ? '0' + num : num,
		activeDTag: null,
		getIndex: function (node) {
			let index = 0;
			while (node = node.previousElementSibling) {
				index++;
			}
			return index;
		}
	};

	const $calBody = document.querySelector('.cal-body');
	const $btnNext = document.querySelector('.btn-cal.next');
	const $btnPrev = document.querySelector('.btn-cal.prev');

	/**
	* @param {number} date 
	* @param {number} dayIn
	*/
	function loadDate(date, dayIn) {
		// 		document.querySelector('.cal-date').textContent = date;
		// 		document.querySelector('.cal-day').textContent = init.dayList[dayIn];
	}

	/**
	* @param {date} fullDate
	*/
	function loadYYMM(fullDate) {
		let yy = fullDate.getFullYear();
		let mm = fullDate.getMonth();
		let firstDay = init.getFirstDay(yy, mm);
		let lastDay = init.getLastDay(yy, mm);
		let markToday;  // for marking today date

		if (mm === init.today.getMonth() && yy === init.today.getFullYear()) {
			markToday = init.today.getDate();
		}

		document.querySelector('.cal-month').textContent = init.monList[mm];
		document.querySelector('.cal-year').textContent = yy;

		let trtd = '';
		let startCount;
		let countDay = 0;
		for (let i = 0; i < 6; i++) {
			trtd += '<tr>';
			for (let j = 0; j < 7; j++) {
				if (i === 0 && !startCount && j === firstDay.getDay()) {
					startCount = 1;
				}
				if (!startCount) {
					trtd += '<td>'
				} else {
					let fullDate = yy + '-' + init.addZero(mm + 1) + '-' + init.addZero(countDay + 1);
					trtd += '<td class="day';
					trtd += (markToday && markToday === countDay + 1) ? ' today" ' : '"';
					trtd += `onclick='f_clickedDay(this)' data-date="\${countDay + 1}" data-fdate="\${fullDate}">`;
				}
				trtd += (startCount) ? ++countDay : '';
				if (countDay === lastDay.getDate()) {
					startCount = 0;
				}
				trtd += '</td>';
			}
			trtd += '</tr>';
		}
		$calBody.innerHTML = trtd;
		
	}

	/**
	* @param {string} val
	*/
	function createNewList(val) {
		let id = new Date().getTime() + '';
		let yy = init.activeDate.getFullYear();
		let mm = init.activeDate.getMonth() + 1;
		let dd = init.activeDate.getDate();
		const $target = $calBody.querySelector(`.day[data-date="${dd}"]`);

		let date = yy + '-' + init.addZero(mm) + '-' + init.addZero(dd);

		let eventData = {};
		eventData['date'] = date;
		eventData['memo'] = val;
		eventData['complete'] = false;
		eventData['id'] = id;
		init.event.push(eventData);
		$todoList.appendChild(createLi(id, val, date));
	}

	loadYYMM(init.today);
	loadDate(init.today.getDate(), init.today.getDay());

	$btnNext.addEventListener('click', () => loadYYMM(init.nextMonth()));
	$btnPrev.addEventListener('click', () => loadYYMM(init.prevMonth()));

	$calBody.addEventListener('click', (e) => {
		if (e.target.classList.contains('day')) {
			if (init.activeDTag) {
				init.activeDTag.classList.remove('day-active');
			}
			let day = Number(e.target.textContent);
			loadDate(day, e.target.cellIndex);
			e.target.classList.add('day-active');
			init.activeDTag = e.target;
			init.activeDate.setDate(day);
			//   reloadTodo();
		}

	});
	
	$(".prev").on("click", function(){
		monthSchedule();
		$(".today").trigger("click");
	});
	
	$(".next").on("click", function(){
		monthSchedule();
		$(".today").trigger("click");
	});



	function f_clickedDay(p_this) {

		let selectedDate = p_this.getAttribute("data-fdate");
		console.log("selectedDate ::", selectedDate);

		let selectedDateOfYear = selectedDate.substr(0, 4);
		let selectedDateOfMonth = selectedDate.substr(5, 2);
		let selectedDateOfDay = selectedDate.substr(-1, 2);

		console.log("선택한 날짜 년도  >>", selectedDateOfYear);
		console.log("선택한 날짜 월  >>", selectedDateOfMonth);
		console.log("선택한 날짜 일 >>", selectedDateOfDay);

		let scheduleContent = document.querySelector("#scheduleContent");
		let scheduleDate = document.querySelector("#scheduleDate");

		let data = {
			datetime: selectedDate
		}

		let xhr = new XMLHttpRequest();
		xhr.open("post", "/schedule/miniSchedule", true);
		xhr.setRequestHeader("Content-Type", "application/json;charset=utf-8");
		xhr.onreadystatechange = () => {
			if (xhr.readyState == 4 && xhr.status == 200) {
				console.log("온값: ", xhr.responseText);

				let listArr = JSON.parse(xhr.responseText);
				console.log("변환체킁: ", listArr);

				let html = "";
				if (listArr.length > 0) {
					html += "	<div class='row' style='padding-top:42px;'>";
					html += "		<div class='col-md-12'>";
					html += "			<table class='table text-start'>";
					html += "				<tr class='fs-5'>";
					html += "					<th>일자</th>";
					html += "					<th>내용</th>";
					html += "				</tr>";
					for (let i = 0; i < listArr.length; i++) {
						let usSdate = listArr[i].usSdate;
						let usEdate = listArr[i].usEdate;
						let usContent = listArr[i].usContent;
						let sdate = usSdate.substr(0, 10);
						let edate = usEdate.substr(0, 10);
						html += "			<tr>";
						html += "				<td>";
						html += "					<font color='#295b95'>" +
							sdate.substr(5, 6).split("-")[0] + ". " + sdate.substr(5, 6).split("-")[1] + " ~ " +
							edate.substr(5, 6).split("-")[0] + ". " + edate.substr(5, 6).split("-")[1] +
							"</font>";
						html += "				</td>";
						html += "				<td>";
						html += "					" + usContent;
						html += "				</td>";
						html += "			</tr>";
					}
					html += "			</table>";
					html += "		</div>";
					html += "	</div>";
				}
				miniSchedule.innerHTML = html;

				// $(p_this).attr("class").removeClass("event", "background-color:#ff8585;");
				


			}
		}
		// 데이터 json으로 보내기
		xhr.send(JSON.stringify(data));
	}

	$(function () {
			let COLOR_SET = ["#42BAFF", "#00DC6D", "#F1BE5B", "#FFA6E9", "#FFFD66",
				"#90827a", "#FF7F32", "#E191FF", "#85E4FF", "#FFAB6E"];

			$(document).ready(function(){
				lectureList = ${jsonLectureList};
				console.log("교수 강의 리스트:", lectureList);
				displayProTime(lectureList);
			});

			// 시간표에 교수 수업일정 표시하는 함수
			function displayProTime(proTime) {
				let table = document.getElementById("timeTbl");
				console.log(">>>", proTime);

				for (i = 0; i < proTime.length; i++) {
					let srow = proTime[i].startTime + "";
					let erow = proTime[i].endTime + "";
					let startRow = (parseInt(srow.substr(1)) - 9) + 1;
					let endRow = (parseInt(erow.substr(1)) - 9) + 1;
					let dayCol = 0;

					switch (proTime[i].weekCode) {
						case "MON":
							dayCol = 1;
							break;
						case "TUE":
							dayCol = 2;
							break;
						case "WED":
							dayCol = 3;
							break;
						case "THU":
							dayCol = 4;
							break;
						case "FRI":
							dayCol = 5;
							break;
						default:
							return;
					}
					console.log(startRow, endRow);

					let subName = proTime[i].subName;
					let lecDivide = proTime[i].lecDivide+"분반";
					let credit = parseInt(proTime[i].subCredit);
					let color = COLOR_SET[i%COLOR_SET.length];
					
					// 시간표에 강의명, 분반, 교수명, 과목별 배경색 표시
					if(credit == 1){  // 1학점 강의일 때
						for (let j = startRow; j <= endRow; j++) {
							let cell = table.rows[j].cells[dayCol];
							$(cell).css("line-height", 1);
							cell.innerHTML = `<span style="font-size: 0.9rem">\${subName}<br>\${lecDivide}</span>`;
								cell.style.backgroundColor = color;
						}
					}
					if(credit >= 2 ){  // 2학점 이상 강의일 때
						for (let j = startRow; j <= endRow; j++) {
							let cell = table.rows[j].cells[dayCol];
							$(cell).css("line-height", "");
							if(j == startRow){
								cell.innerHTML = `<span style="font-size: 0.9rem">\${subName}`;
							}
							if(j == (startRow+1)){
								cell.innerHTML = `<span style="font-size: 0.9rem">\${lecDivide}</span>`;
							}
							cell.style.backgroundColor = color;
						}
					}
				}
			}
			$(".today").trigger("click");
			
			monthSchedule();
		});


	// 해당 월의 일정 불러오기
	function monthSchedule(){
		// let usSdate = $(".today").data("fdate").substr(0, 7);
		let calYear = $(".cal-year").html();
		let calMonth = $(".cal-month").html();
		let usSdate = calYear + "-" + calMonth;
		console.log("usSdate:", usSdate);
		
		let date = {
			usSdate : usSdate,	 
		}
		
		let xhr = new XMLHttpRequest();
		xhr.open("post", "/schedule/miniScheduleMonth", true);
		xhr.setRequestHeader("Content-Type", "application/json;charset=utf-8");
		xhr.onreadystatechange = () => {
			if(xhr.readyState == 4 && xhr.status == 200){
				//console.log("해당월 온값: ", xhr.responseText);
				let listArr = JSON.parse(xhr.responseText);

				for(let i=0; i<listArr.length; i++){
					let sDate = listArr[i].usSdate.substr(0,10);
					let eDate = listArr[i].usEdate.substr(0,10);
					
					//console.log("ckkk",sDate, eDate, startEndGap(sDate,eDate));
					startEndGap(sDate,eDate).forEach(pVal => {
						console.log(pVal);
						console.log($("[data-fdate=" + pVal+ "]")[0]);
						// $("[data-fdate=" + pVal+ "]").css("border-right","2px solid red");
						$("[data-fdate=" + pVal+ "]").addClass("event");
					})
				}
				//console.log("해당월 온값 변환 체킁: ", listArr);
			}
		}
		xhr.send(JSON.stringify(date));
	}	

    function startEndGap(sDate,eDate){
		var ssDate = sDate.replaceAll("-","");
		var eeDate = eDate.replaceAll("-","");
		var gap = eeDate - ssDate;
		var days = [];
		for(let i=0; i<=gap; i++){
			var revertDay = ssDate++;
			revertDay =  revertDay + ""; 
			var realDay = revertDay.substr(0,4) + "-" + revertDay.substr(4,2) + "-" + revertDay.substr(6,2)   
			days.push(realDay);
		}
		return days;

	}


	var userId = '${userInfo.userId}' ;

	//userId를 가지고 프로필 이미지 경로를 가져오는 함수!!
	var obj = {
		userId : '${userInfo.userId}',
		userType : '${userInfo.userType}'
	}
	function fetchProfileImage(userId) {
	    return $.ajax({
	        type: "post",
	        url: "/chat/chatMemProfile",
	        dataType: "json",
	        data: obj
	    }).then(function(profileRes) {
	        if(profileRes.profile != null){
	            let imgSrc = `${pageContext.request.contextPath}/resources/images/profile\${profileRes.profile.profilePath}\${profileRes.profile.profileName}`;
	            return imgSrc;
	        } else {
	            return null;
	        }
	    });
	}
fetchProfileImage(userId).then(function(imgSrc) {
       if (imgSrc !=null) {
	       console.log("imgSrc",imgSrc);
	       $("#proImg img").attr("src", imgSrc);
	       $("#proImg img").attr("style", "width: 150px; height: 150px; object-fit: cover; object-position: center 20%;");
       } else {
    	   
    	   
       }
});				
</script>
