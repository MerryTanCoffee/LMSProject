<%@ page language="java" contentType="text/html; charset=UTF-8" %>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <style>
      #subTable th {
        text-align: center;
        position: sticky;
        top: 0px;
      }

      .tblRow {
        text-align: center;
      }

      .tblRow td:nth-child(3) {
        text-align: left;
      }
    </style>
    <!-- 페이지 타이틀 -->
    <div class="page-titles">
      <ol class="breadcrumb">
        <li><h5 class="bc-title">수강정보</h5></li>
        <li class="breadcrumb-item"><a href="#">
            <svg width="16" height="15" viewBox="0 0 16 15" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path d="M6.46932 12.2102H0.693665" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
				<path d="M9.04547 3.32535H14.8211" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
				<path fill-rule="evenodd" clip-rule="evenodd" d="M4.99912 3.27573C4.99912 2.08805 4.02914 1.125 2.8329 1.125C1.63667 1.125 0.666687 2.08805 0.666687 3.27573C0.666687 4.46342 1.63667 5.42647 2.8329 5.42647C4.02914 5.42647 4.99912 4.46342 4.99912 3.27573Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
				<path fill-rule="evenodd" clip-rule="evenodd" d="M15.3333 12.1743C15.3333 10.9866 14.3641 10.0235 13.1679 10.0235C11.9709 10.0235 11.0009 10.9866 11.0009 12.1743C11.0009 13.3619 11.9709 14.325 13.1679 14.325C14.3641 14.325 15.3333 13.3619 15.3333 12.1743Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
			</svg>
            교과목 </a>
        </li>
        <li class="breadcrumb-item active"><a href="/subject/info">교과목 안내</a></li>
      </ol>
    </div>
    <div class="container-fluid">
      <!-- 표현하고자 하는 내용 넣기 -->
      <div class="row">
      <div class="card">
        <div class="card-header" style="border:none;">
          <div class="col-auto text-center" style="margin-top:10px;">
            교과목구분:
          </div>
          <div class="col-md-2">
            <select name="subSort" id="subSort" class="default-select form-control">
              <option value="ALL">전체</option>
              <option value="전공">전공</option>
              <option value="교양">교양</option>
            </select>
          </div>
          <div class="col-auto text-center" style="margin-top:10px;padding:0;">
            이수형태:
          </div>
          <div class="col-md-2">
            <select name="subType" id="subType" class="default-select form-control">
              <option value="ALL">전체</option>
              <option value="필수">필수</option>
              <option value="선택">선택</option>
            </select>
          </div>
          <div class="col-auto text-center" style="margin-top:10px;padding:0;">
            학과:
          </div>
          <div class="col-md-2">
            <select name="deptCode" id="deptCode" class="default-select form-control">
              <option value="ALL">전체</option>
              <c:forEach var="dept" items="${deptList }">
                <c:choose>
                  <c:when test="${dept.deptCode eq 'UNIV'}">
                    <!-- continue -->
                  </c:when>
                  <c:otherwise>
                    <option value="${dept.deptCode }">${dept.deptName }</option>
                  </c:otherwise>
                </c:choose>
              </c:forEach>
            </select>
          </div>
          <div class="col-auto" style="margin-top: 10px;padding:0;">교과목명:</div>
          <div class="col-md-2">
            <input type="text" class="form-control" name="subName" id="subName">
          </div>
          <div class="col-auto">
            <button type="button" class="btn btn-outline-dark btn-sm" id="searchBtn">
              <i class="bi bi-search"></i> 조회
            </button>
          </div>
        </div>
        <!--card-header 끝-->
        <div class="card-body">
          <div class="row mb-4" id="subInfo">
            <div style="margin-bottom:1%;">
              <!-- <span style="font-size:large; color: #f96d00;">|교과목 정보</span> &nbsp; <span id="totCnt">${totCnt}</span>건 -->
              <span style="font-size: 20px;color: #f96d00;">|</span><span style="font-size: large;"><strong>&nbsp;교과목 정보</strong></span> &nbsp; <span id="totCnt">총 ${totCnt}</span>건
            </div>
            <div class="table-responsive" style="height: 40vh;overflow: auto;">
              <table id="subTable" class="table table-sm table-bordered table-hover">
                <thead>
                  <tr class="table-active">
                    <th>No.</th>
                    <th>과목코드</th>
                    <th>교과목명</th>
                    <th>교과목구분</th>
                    <th>이수형태</th>
                    <th>학</th>
                    <th>강</th>
                    <th>실</th>
                    <th>학과</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach var="subject" items="${subjectList }" varStatus="stat">
                    <tr class="tblRow">
                      <td>${stat.count }</td>
                      <td>${subject.subCode }</td>
                      <td>${subject.subName }</td>
                      <td>${subject.subSort }</td>
                      <td>${subject.subType }</td>
                      <td>${subject.subCredit }</td>
                      <td>${subject.subLecTime }</td>
                      <td>${subject.subPracTime }</td>
                      <td>${subject.deptName }</td>
                      <input type="hidden" name="outlineKo" value="${subject.subOutlineKo}">
                      <input type="hidden" name="outlineEn" value="${subject.subOutlineEn}">
                    </tr>
                  </c:forEach>
                </tbody>
              </table>
            </div>
          </div>
  
          <div class="row">
            <div class="col-md-6">
              <div class="card" style="height:30vh;">
                <div class="card-header pt-3 pb-3">
                  <h5><span style="font-size:20px; color: #f96d00;">|</span><strong>&nbsp;교과목개요(한글)</strong><h5>
                </div>
                  <div card="card-body">
                    <div class="row" style="margin:2%;">
                      <p id="pOutlineKo"></p>
                    </div>
                  </div>
              </div>
            </div>
  
            <div class="col-md-6">
              <div class="card" style="height:30vh;">
                <div class="card-header pt-3 pb-3">
                  <h5><span style="font-size:20px; color: #f96d00;">|</span><strong>&nbsp;교과목개요(영어)</strong></h5>
                </div>
                <div card="card-body">
                  <div class="row" style="margin:2%;">
                    <p id="pOutlineEn"></p>
                  </div>
                </div>
              </div>
            </div>
  
  
          </div>
  
          <!-- <div class="row mb-2">
            <div class="row mb-2">
              <div class="col-3 outline">
                <span>교과목개요(한글)</span>
              </div>
              <div class="col-9 outline2">
                <p id="pOutlineKo"></p>
              </div>
            </div>
            <div class="row mb-2">
              <div class="col-3 outline">
                <span>교과목개요(영어)</span>
              </div>
              <div class="col-9 outline2">
                <p id="pOutlineEn"></p>
              </div>
            </div>
          </div> -->
        </div>
        <!--card-body 끝-->
      </div>
      <!--card 끝-->
    </div>
    <!--row 끝 -->
   </div>
   <!-- container 끝 -->

    <script>
      $(function () {
        let searchBtn = $("#searchBtn");
        let lecInfo = null;

        searchBtn.on("click", function () {

          let data = {
            subSort: $("#subSort").val(),
            subType: $("#subType").val(),
            deptCode: $("#deptCode").val(),
            subName: $("#subName").val()
          }
          console.log("보냄:", data);

          $.ajax({
            type: "post",
            url: "/subject/search",
            data: JSON.stringify(data),
            contentType: "application/json; charset:UTF-8",
            success: function (res) {
              console.log(res);
              console.log($("table > tbody"));
              $("table > tbody").empty();
              if (res.length > 0) {
                $.each(res, function (index, item) {
                  index = index + 1;
                  let str = "<tr class='tblRow'>";
                  str += "<td>" + index + "</td>";
                  str += "<td>" + item.subCode + "</td>";
                  str += `<td>\${item.subName}</td>`;
                  str += `<td>\${item.subSort}</td>`;
                  str += `<td>\${item.subType}</td>`;
                  str += `<td>\${item.subCredit}</td>`;
                  str += `<td>\${item.subLecTime}</td>`;
                  str += `<td>\${item.subPracTime}</td>`;
                  str += `<td>\${item.deptName}</td>`;
                  str += `<input type='hidden' name='outlineKo' value='\${item.subOutlineKo}'>`
                  str += `<input type='hidden' name='outlineEn' value='\${item.subOutlineEn}'>`
                  str += "</tr>"
                  $("table > tbody").append(str);
                });
                $("#totCnt").empty();
                $("#totCnt").text(res.length);
              }
            }
          });
        });
        $(document).on("click", ".tblRow", function () {
          if(lecInfo){
            lecInfo.attr("style", "");
          }
          console.log("체크", $(this).find('input:eq(0)').val());
          if ($(this).find('input:eq(0)').val() == 'null') {
            $("#pOutlineKo").text(" ");
          } else {
            $("#pOutlineKo").text($(this).find('input:eq(0)').val());
          }
          if ($(this).find('input:eq(1)').val() == 'null') {
            $("#pOutlineEn").text(" ");
          } else {
            $("#pOutlineEn").text($(this).find('input:eq(1)').val());
          }
          lecInfo = $(this);
          $(this).css("background-color", "lightblue");
        });
      });
    </script>