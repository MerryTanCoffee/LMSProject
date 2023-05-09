<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 페이지 타이틀 -->
<!-- 페이지 타이틀 -->
<div class="page-titles">
    <ol class="breadcrumb">
    <li><h5 class="bc-title">수강정보</h5></li>
    <li class="breadcrumb-item"><a href="javascript:void(0)">
        <svg width="16" height="15" viewBox="0 0 16 15" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path d="M6.46932 12.2102H0.693665" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
			<path d="M9.04547 3.32535H14.8211" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
			<path fill-rule="evenodd" clip-rule="evenodd" d="M4.99912 3.27573C4.99912 2.08805 4.02914 1.125 2.8329 1.125C1.63667 1.125 0.666687 2.08805 0.666687 3.27573C0.666687 4.46342 1.63667 5.42647 2.8329 5.42647C4.02914 5.42647 4.99912 4.46342 4.99912 3.27573Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
			<path fill-rule="evenodd" clip-rule="evenodd" d="M15.3333 12.1743C15.3333 10.9866 14.3641 10.0235 13.1679 10.0235C11.9709 10.0235 11.0009 10.9866 11.0009 12.1743C11.0009 13.3619 11.9709 14.325 13.1679 14.325C14.3641 14.325 15.3333 13.3619 15.3333 12.1743Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
		</svg>
        수강 </a>
    </li>
    <li class="breadcrumb-item active"><a href="javascript:void(0)">수강중인 강의</a></li>
</ol>
</div>
<div class="container-fluid">
    <!-- 시간표 모달 -->
    <div class="modal fade" id="timeTblModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-3" id="exampleModalLabel"> 시간표</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="table-responsive">
                        <table class="table table-bordered text-center" id="timeTbl">
                            <thead>
                                <tr class="bg-light">
                                    <th style="width: 10%;"></th>
                                    <th style="width: 18%;">월</th>
                                    <th style="width: 18%;">화</th>
                                    <th style="width: 18%;">수</th>
                                    <th style="width: 18%;">목</th>
                                    <th style="width: 18%;">금</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td data-bs-toggle="tooltip" data-bs-title="9:00 ~ 10:00" data-bs-placement="left">1교시</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td data-bs-toggle="tooltip" data-bs-title="10:00 ~ 11:00" data-bs-placement="left">2교시</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td data-bs-toggle="tooltip" data-bs-title="11:00 ~ 12:00" data-bs-placement="left">3교시</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td data-bs-toggle="tooltip" data-bs-title="12:00 ~ 13:00" data-bs-placement="left">4교시</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td data-bs-toggle="tooltip" data-bs-title="13:00 ~ 14:00" data-bs-placement="left">5교시</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td data-bs-toggle="tooltip" data-bs-title="14:00 ~ 15:00" data-bs-placement="left">6교시</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td data-bs-toggle="tooltip" data-bs-title="15:00 ~ 16:00" data-bs-placement="left">7교시</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td data-bs-toggle="tooltip" data-bs-title="16:00 ~ 17:00" data-bs-placement="left">8교시</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td data-bs-toggle="tooltip" data-bs-title="17:00 ~ 18:00" data-bs-placement="left">9교시</td>
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
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                </div>
            </div>
        </div>
    </div>


    <!-- 내 기본정보 -->
    <div class="row">
        <div class="col-xl-12">
            <div class="card pb-2">
                <div class="card-body" style="border:none;">
                    <div class="row">
                        <div class="col-md-1 text-center" style="margin-top: 10px; padding: 0;">
                            학년도:
                        </div>
                        <div class="col-md-1" style="padding:0;">
                            <input type="text" name="" value="${currentInfo.year}" disabled="disabled" class="form-control">
                        </div>

                        <div class="col-md-1 text-center" style="margin-top: 10px; padding: 0;">
                            학기:
                        </div>
                        <div class="col-md-1" style="padding:0;">
                            <input type="text" name="" value="${currentInfo.semester}" disabled="disabled" class="form-control">
                        </div>
                        <div class="col-md-1 text-center" style="margin-top: 10px; padding: 0;">
                            학번:
                        </div>
                        <div class="col-md-2" style="padding:0;">
                            <input type="text" name="" value="${sessionScope.userInfo.userId}" disabled="disabled" class="form-control">
                        </div>
                        <div class="col-md-1 text-center" style="margin-top: 10px; padding: 0;">
                            이름:
                        </div>
                        <div class="col-md-1" style="padding:0;">
                            <input type="text" name="" value="${sessionScope.userInfo.studentVO.stuNameKo}" disabled="disabled" class="form-control">
                        </div>
                        <div class="col-md-1 text-center" style="margin-top: 10px; padding: 0;">
                            학부(과):
                        </div>
                        <div class="col-md-2">
                            <input type="text" name="" value="${sessionScope.userInfo.studentVO.academicVO.deptName}" disabled="disabled" class="form-control">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 내 기본 정보 표시 끝-->

    <div class="card" style="">
            <div class="card-header" style="padding-bottom:10px">
                    <h4><span><span style="font-size:20px; color: #f96d00">|</span>
                    <strong>&nbsp;수강중인 강의</strong></span></h4>
            </div>
            <div class="card-body">
                <div class="d-flex flex-row-reverse">
                    <button type="button" id="timeTblViewBtn" class="btn btn-xs btn-success" data-bs-toggle="modal" data-bs-target="#timeTblModal">시간표 보기</button>
                </div>
                <div class="table-responsive">
                    <table class="table text-center table-hover">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>과목명</th>
                                <th>분반</th>
                                <th>이수구분</th>
                                <th>학점</th>
                                <th>담당교수</th>
                                <th>강의시간</th>
                                <th>강의실</th>
                            </tr>
                        </thead>
                        <tbody>
                        	<c:forEach items="${myCourseList }" var="myCourse" varStatus="i">
	                            <tr>
	                                <td>${i.count }</td>
	                                <td style="text-align:left;">${myCourse.subName }</td>
	                                <td>0${myCourse.lecDivide }</td>
	                                <td>${myCourse.subSort }/${myCourse.subType }</td>
	                                <td>${myCourse.subCredit }</td>
	                                <td>${myCourse.proNameKo }</td>
	                                <td>${myCourse.weekName } ${myCourse.startTime }시 ~ ${myCourse.endTime }시</td>
	                                <td>${myCourse.hallName }(${myCourse.lrNum })</td>
	                            </tr>
                        	</c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
    </div>
    <!-- row 끝 -->

</div>

<script>
    let COLOR_SET = ["#42BAFF","#00DC6D","#F1BE5B","#FFA6E9", "#FFFD66",
                "#90827a","#FF7F32","#E191FF","#85E4FF","#FFAB6E"];
    let myTimeTableString = ${myTimeTable};
    let myTime = [];
    myTime = myTimeTableString;
    console.log("나의 시간표 리스트 객체>>", myTime);

    displayLecInfo(myTime);

    function displayLecInfo(timeTblList) {
            let table = document.getElementById("timeTbl");

            for (i = 0; i < timeTblList.length; i++) {
                let startRow = (parseInt(timeTblList[i].lrsStart.substr(1)) - 9) + 1;
                let endRow = (parseInt(timeTblList[i].lrsEnd.substr(1)) - 9) + 1;
                let dayCol = 0;

                switch (timeTblList[i].weekCode) {
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

                let subName = timeTblList[i].subName;
                let lecDivide = timeTblList[i].lecDivide + "분반";
                let proName = timeTblList[i].proNameKo;
                let credit = parseInt(timeTblList[i].subCredit);
                let color = COLOR_SET[i % COLOR_SET.length];

                // 시간표에 강의명, 분반, 교수명, 과목별 배경색 표시
                if (credit == 1) {  // 1학점 강의일 때
                    for (let j = startRow; j <= endRow; j++) {
                        let cell = table.rows[j].cells[dayCol];
                        $(cell).css("line-height", 1.2);
                        cell.innerHTML = `<span style="font-size: 13px">\${subName}<br>\${lecDivide} \${proName}</span>`;
                        cell.style.backgroundColor = color;
                    }
                }
                if (credit >= 2) {  // 2학점 이상 강의일 때
                    for (let j = startRow; j <= endRow; j++) {
                        let cell = table.rows[j].cells[dayCol];
                        $(cell).css("line-height", "");
                        if (j == startRow) {
                            cell.innerHTML = `<span style="font-size: 13px">\${subName}`;
                        }
                        if (j == (startRow + 1)) {
                            cell.innerHTML = `<span style="font-size: 13px">\${lecDivide} \${proName}</span>`;
                        }
                        cell.style.backgroundColor = color;
                    }
                }
            }
        }

</script>