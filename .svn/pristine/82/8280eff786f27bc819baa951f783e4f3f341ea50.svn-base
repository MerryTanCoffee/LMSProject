<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>대원대학교 포털시스템</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <link rel="stylesheet" href="/resources/css/boot.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
            integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
            crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <style>
/* ======== Calendar ======== */

.nav {
	color:#fff;
}
.nav-link  {
	color:#fff;
}

.nav-link:hover {
	color:#01e4ff;
}


::-webkit-scrollbar {
	width: 5px;
}

::-webkit-scrollbar-track {
	background-color: #fff;
}

::-webkit-scrollbar-thumb {
 	background-color: #56a5eb; 
}

::-webkit-scrollbar-thumb:hover {
	background-color: #56a5eb;
}

.my-calendar {
	width: 100%;
	/*     margin: 30px; */
	padding: 20px 20px 10px;
	text-align: center;
	/* font-weight: 800; */
	/* 	border: 1px solid #ddd; */
	cursor: default;
}

/* .my-calendar .clicked-date { */
/* 	border-radius: 25px; */
/* 	/*     margin-top: 36px; */
* /
	/* 	float: left; */
	/* 	width: 42%; */
	/* 	padding: 46px 0 26px; */
	/* 	background: #fafafa; */
	/* } */ 

.my-calendar .calendar-box {
	float: right;
	width: 58%;
	padding-left: 30px;
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
	height: 40px;
	font-size: 15px;
	vertical-align: middle;
}

.cal-table td.day {
	position: relative;
	cursor: pointer;
}

.cal-table td.today {
/* 	background: #ffd255; */
	border-radius: 50%;
	color: black;
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

.cal-table td.day-active {
	background: #ff8585;
	border-radius: 50%;
	color: #fff;
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


</style>
    
    <body>
        <div class="wrapper">
        <!-- //////////////////////////////////////////// aside ////////////////////////////////////////////// -->
            <aside class="main-sidebar">
                <div class="sublogo fs-5">
                	<img src="/resources/images/DWU_logo_white.png" style="padding-top: 5px; padding-bottom: 5px;"/>
                	대원대학교 
	                <p class="uniTextEng">&nbsp;&nbsp;&nbsp;DAEWON UNIVERSITY</p> 
                </div>
                <div class="sectit"><a href="/main">학생포털</a></div>
                <div class="user-w stb-w">
                    <div class="user-img">
                        <img src="#" alt="">
                    </div>
                    <div class="user-t" style="color: #fff; font-size: 18px;">
                        <div class="user-tw">
                            <span class="user-name"></span>${userInfo.studentVO.stuNameKo } <span class="user-subname" style="color: #fff;"></span>
                            <span class="user-subname" style="font-size:16px;">${userInfo.studentVO.academicVO.acaMajor} ${userInfo.studentVO.academicVO.acaGrade}학년</span>
                        </div>
                        <div class="user-logcw">
                            <span class="user-logc"><a href="/logout">로그아웃</a></span> &nbsp;
                            <span class="user-logc"><a href="/user/updPasswordForm?userId=${userInfo.userId }">비밀번호 변경</a></span>
                        </div>
                    </div>
                </div>
                <ul class="sidebar-menu">
                    <li><a href="/home">통합정보시스템</a></li>
                    <li><a href="/board/list/s001">스터디 모집 게시판</a></li>
                    <li><a href="/board/list/n002">일반공지</a></li>
                    <li><a href="/board/list/n001">학사공지</a></li>
                    <li><a href="/board/list/r001">채용정보</a></li>
                </ul>

                <div style="background-color: #114597; border-radius: 20px; ,margin-top: 30px;">
                    <table class="table table-borderless mb-0" style="height: 250px; color:#fff;">
                        <thead>
                            <tr>
                                <th scope="col" colspan="4" style="border: none; text-align: center; border: none; text-align: center; padding-top:30px;font-size:20px;">
                                	대전 중구 오류동</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td colspan="4" class="text-center">
                                    <div class="cicon">
                                        <img id="weatherIcon" src="/resources/weathericons/images/01d.png">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                            <td colspan="4" class="text-center p-0">
                                <div class="cdes"></div>
							</td>
						</tr>
						<tr>
							<td colspan="4" class="text-center"><strong> 현재온도
                                    <div class="ctemp" style="color: #00fffc;"></div> </strong>
                            </td>
                        </tr>
                            <tr>
                                <td colspan="2" class="text-end" style="padding-left:18px;">
                                    <div class="chum">
                                        <i class="fa-solid fa-droplet" style="color: #96cbff;">&nbsp;</i>
                                    </div>
                                </td>
                                <td colspan="2" class="text-start">
                                    <div class="cwind">
                                        <i class="fa-solid fa-wind" style="color: #bbbdbf;">&nbsp;</i>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="cdate" style="padding-left: 10px; padding-bottom: 10px; color:#fff;"></div>
                </div>
            </aside>
            <!-- //////////////////////////////////////////// aside ////////////////////////////////////////////// -->

			<!-- //////////////////////////////////////////// section ////////////////////////////////////////////// -->
            <section class="content stucontent">
                <div class="conL">
                    <div class="wschInfo">
                        <div class="conmailboxw">
                            <div class="conmailbox">
                                <span class="cmtxt">현재 이수학점/졸업학점</span>
                               	<span class="pointc">${myCreditsInfo.myCredits}/140</span>
                                <span class="cmtxt">학적상태</span> 
                                <span class="pointc">${sessionScope.userInfo.studentVO.academicVO.acaStatus}</span>
                                <br><br>
                                <span class="cmtxt" style="padding-right: 114px;">복수전공</span>
                               	<span class="pointc">미신청</span>
                                <span class="cmtxt" style="padding-left: 14px;">부전공</span> 
                                <span class="pointc">미신청</span>
                            </div>
                        </div>
                    </div>
                    <div class="restboxw">
                        <div class="content-bbs">
                            <div class="gratit">수강정보</div>
                            <div class="suinfo">
                                <table class="table primary-table-bordered text-center" style="color: #fff;">
                                    <thead class="thead-primary">
                                        <tr>
                                            <th scope="col">과목명</th>
                                            <th scope="col">분반</th>
                                            <th scope="col">담당교수</th>
                                            <th scope="col">강의시간</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${summaryCouInfoList }" var="summCouInfo" varStatus="i">
                                        <tr>
                                            <td>${summCouInfo.subName }</td>
                                            <td>${summCouInfo.lecDivide }</td>
                                            <td>${summCouInfo.proNameKo }</td>
                                            <td>${summCouInfo.weekName} ${summCouInfo.startTime}시 ~ ${summCouInfo.endTime }시</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                    <div class="restboxw">
                        <div class="content-bbs">
                            <div class="gratit">대원의 소식</div>
                            <div class="suinfo">
                           	 	<!-- 공지사항 -->
                                 <div class="default-tab">
                                    <ul class="nav nav-tabs" role="tablist" style="color:#fff;">
                                        <li class="nav-item"><a class="nav-link active" data-bs-toggle="tab" 
                                                href="#home"><i class="la la-home me-2" style="color:#fff;"></i> 일반공지</a></li>
                                        <li class="nav-item"><a class="nav-link" data-bs-toggle="tab" href="#profile"><i
                                                    class="la la-user me-2" style="color:#fff;"></i> 학사공지</a></li>
                                        <li class="nav-item"><a class="nav-link" data-bs-toggle="tab" href="#contact"><i
                                                    class="la la-phone me-2" style="color:#fff;"></i> 채용정보</a></li>
                                    </ul>
                                    <!-- 일반공지 내용  -->
                                    <div class="tab-content">
                                        <div class="tab-pane fade show active" id="home" role="tabpanel">
                                            <div class="">
                                                <table class="table" style="color:#fff; overflow: scroll;" >
                                                    <tbody>
                                                    	<c:set value="0" var="cnt"/>
                                                    	<c:forEach items="${boardList }" var="notice" varStatus="stat">
	                                                    	<c:if test="${notice.cateCode eq 'n001'}" >
	                                                    		<c:set value="${cnt+1 }" var="cnt"/>
	                                                    		<c:if test="${cnt < 6 }">
			                                                        <tr style="width: 100%;">
			                                                            <td style="width: 65%;">${notice.boTitle }</td>
			                                                            <td>${fn:substring(notice.boWriteDate, 0, 10) }</td>
			                                                        </tr>
	                                                    		</c:if>
	                                                        </c:if>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="profile">
                                            <div class="pt-4">
                                            	<table class="table" style="color:#fff;">
                                                    <tbody>
                                                    	<c:set value="0" var="cnt"/>
                                                    	<c:forEach items="${boardList }" var="notice" varStatus="stat">
	                                                    	<c:if test="${notice.cateCode eq 's001'}" >
	                                                    		<c:set value="${cnt+1 }" var="cnt"/>
	                                                    		<c:if test="${cnt < 6 }">
			                                                        <tr style="width: 100%;">
			                                                            <td style="width: 65%;">${notice.boTitle }</td>
			                                                            <td>${fn:substring(notice.boWriteDate, 0, 10) }</td>
			                                                        </tr>
	                                                    		</c:if>
	                                                        </c:if>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="contact">
                                            <div class="pt-4">
                                            	<table class="table" style="color:#fff;">
                                                    <tbody>
                                                    	<c:set value="0" var="cnt"/>
                                                    	<c:forEach items="${boardList }" var="notice" varStatus="stat">
	                                                    	<c:if test="${notice.cateCode eq 'r001'}" >
	                                                    		<c:set value="${cnt+1 }" var="cnt"/>
	                                                    		<c:if test="${cnt < 6 }">
			                                                        <tr style="width: 100%;">
			                                                            <td style="width: 65%;">${notice.boTitle }</td>
			                                                            <td>${fn:substring(notice.boWriteDate, 0, 10) }</td>
			                                                        </tr>
	                                                    		</c:if>
	                                                        </c:if>
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
                    <div class="subfooter">
						<p>주소 : 34908 대전광역시 중구 계룡로 846 / <span>TEL. 042-222-8202</span></p>
						<p>COPYRIGHT (C) 2023 DAEWON UNIVERSITY. ALL RIGHTS RESERVED. CONTACT WEBMASTER FOR MORE INFORMATION</p>
					</div>
                </div>
                <div class="conR">
                    <div class="contcw">
                    <div class="notit"><i class="fa-regular fa-calendar-check"></i> 학사일정</div>
                        <div class="card">
			<div class="card-body pt-0" style="border: 1px solid #2d62b6;">
				<!-- ========================== 달력 ========================== -->
				<div class="my-calendar clearfix">
					<div class="calendar-box">
						<div class="ctr-box clearfix pt-2">
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
							<tbody class="cal-body" style="border-bottom: 1px solid #efefef;"></tbody>
						</table>
					</div>
				</div>
				<!-- 일정 표현 -->
				<div class="card-body pt-0" style="padding-left: 30px;" id="miniSchedule">
				</div>
			</div>
			<!-- card-body end -->
		</div>

                        <div class="banzonew">
                            <div class="banboxw">
                                <div class="banbox">
                                    <a href="/msg/msgList">
                                        <p class="banimg">
                                            <img src="/resources/images/icon/mail_icon.png" alt="쪽지 아이콘">
                                        </p>
                                        <p style="margin:20px 0 0 0; font-size:16px;"><strong>쪽지</strong></p>
                                    </a>
                                </div>
                                <div class="banbox">
                                    <a href="#">
                                        <p class="banimg">
                                            <img src="/resources/images/icon/library_icon.png" alt="도서관 아이콘">
                                        </p>
                                        <p style="margin:20px 0 0 0; font-size:16px;"><strong>도서관</strong></p>
                                    </a>
                                </div>
                                <div class="banbox">
                                    <a href="/study/card">
                                        <p class="banimg">
                                            <img src="/resources/images/icon/study_icon.png" alt="스터디 아이콘">
                                        </p>
                                        <p style="margin:20px 0 0 0; font-size:16px;"><strong>스터디</strong></p>
                                    </a>
                                </div>
                                <div class="banbox">
                                    <a href="#">
                                        <p class="banimg">
                                            <img src="/resources/images/icon/certificate_icon.png" alt="증명서발급 아이콘">
                                        </p>
                                        <p style="margin:20px 0 0 0; font-size:16px;"><strong>증명서</strong></p>
                                    </a>
                                </div>
                            </div>
                            <!-- 아이콘 두번째 줄 -->
                            <div class="banboxw">
                                <div class="banbox">
                                    <a href="/facility/usageStatus">
                                        <p class="banimg">
                                            <img src="/resources/images/icon/building_icon.png" alt="건물 아이콘">
                                        </p>
                                        <p style="margin:20px 0 0 0; font-size:16px;"><strong>시설</strong></p>
                                    </a>
                                </div>
                                <div class="banbox">
                                    <a href="/locker/usageStatus">
                                        <p class="banimg">
                                            <img src="/resources/images/icon/lockers_icon.png" alt="사물함 아이콘">
                                        </p>
                                        <p style="margin:20px 0 0 0; font-size:16px;"><strong>사물함</strong></p>
                                    </a>
                                </div>
                                <div class="banbox">
                                    <a href="/consult/info">
                                        <p class="banimg">
                                            <img src="/resources/images/icon/consult_icon.png" alt="상담 아이콘">
                                        </p>
                                        <p style="margin:20px 0 0 0; font-size:16px;"><strong>상담</strong></p>
                                    </a>
                                </div>
                                <div class="banbox">
                                    <a href="https://cert.woosuk.ac.kr/">
                                        <p class="banimg">
                                            <img src="/resources/images/icon/scholarship_icon.png" alt="증명서발급 아이콘">
                                        </p>
                                        <p style="margin:20px 0 0 0; font-size:16px;"><strong>장학금</strong></p>
                                    </a>
                                </div>
                            </div>
                            <br>
                        </div>
                    </div>
                </div>
            </section>
            <!-- //////////////////////////////////////////// section ////////////////////////////////////////////// -->
        </div>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
            crossorigin="anonymous"></script>
        <script type="text/javascript">
            /*
        $.getJSON('파일경로', function(data){
            // data로 할일...
        });
        */
            // http://api.openweathermap.org/data/2.5/weather?id=1835224&appid=ca0bb9a0d664dd00b81b108021c12b45&units=metric

            $.getJSON('http://api.openweathermap.org/data/2.5/weather?id=1835224&appid=ca0bb9a0d664dd00b81b108021c12b45&units=metric', function (data) {
                // data로 할일...
                // alert(data.list[0].main.temp_min);
                var $minTemp = data.main.temp_min;
                var $maxTemp = data.main.temp_max;
                var $cTemp = data.main.temp + "&deg;";
                var $now = new Date($.now());
                var $cDate = $now.getFullYear() + '-' + ($now.getMonth() + 1) + '-' + $now.getDate() + "&nbsp;&nbsp;&nbsp;" + $now.getHours() + ' : ' + $now.getMinutes() + " : " + $now.getSeconds();
                var $wIcon = data.weather[0].icon;
                var $cDes = data.weather[0].description;
                var $cHum = data.main.humidity + "%";
                var $cWind = data.wind.speed + "m/s";


                // Date.now(); == $.now
                // new Date(Date.now());
                // alert(new Date($.now()));
                // .getFullYear() 년도
                // .getMonth() 월 0=1월
                // .getDate()
                // .getHours() 시간, .getMinutes() 분

                // A.appendTo(B) B요소의 내용의 뒤에 A를 추가
                // A.append(B) A요소의 내용의 뒤에 B를 추가
                // A.prependTo(B) B요소의 내용의 앞에 A를 추가
                // A.prepend(B) A요소의 내용의 앞에 B를 추가

                $(".clowtemp").append($minTemp);
                $(".chightemp").append($maxTemp);
                $(".ctemp").append($cTemp);
                $(".cdate").prepend($cDate);
                $(".cdes").append($cDes);
                $(".chum").append($cHum);
                $(".cwind").append($cWind);
                // $(".cicon").append('<img src="https://openweathermap.org/img/wn/' + $wIcon + '.png" />');

                // <img src="https://openweathermap.org/img/wn/10d@2x.png">

                let image = document.querySelector("#weatherIcon");

                if ($wIcon == "01d") {
                    image.src = "/resources/weathericons/images/01d.png";
                } else if ($wIcon == "01n") {
                    image.src = "/resources/weathericons/images/01n.png";
                } else if ($wIcon == "02d") {
                    image.src = "/resources/weathericons/images/02d.png";
                } else if ($wIcon == "02n") {
                    image.src = "/resources/weathericons/images/02n.png";
                } else if ($wIcon == "03d") {
                    image.src = "/resources/weathericons/images/03d.png";
                } else if ($wIcon == "03n") {
                    image.src = "/resources/weathericons/images/03n.png";
                } else if ($wIcon == "04d") {
                    image.src = "/resources/weathericons/images/04d.png";
                } else if ($wIcon == "04n") {
                    image.src = "/resources/weathericons/images/04n.png";
                } else if ($wIcon == "09d") {
                    image.src = "/resources/weathericons/images/09d.png";
                } else if ($wIcon == "09n") {
                    image.src = "/resources/weathericons/images/09n.png";
                } else if ($wIcon == "10d") {
                    image.src = "/resources/weathericons/images/10d.png";
                } else if ($wIcon == "10n") {
                    image.src = "/resources/weathericons/images/10n.png";
                } else if ($wIcon == "11d") {
                    image.src = "/resources/weathericons/images/11d.png";
                } else if ($wIcon == "11n") {
                    image.src = "/resources/weathericons/images/11n.png";
                } else if ($wIcon == "13d") {
                    image.src = "/resources/weathericons/images/13d.png";
                } else if ($wIcon == "13n") {
                    image.src = "/resources/weathericons/images/13n.png";
                } else if ($wIcon == "50d") {
                    image.src = "/resources/weathericons/images/50d.png";
                } else if ($wIcon == "50n") {
                    image.src = "/resources/weathericons/images/50n.png";
                }


            });
        	
        	//================================
        	//START YOUR APP HERE
        	//================================
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
//         		document.querySelector('.cal-date').textContent = date;
//         		document.querySelector('.cal-day').textContent = init.dayList[dayIn];
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
        	
        	function f_clickedDay(p_this) {
        		
        		let selectedDate = p_this.getAttribute("data-fdate");
        		console.log("selectedDate ::", selectedDate);
        		
        		let selectedDateOfYear = selectedDate.substr(0,4);
        		let selectedDateOfMonth = selectedDate.substr(5,2);
        		let selectedDateOfDay = selectedDate.substr(-1,2);
        		
        		console.log("선택한 날짜 년도  >>",selectedDateOfYear);
        		console.log("선택한 날짜 월  >>", selectedDateOfMonth);
        		console.log("선택한 날짜 일 >>", selectedDateOfDay);
        		
        		let scheduleContent = document.querySelector("#scheduleContent");
        		let scheduleDate = document.querySelector("#scheduleDate");
        		
        		let data = {
        			datetime : selectedDate
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
                        if(listArr.length > 0){
        					html += "	<div class='row'>";
        					html += "		<div class='col-md-12'>";
        					html += "			<table class='table'>";
        					html += "				<tr>";
        					html += "					<th>일자</th>";
        					html += "					<th>내용</th>";
        					html += "				</tr>";
        	                for(let i=0; i < listArr.length; i++){
        						let usSdate = listArr[i].usSdate;
        						let usEdate = listArr[i].usEdate;
        						let usContent = listArr[i].usContent;
        						let sdate = usSdate.substr(0, 10);
        						let edate = usEdate.substr(0, 10);
        						html += "			<tr>";
        						html += "				<td>";
        						html += "					<font color='#295b95'>" + 
        							sdate.substr(5,6).split("-")[0] + ". " + sdate.substr(5,6).split("-")[1] + " ~ " +
        							edate.substr(5,6).split("-")[0] + ". " + edate.substr(5,6).split("-")[1] +
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
                    }
                }
                // 데이터 json으로 보내기
                xhr.send(JSON.stringify(data));
                
        	}
        	
        	$(function (){
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
        	      let str = "";
        	       if (imgSrc !=null) {
        	           $(".user-img").html(`<img src="\${imgSrc}" class="user_img_msg">`);
        	       } else {
        	    	   
        	       }

        	});        	
        </script>
</body>
</html>