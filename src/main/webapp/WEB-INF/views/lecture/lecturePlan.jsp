<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8" %>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <style>
      #tbl1, #tbl2, #tbl3, #tbl4 th, td{
        text-align: center;
      } 
      
      #tbl1 td:nth-child(2){
        text-align: left;
      }
      #tbl2 td:nth-child(3){
      	padding-left: 1.2rem; 
        text-align: left;
      }
      
      .tblDiv {
      	padding-right: 0.3rem;
/*         border: 1px solid #6e6e6e; */
        border-radius: 4px;
        height: 300px;
        overflow: auto;
      }
      th {
        position: sticky;
        top: 0;
      }
      .appl td{
        padding-top: 0.2rem;
        padding-bottom: 0.2rem;
      }
      #tbl2 tr td{
        padding-top: 0.56rem;
        padding-bottom: 0.56rem;
      }
      .statusBtn{
        cursor: pointer;
      }

    </style>

    <!-- 페이지 타이틀 -->
    <div class="page-titles">
      <ol class="breadcrumb">
        <li><h5 class="bc-title">강의관리</h5></li>
        <li class="breadcrumb-item"><a href="javascript:void(0)">
            <svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path fill-rule="evenodd" clip-rule="evenodd" d="M2.75 5.95833C2.75 3.55189 2.77577 2.75 5.95833 2.75C9.1409 2.75 9.16667 3.55189 9.16667 5.95833C9.16667 8.36478 9.17682 9.16667 5.95833 9.16667C2.73985 9.16667 2.75 8.36478 2.75 5.95833Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
				<path fill-rule="evenodd" clip-rule="evenodd" d="M12.8333 5.95833C12.8333 3.55189 12.8591 2.75 16.0416 2.75C19.2242 2.75 19.25 3.55189 19.25 5.95833C19.25 8.36478 19.2601 9.16667 16.0416 9.16667C12.8232 9.16667 12.8333 8.36478 12.8333 5.95833Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
				<path fill-rule="evenodd" clip-rule="evenodd" d="M2.75 16.0417C2.75 13.6352 2.77577 12.8333 5.95833 12.8333C9.1409 12.8333 9.16667 13.6352 9.16667 16.0417C9.16667 18.4481 9.17682 19.25 5.95833 19.25C2.73985 19.25 2.75 18.4481 2.75 16.0417Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
				<path fill-rule="evenodd" clip-rule="evenodd" d="M12.8333 16.0417C12.8333 13.6352 12.8591 12.8333 16.0416 12.8333C19.2242 12.8333 19.25 13.6352 19.25 16.0417C19.25 18.4481 19.2601 19.25 16.0416 19.25C12.8232 19.25 12.8333 18.4481 12.8333 16.0417Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
			</svg>
            강의개설 </a>
        </li>
        <li class="breadcrumb-item active"><a href="#">강의개설 신청</a></li>
      </ol>
    </div>
    <div class="container-fluid">
      <!-- 표현하고자 하는 내용 넣기 -->
      <div class="card">
        <div class="card-body"> 
          <div class="row pt-0" style="padding:10px;">
<!--             <div class="col-2"> -->
<!--               <button type="button" class="btn btn-outline-dark btn-sm"> -->
<!--                 <i class="bi bi-search me-2"></i>조회 -->
<!--               </button> -->
<!--             </div> -->
              <div class="card-body pb-3 pt-0" style="background-color: #eb060633; border-radius: 5px;">
                  <p class="pt-3 m-0" style="font-size:16px;">&lt; 강의개설신청 시 안내사항 &gt;</p>
                    <code style="background-color: #ffe2e200; color:red; ">1.</code> 강의건물, 강의실, 강의시간은 개설신청 승인 시, 관리자가 배정해줍니다.<br> 
                    <code style="background-color: #ffe2e200; color:red; ">2.</code> 다른교수가 개설한 강의를 신청할 시, 분반이 다르게 배정됩니다.<br>
              </div>
          </div>
          <div class="row">    	
            <div class="col-xl-12 d-flex flex-row-reverse">
	              <button type="button" class="btn btn-outline-primary btn-sm" id="regiBtn">개설신청</button>
            </div>
          </div>
<!--           <hr> -->
          <div class="row mb-2">
            <div class="col-5 fs-4"><span style="color: #f96d00;">|</span> <strong>개설신청 현황</strong></div>
            <div class="col-7 fs-4"><span style="color: #f96d00;">|</span> <strong><span id="currentYear">${currentInfo.year}</span>년도 &nbsp;</strong> 
              <strong><span id="currentSemester">${currentInfo.semester}</span> 학기</strong></div>
          </div>
          <div class="row mb-4">
            <div class="col-5">
              <div class="table-responsive tblDiv"> 
                <table class="table table-sm table-bordered table-hover" id="tbl1">
                  <thead>
                    <tr class="table-active">
                      <th style="width: 10%;">#</th>
                      <th style="width: 45%;">과목명</th>
                      <th style="width: 30%;">신청일자</th>
                      <th style="width: 15%;">승인여부</th>
                    </tr>
                  </thead>
                  <tbody>
                  <c:forEach items="${applicationList }" var="appl" varStatus="stat">
                    <tr class="appl"
                    data-sub-code="${appl.subCode}"
                    data-sub-name="${appl.subName}"
                    data-lec-divide="${appl.lecDivide}"
                    data-sub-credit="${appl.subCredit}"
                    data-dept-name="${appl.deptName}"
                    data-lec-grade="${appl.lecGrade}"
                    data-lec-quota="${appl.lecQuota}"
                    data-lec-open-year="${appl.lecOpenYear}"
                    data-lec-open-semester="${appl.lecOpenSemester}"
                    data-lec-language="${appl.lecLanguage}"
                    data-lec-online="${appl.lecOnline}"
                    data-hall-name="${appl.hallName}"
                    data-lr-code="${appl.lecRoomSchedule.lrCode}"
                    data-week-code="${appl.lecRoomSchedule.weekCode}"
                    data-lrs-start="${appl.lecRoomSchedule.lrsStart}"
                    data-lrs-end="${appl.lecRoomSchedule.lrsEnd}"
                    data-lec-attend-rate="${appl.lecAttendRate}"
                    data-lec-task-rate="${appl.lecTaskRate}"
                    data-lec-mexam-rate="${appl.lecMexamRate}"
                    data-lec-fexam-rate="${appl.lecFexamRate}"
                    data-lec-book="${appl.lecBook}"
                    data-lec-comment="${appl.lecComment}"
                    <c:forEach items="${appl.lecIdxList }" var="lecIdx" varStatus="i">
                      data-li-content${i.index}="${lecIdx.liContent}"
                      data-li-note${i.index}="${lecIdx.liNote}"
                    </c:forEach>
                    >
                      
                      <td>${stat.count }</td>
                      <td>${appl.subName }</td>
                      <td>
                        <fmt:formatDate value="${appl.lecApplDate }" pattern="yyyy-MM-dd"/>
                      </td>
                      <td>
                        <c:choose>
                          <c:when test="${appl.lecStatus eq 'W'}">
                            <span class="badge light badge-warning statusBtn" data-bs-toggle="modal" data-bs-target="#applModal">대기</span>
                          </c:when>
                          <c:when test="${appl.lecStatus eq 'Y'}">
                            <span class="badge light badge-success statusBtn" data-bs-toggle="modal" data-bs-target="#applModal">승인</span>
                          </c:when>
                          <c:when test="${appl.lecStatus eq 'N'}">
                            <span class="badge light badge-danger statusBtn" data-bs-toggle="modal" data-bs-target="#applModal">반려</span>
                          </c:when>
                        </c:choose>
                      </td>
                      
      
                    </tr>
                  </c:forEach>
                  </tbody>
                </table>
              </div>
            </div>
            <div class="col-7">
              <div class="table-responsive tblDiv">
                <table class="table table-sm table-bordered table-hover" id="tbl2">
                  <thead>
                    <tr class="table-active">
                      <th style="width: 5%;">#</th>
                      <th style="width: 15%;">과목코드</th>
                      <th style="width: 40%;">교과목명</th>
                      <th style="width: 10%;">구분</th>
                      <th style="width: 15%;">이수형태</th>
                      <th style="width: 5%;">학</th>
                      <th style="width: 5%;">강</th>
                      <th style="width: 5%;">실</th>
                    </tr>
                  </thead>
                  <tbody>
                  <c:forEach items="${proSubjectList }" var="subject" varStatus="stat">
                    <tr class="subject">
                      <td>${stat.count }</td>
                      <td>${subject.subCode }</td>
                      <td>${subject.subName }</td>
                      <td>${subject.subSort }</td>
                      <td>${subject.subType }</td>
                      <td>${subject.subCredit }</td>
                      <td>${subject.subLecTime }</td>
                      <td>${subject.subPracTime }</td>
                      <input type="hidden" name="" value="${subject.hallName}">
                      <input type="hidden" name="" value="${subject.deptName}">
                    </tr>
                  </c:forEach>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
<!--           <hr> --> 
          <form action="/lecture/register" method="post" id="lecPlanFrm">
            <div class="row mb-4">
              <div class="col">
                <div class="default-tab">
                  <ul class="nav nav-tabs" role="tablist">
                    <li class="nav-item">
                      <a class="nav-link active" data-bs-toggle="tab" href="#home">강의기본</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" data-bs-toggle="tab" href="#method">수업방법</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" data-bs-toggle="tab" href="#contact">학습내용</a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="tab-content">
                <div class="tab-pane fade show active" id="home" role="tabpanel">
                  <div class="pt-4">
                    <div class="row">
                      <div class="col-6">
                        <div class="input-group">
                          <span class="input-group-text">교과목코드/명</span>
                          <input type="text" name="subCode" id="subCode" class="form-control" readonly required>
                          <input type="text" name="subName" id="subName" class="form-control" readonly required>
                        </div>
                      </div>
                      <div class="col-3">
                        <div class="input-group mb-3">
                          <span class="input-group-text">분반</span>
                          <input type="number" name="lecDivide" class="form-control" id="lecDivide" readonly required>
                        </div>
                      </div>
                      <div class="col-3">
                        <div class="input-group mb-3">
                          <span class="input-group-text">학점</span>
                          <input type="text" name="subCredit" id="subCredit" class="form-control" readonly required> 
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-6">
                        <div class="input-group mb-3">
                          <span class="input-group-text">대상학과</span>
                          <input type="text" name="deptName" id="deptName" class="form-control" readonly required>
                        </div>
                      </div>
                      <div class="col-3">
                        <div class="input-group mb-3">
                          <span class="input-group-text">대상학년</span>
                          <input type="number" name="lecGrade" class="form-control" id="lecGrade" placeholder="입력해주세요." required>
                        </div>
                      </div>
                      <div class="col-3">
                        <div class="input-group mb-3">
                          <span class="input-group-text">수강정원</span>
                          <input type="number" name="lecQuota" class="form-control" id="lecQuota" placeholder="입력해주세요." required>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-3">
                        <div class="input-group mb-3">
                          <span class="input-group-text">개설연도</span>
                          <input type="number" name="lecOpenYear" class="form-control" id="lecOpenYear" placeholder="입력해주세요." required>
                        </div>
                      </div>
                      <div class="col-3">
                        <div class="input-group mb-3">
                          <span class="input-group-text">개설학기</span>
                          <select class="form-select form-select-lg border" name="lecOpenSemester" id="lecOpenSemester" required>
                            <option selected>선택</option>
                            <option value="1">1학기</option>
                            <option value="2">2학기</option>
                          </select>
                        </div>
                      </div>
                      <div class="col-3">
                        <div class="input-group mb-3">
                          <span class="input-group-text">강의언어</span>
                          <input type="text" name="lecLanguage" id="lecLanguage" class="form-control" required>
                        </div>
                      </div>
                      <div class="col-3">
                        <div class="input-group mb-3">
                          <span class="input-group-text">온라인수업여부</span>
                          <select class="form-select form-select-lg border" id="lecOnline" name="lecOnline" required>
                            <option selected>선택</option>
                            <option value="N">N</option>
                            <option value="Y">Y</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-3">
                        <div class="input-group mb-3">
                          <span class="input-group-text">강의건물</span>
                          <input type="text" name="hallName" id="hallName" class="form-control" readonly required>
                        </div>
                      </div>
                      <div class="col-3">
                        <div class="input-group mb-3">
                          <span class="input-group-text">강의실</span>
                          <input type="text" name="lrNum" id="lrNum" class="form-control" readonly>
                        </div>
                      </div>
                      <div class="col-6">
                        <div class="input-group mb-3">
                          <span class="input-group-text">강의시간</span>
                          <input type="text" name="" id="weekName" class="form-control" placeholder="요일" readonly>
                          <input type="text" name="" id="lrsStart" class="form-control" placeholder="시작시간" readonly>
                          <input type="text" name="" id="lrsEnd" class="form-control" placeholder="종료시간" readonly>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-3">
                        <div class="input-group mb-3">
                          <span class="input-group-text">담당교수</span>
                          <input type="text" name="proNameKo" class="form-control" value="${sessionScope.userInfo.professorVO.proNameKo }" readonly>
                          <input type="hidden" name="proId" class="form-control" value="${sessionScope.userInfo.professorVO.proId }">
                        </div>
                      </div>
                      <div class="col-6">
                        <div class="input-group mb-3">
                          <span class="input-group-text">Email</span>
                          <input type="text" name="" class="form-control" value="${sessionScope.userInfo.professorVO.proEmail}" readonly>
                        </div>
                      </div>
                      <div class="col-3">
                        <div class="input-group mb-3">
                          <span class="input-group-text">연락처</span>
                          <input type="text" name="" class="form-control" value="${sessionScope.userInfo.professorVO.proLabTel}" readonly>
                        </div>
                      </div>
                    </div>
                    
                  </div>
                </div>
                <div class="tab-pane fade" id="method">
                  <div class="pt-4">
                    <div class="row">
                      <div class="col-2 fs-4 d-flex justify-content-center align-self-center">
                        <span>성적반영비율(%)</span>
                      </div>
                      <div class="col-10">
                        <div class="table-responsive">
                          <table class="table table-sm table-bordered" id="tbl3">
                            <thead>
                              <tr class="table-active">
                                <th>출석</th>
                                <th>과제</th>
                                <th>중간고사</th>
                                <th>기말고사</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>
                                  <input type="number" name="lecAttendRate" id="lecAttendRate" class="form-control" required>
                                </td>
                                <td>
                                  <input type="number" name="lecTaskRate" id="lecTaskRate" class="form-control" required>
                                </td>
                                <td>
                                  <input type="number" name="lecMexamRate" id="lecMexamRate" class="form-control" required>
                                </td>
                                <td>
                                  <input type="number" name="lecFexamRate" id="lecFexamRate" class="form-control" required>
                                </td>
                              </tr>
                            </tbody>
                          </table>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-2 fs-4 d-flex justify-content-center align-self-center">
                        <span>주교재</span>
                      </div>
                      <div class="col-10">
                        <input type="text" name="lecBook" id="lecBook" class="form-control">
                      </div>
                    </div>
                  </div>
                </div>
                <div class="tab-pane fade" id="contact">
                  <div class="pt-4">
                    <div class="row">
                      <div class="col fs-4 mb-2">
                        <span>| 수업정보</span>
                      </div>
                    </div>
                    <div class="row" style="overflow:scroll;height:40vh;">
                      <div class="table-responsive">
                        <table class="table table-sm table-bordered" id="tbl4">
                          <thead>
                            <tr class="table-active">
                              <th style="width: 15%;">주차</th>
                              <th style="width: 70%;">수업내용</th>
                              <th style="width: 15%;">비고</th>
                            </tr>
                          </thead>
                          <tbody>
                          <c:forEach step="1" begin="0" end="15" var="i">
                            <tr>
                              <td>
                                <input type="hidden" name="lecIdxList[${i}].liWeek" class="form-control liWeek" value="${i+1 }주차">
                                ${i+1 }주차
                              </td>
                              <td>
                                <div class="form-floating">
                                  <textarea class="form-control" id="liContent${i}" name="lecIdxList[${i}].liContent" style="border: none; outline:none;padding-top: 0;"></textarea>
                                </div>
                              </td>
                              <td>
                                <div class="form-floating">
                                  <textarea class="form-control" id="liNote${i}" name="lecIdxList[${i}].liNote" style="border: none; outline:none;padding-top: 0;"></textarea>
                                </div>
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
          </form>
        </div>
      </div>
    </div>

<!-- Modal -->
<div class="modal fade" id="applModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title" id="exampleModalLabel">처리내용</h3>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <p id="applComment"></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
        <!-- <button type="button" class="btn btn-primary">확인</button> -->
      </div>
    </div>
  </div>
</div>
    <script>
      $(function () {
        let select = null;

        $(document).on("click", ".subject", function () {
          if(select){
            select.css("background-color", "");
          }
          select = $(this);
          $(this).css("background-color", "lightblue");

          console.log("교과코드:", $(this));
          $("#subCode").attr('value', "");
          $("#subName").attr('value', "");
          $("#lecDivide").attr('value', 0);
          $("#subCredit").attr('value', "");
          $("#deptName").attr('value', "");
          $("#lecGrade").attr('value', "");
          $("#lecQuota").attr('value', "");
          $("#lecOpenYear").attr('value', "");
          $("#lecOpenSemester").val("선택");
          $("#lecLanguage").attr('value', "");
          $("#lecOnline").val("선택");
          $("#hallName").attr('value', "");
          $("#lrNum").attr('value', "");
          $("#weekName").attr('value', "");
          $("#lrsStart").attr('value', "");
          $("#lrsEnd").attr('value', "");
          $("#lecAttendRate").attr('value', "");
          $("#lecTaskRate").attr('value', "");
          $("#lecMexamRate").attr('value', "");
          $("#lecFexamRate").attr('value', "");
          $("#lecBook").attr('value', "");
          $("#applComment").val("");
          for (let i = 0; i < 16; i++) {
            $("#liContent"+i).val("");
            $("#liNote"+i).val("");
          }

          let subCode = $(this).find('td:eq(1)').text();  // 교과코드
          let subName = $(this).find('td:eq(2)').text();  // 교과목명
          let subCredit = $(this).find('td:eq(5)').text();  // 학점

          $("#subCode").attr('value', subCode);
          $("#subName").attr('value', subName);
          $("#subCredit").attr('value', subCredit);
          $("#lecOpenYear").attr('value', $("#currentYear").text());
          $("#lecOpenSemester option[value='" + $("#currentSemester").text() + "']").prop("selected", true);
          $("#hallName").attr('value', $(this).find('input:eq(0)').val());
          $("#deptName").attr('value', $(this).find('input:eq(1)').val());
        });

        let lecPlanFrm = $("#lecPlanFrm");
        let regiBtn = $("#regiBtn");

        /* 개설 신청하기 */
        regiBtn.on("click", function () {
          console.log("신청버튼");
          if($("#subCode").val() == null || $("#subCode").val() == ""){
        // alert("교과목을 선택해주세요.");
            Swal.fire(
		      '과목 선택',
		      '교과목을 선택해 주세요.',
		      'warning'
			)
            return false;
          }
          if($("#lecGrade").val() == null || $("#lecGrade").val() == ""){
        //  alert("대상학년을 입력해주세요.");
            Swal.fire(
     		  '학년 선택',
   		      '대상학년을 입력해주세요.',
   		      'warning'
   			)
            return false;
          }
          if($("#lecQuota").val() == null || $("#lecQuota").val() == ""){
        //  alert("수강정원을 입력해주세요.");
        	Swal.fire(
     		  '정원 입력',
   		      '수강정원을 입력해주세요.',
   		      'warning'
   			)
            return false;
          }
          if($("#lecOpenYear").val() == null || $("#lecOpenYear").val() == ""){
        //  alert("개설연도를 입력해주세요.");
        	Swal.fire(
     		  '개설연도 입력',
   		      '개설연도를 입력해주세요.',
   		      'warning'
   			)        
            return false;
          }
          if($("#lecOpenSemester").val() == null || $("#lecOpenSemester").val() == "" || $("#lecOpenSemester").val() == "선택"){
        //  alert("개설학기를 입력해주세요.");
        	Swal.fire(
              '개설학기 입력',
     	      '개설학기를 입력해주세요.',
     	      'warning'
   			)             
            return false;
          }
          if($("#lecLanguage").val() == null || $("#lecLanguage").val() == ""){
      //    alert("강의언어를 입력해주세요.");
            Swal.fire(
              '강의언어 입력',
     	      '강의언어를 입력해주세요.',
     	      'warning'
   			)
            return false;
          }
          if($("#lecOnline").val() == null || $("#lecOnline").val() == "" || $("#lecOnline").val() == "선택"){
       //   alert("온라인 수업여부를 입력해주세요.");
       		Swal.fire(
              '수업여부 선택',
     	      '온라인 수업여부를 입력해주세요.',
     	      'warning'
   			)	
            return false;
          }
          if($("#lecAttendRate").val() == null || $("#lecAttendRate").val() == ""){
      //    alert("출석 반영비율을 입력해주세요.");
      		Swal.fire(
              '반영비율 입력',
     	      '출석 반영비율을 입력해주세요.',
     	      'warning'
   			)
            return false;
          }
          if($("#lecTaskRate").val() == null || $("#lecTaskRate").val() == ""){
     //     alert("과제 반영비율을 입력해주세요.");
     		Swal.fire(
              '반영비율 입력',
     	      '과제 반영비율을 입력해주세요.',
     	      'warning'
   			)
            return false;
          }
          if($("#lecMexamRate").val() == null || $("#lecMexamRate").val() == ""){
      //    alert("중간고사 반영비율을 입력해주세요.");
      		Swal.fire(
              '반영비율 입력',
     	      '중간고사 반영비율을 입력해주세요.',
     	      'warning'
   			)
            return false;
          }
          if($("#lecFexamRate").val() == null || $("#lecFexamRate").val() == ""){
       //   alert("기말고사 반영비율을 입력해주세요.");
       		Swal.fire(
              '반영비율 입력',
     	      '기말고사 반영비율을 입력해주세요.',
     	      'warning'
   			)
            return false;
          }
          if($("#lecBook").val() == null || $("#lecBook").val() == ""){
    //      alert("수업 교재를 입력해주세요.");
    		Swal.fire(
              '수업교재 입력',
     	      '수업 교재를 입력해주세요.',
     	      'warning'
   			)
            return false;
          }
          /*
          if (!confirm("강의계획서를 제출하시겠습니까?")) {
            return false;
          } else {
            lecPlanFrm.submit();
          }
          */
  		Swal.fire({
			  title: '강의개설 신청',
			  html : '입력하신 강의계획서를 제출하시겠습니까?',
			  icon: 'question',
			  showCancelButton: true,
			  confirmButtonText: 'Yes'
			}).then((result) => {
			  if (result.isConfirmed) {
				  lecPlanFrm.submit();
			  } else {
				  Swal.fire(
				      '신청 중단',
				      '강의개설 신청이 중단되었습니다!',
				      'error'
				  )
			  }
			});          
          
        });

        /* 과목 클릭시 양식에 데이터 바인딩 함수 */
        $(document).on("click", ".appl", function () {
          if(select){
            select.css("background-color", "");
          }
          select = $(this);
          $(this).css("background-color", "lightblue");

          console.log($(this).data("subCode"));
          $("#subCode").attr('value', $(this).data("subCode"));
          $("#subName").attr('value', $(this).data("subName"));
          $("#lecDivide").attr('value', $(this).data("lecDivide"));
          $("#subCredit").attr('value', $(this).data("subCredit"));
          $("#deptName").attr('value', $(this).data("deptName"));
          $("#lecGrade").attr('value', $(this).data("lecGrade"));
          $("#lecQuota").attr('value', $(this).data("lecQuota"));
          $("#lecOpenYear").attr('value', $(this).data("lecOpenYear"));
          $("#lecOpenSemester").val($(this).data("lecOpenSemester"));
          $("#lecLanguage").attr('value', $(this).data("lecLanguage"));
          $("#lecOnline").val($(this).data("lecOnline"));
          $("#hallName").attr('value', $(this).data("hallName"));
          $("#lrNum").attr('value', $(this).data("lrCode").substr(4));
          $("#weekName").attr('value', weekNameToCode($(this).data("weekCode")));
          $("#lrsStart").attr('value', $(this).data("lrsStart").substr(1)+":00");
          $("#lrsEnd").attr('value', (parseInt($(this).data("lrsEnd").substr(1))+1)+":00");
          $("#lecAttendRate").attr('value', parseInt($(this).data("lecAttendRate")));
          $("#lecTaskRate").attr('value', parseInt($(this).data("lecTaskRate")));
          $("#lecMexamRate").attr('value', parseInt($(this).data("lecMexamRate")));
          $("#lecFexamRate").attr('value', parseInt($(this).data("lecFexamRate")));
          $("#lecBook").attr('value', $(this).data("lecBook"));
          $("#applComment").text($(this).data("lecComment"));
          for (let i = 0; i < 16; i++) {
            $("#liContent"+i).val($(this).data("liContent"+i));
            $("#liNote"+i).val($(this).data("liNote"+i));
          }
        })

      });

      const weekNameToCode = function (weekCode) {
        if (weekCode == "MON") {
          return "월요일"
        }
        if (weekCode == "TUE") {
          return "화요일"
        }
        if (weekCode == "WED") {
          return "수요일"
        }
        if (weekCode == "THU") {
          return "목요일"
        }
        if (weekCode == "FRI") {
          return "금요일"
        }
      }
    </script>