<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<title>student score list</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.7.20/c3.min.css">
<style>
th {
	text-align: center;
}

td {
	text-align: center;
}
#subTable th {
        text-align: center;
        position: sticky;
        top: 0px;
      }
/*    .c3 svg { 
    background-color: black;
 }  */

.c3 .c3-axis-x path, .c3 .c3-axis-x line, .c3 .c3-axis-y path, .c3 .c3-axis-y line, .tick text {
	stroke: black;
}

</style>
<body>

	<!-- 이곳에는 학생의 개인 점수 조회..만 들어갈 것이다. -->
<!-- 페이지 타이틀 -->
<div class="page-titles">
   <ol class="breadcrumb">
      <li><h5 class="bc-title">전체학기 성적조회</h5></li>
      <li class="breadcrumb-item"><a href="javascript:void(0)">
         <svg width="17" height="17" viewBox="0 0 17 17" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M2.125 6.375L8.5 1.41667L14.875 6.375V14.1667C14.875 14.5424 14.7257 14.9027 14.4601 15.1684C14.1944 15.4341 13.8341 15.5833 13.4583 15.5833H3.54167C3.16594 15.5833 2.80561 15.4341 2.53993 15.1684C2.27426 14.9027 2.125 14.5424 2.125 14.1667V6.375Z" stroke="#2C2C2C" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M6.375 15.5833V8.5H10.625V15.5833" stroke="#2C2C2C" stroke-linecap="round" stroke-linejoin="round"/>
         </svg>
         성적 </a>
      </li>
      <li class="breadcrumb-item active"><a href="javascript:void(0)">전체학기 성적조회</a></li>
   </ol>
</div>
<div class="container-fluid">

   <!-- 표현하고자 하는 내용 넣기 -->

	<div class="card">
		<div class="card-body" style="width: 100%;">
			<div class="row mb-4" id="subInfo">
				<div style="margin-bottom: 1%;">
					<span style="font-size: large; color: #f96d00;">|</span>
					<span style="font-size: large; display: inline;">전체학기 성적 &nbsp;&nbsp;&nbsp;
						<select id="selectYear" name="openYear" class="form-control" 
						style="width: 200px; display: inline;" onchange="filterTable()">
							<option selected>==해당연도/학기 선택==</option>
							<c:forEach items="${selectboxYearSeme}" var="scoreVO">
								<option value="${scoreVO.lecOpenYear},${scoreVO.lecOpenSemester }">${scoreVO.lecOpenYear}년 ${scoreVO.lecOpenSemester }학기</option>
							</c:forEach>
						</select>
					</span> &nbsp;
				</div>
		
				<div class="table-responsive" style="height: 40vh; overflow: auto;">
					<!-- table id="example3" -->
					<table id="subTable"
						class="table table-sm table-bordered table-hover">
						<thead>
							<tr class="table-active">
								<th>개설연도</th>
								<th>개설학기</th>
								<th>교과목명</th>
								<th>담당교수</th>
								<!-- <th>원점수</th> -->
								<!-- <th>등수</th> -->
								<th>등급</th>
								<th>이수학점</th>
								<th>비고</th>
							</tr>
						</thead>
						<tbody id="scoreTableBody">
							<c:forEach items="${sList}" var="studentScore">
								<c:set var="grade" value="${studentScore.grade}"/>
								<tr class="tblRow">
<%-- 								<c:if test="${studentScore.lecOpenYear ne 2023}"> --%>
									<td class="year">${studentScore.lecOpenYear }</td>
									<td class="semester">${studentScore.lecOpenSemester }</td>
									<td>${studentScore.subName}</td>
									<td>${studentScore.proNameKo}</td>
									<%-- <td>${studentScore.oveScore}</td> --%>
									<%-- <td>${studentScore.rank}</td> --%>
<%-- 									<td>${studentScore.grade }</td> --%>
									<td>
										<c:choose>
							                <c:when test="${grade == 4.5}">A+</c:when>
							                <c:when test="${grade == 4.0}">A</c:when>
							                <c:when test="${grade == 3.5}">B+</c:when>
							                <c:when test="${grade == 3.0}">B</c:when>
							                <c:when test="${grade == 2.5}">C+</c:when>
							                <c:when test="${grade == 2.0}">C</c:when>
							                <c:when test="${grade == 1.5}">D</c:when>
						                	<c:otherwise>F</c:otherwise>
						            	</c:choose>
						            </td>
									<td>${studentScore.subCredit }</td>
									<td></td>
<%--  									</c:if> --%>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	
	<div class="card">
		<div class="card-body" style="width: 100%;">
			<div class="row mb-4" id="subInfo">
				<div style="margin-bottom: 1%;">
					<span style="font-size: large; color: #f96d00;">|</span><span
						style="font-size: large; display: inline;">교과이수 구분별 성적 &nbsp;&nbsp;&nbsp;
					</span> &nbsp;
				</div>
			  		<div id="chart" style="width:1100px;"></div>

<script src="https://d3js.org/d3.v5.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.7.20/c3.min.js"></script>
<script>

/////////////////전공필수/////////////////////////////////////////////////

<c:set var="totalCreditsJP2101" value="0" /> 
	<c:forEach items="${sListJP}" var="studentScore">
	<c:if test="${studentScore.lecOpenYear eq 2021 and studentScore.lecOpenSemester eq 1}">
		<c:set var="totalCreditsJP2101" value="${totalCreditsJP2101 + studentScore.subCredit}" />
	</c:if>
</c:forEach>

<c:set var="totalCreditsJP2102" value="0" /> 
	<c:forEach items="${sListJP}" var="studentScore">
	<c:if test="${studentScore.lecOpenYear eq 2021 and studentScore.lecOpenSemester eq 2}">
		<c:set var="totalCreditsJP2102" value="${totalCreditsJP2102 + studentScore.subCredit}" />
	</c:if>
</c:forEach> 
	
<c:set var="totalCreditsJP2201" value="0" /> 
	<c:forEach items="${sListJP}" var="studentScore">
	<c:if test="${studentScore.lecOpenYear eq 2022 and studentScore.lecOpenSemester eq 1}">
		<c:set var="totalCreditsJP2201" value="${totalCreditsJP2201 + studentScore.subCredit}" />
	</c:if>
</c:forEach> 
		
<c:set var="totalCreditsJP2202" value="0" /> 
	<c:forEach items="${sListJP}" var="studentScore">
	<c:if test="${studentScore.lecOpenYear eq 2022 and studentScore.lecOpenSemester eq 2}">
		<c:set var="totalCreditsJP2202" value="${totalCreditsJP2202 + studentScore.subCredit}" />
	</c:if>
</c:forEach> 
			
<c:set var="totalCreditsJP2301" value="0" /> 
	<c:forEach items="${sListJP}" var="studentScore">
	<c:if test="${studentScore.lecOpenYear eq 2023 and studentScore.lecOpenSemester eq 1}">
		<c:set var="totalCreditsJP2301" value="${totalCreditsJP2301 + studentScore.subCredit}" />
	</c:if>
</c:forEach> 
			
<c:set var="totalCreditsJP2302" value="0" /> 
	<c:forEach items="${sListJP}" var="studentScore">
	<c:if test="${studentScore.lecOpenYear eq 2023 and studentScore.lecOpenSemester eq 2}">
		<c:set var="totalCreditsJP2302" value="${totalCreditsJP2302 + studentScore.subCredit}" />
	</c:if>
</c:forEach>
////////////////////전공선택///////////////////////////////////
<c:set var="totalCreditsJS2101" value="0" /> 
	<c:forEach items="${sListJS}" var="studentScore">
	<c:if test="${studentScore.lecOpenYear eq 2021 and studentScore.lecOpenSemester eq 1}">
		<c:set var="totalCreditsJS2101" value="${totalCreditsJS2101 + studentScore.subCredit}" />
	</c:if>
</c:forEach>

<c:set var="totalCreditsJS2102" value="0" /> 
	<c:forEach items="${sListJS}" var="studentScore">
	<c:if test="${studentScore.lecOpenYear eq 2021 and studentScore.lecOpenSemester eq 2}">
		<c:set var="totalCreditsJS2102" value="${totalCreditsJS2102 + studentScore.subCredit}" />
	</c:if>
</c:forEach> 
	
<c:set var="totalCreditsJS2201" value="0" /> 
	<c:forEach items="${sListJS}" var="studentScore">
	<c:if test="${studentScore.lecOpenYear eq 2022 and studentScore.lecOpenSemester eq 1}">
		<c:set var="totalCreditsJS2201" value="${totalCreditsJS2201 + studentScore.subCredit}" />
	</c:if>
</c:forEach> 
		
<c:set var="totalCreditsJS2202" value="0" /> 
	<c:forEach items="${sListJS}" var="studentScore">
	<c:if test="${studentScore.lecOpenYear eq 2022 and studentScore.lecOpenSemester eq 2}">
		<c:set var="totalCreditsJS2202" value="${totalCreditsJS2202 + studentScore.subCredit}" />
	</c:if>
</c:forEach> 
			
<c:set var="totalCreditsJS2301" value="0" /> 
	<c:forEach items="${sListJS}" var="studentScore">
	<c:if test="${studentScore.lecOpenYear eq 2023 and studentScore.lecOpenSemester eq 1}">
		<c:set var="totalCreditsJS2301" value="${totalCreditsJS2301 + studentScore.subCredit}" />
	</c:if>
</c:forEach> 
			
<c:set var="totalCreditsJS2302" value="0" /> 
	<c:forEach items="${sListJS}" var="studentScore">
	<c:if test="${studentScore.lecOpenYear eq 2023 and studentScore.lecOpenSemester eq 2}">
		<c:set var="totalCreditsJS2302" value="${totalCreditsJS2302 + studentScore.subCredit}" />
	</c:if>
</c:forEach>
////////////////////////교양필수////////////////////////////////////
<c:set var="totalCreditsGP2101" value="0" /> 
	<c:forEach items="${sListGP}" var="studentScore">
	<c:if test="${studentScore.lecOpenYear eq 2021 and studentScore.lecOpenSemester eq 1}">
		<c:set var="totalCreditsGP2101" value="${totalCreditsGP2101 + studentScore.subCredit}" />
	</c:if>
</c:forEach>

<c:set var="totalCreditsGP2102" value="0" /> 
	<c:forEach items="${sListGP}" var="studentScore">
	<c:if test="${studentScore.lecOpenYear eq 2021 and studentScore.lecOpenSemester eq 2}">
		<c:set var="totalCreditsGP2102" value="${totalCreditsGP2102 + studentScore.subCredit}" />
	</c:if>
</c:forEach> 
	
<c:set var="totalCreditsGP2201" value="0" /> 
	<c:forEach items="${sListGP}" var="studentScore">
	<c:if test="${studentScore.lecOpenYear eq 2022 and studentScore.lecOpenSemester eq 1}">
		<c:set var="totalCreditsGP2201" value="${totalCreditsGP2201 + studentScore.subCredit}" />
	</c:if>
</c:forEach> 
		
<c:set var="totalCreditsGP2202" value="0" /> 
	<c:forEach items="${sListGP}" var="studentScore">
	<c:if test="${studentScore.lecOpenYear eq 2022 and studentScore.lecOpenSemester eq 2}">
		<c:set var="totalCreditsGP2202" value="${totalCreditsGP2202 + studentScore.subCredit}" />
	</c:if>
</c:forEach> 
			
<c:set var="totalCreditsGP2301" value="0" /> 
	<c:forEach items="${sListGP}" var="studentScore">
	<c:if test="${studentScore.lecOpenYear eq 2023 and studentScore.lecOpenSemester eq 1}">
		<c:set var="totalCreditsGP2301" value="${totalCreditsGP2301 + studentScore.subCredit}" />
	</c:if>
</c:forEach> 
			
<c:set var="totalCreditsGP2302" value="0" /> 
	<c:forEach items="${sListGP}" var="studentScore">
	<c:if test="${studentScore.lecOpenYear eq 2023 and studentScore.lecOpenSemester eq 2}">
		<c:set var="totalCreditsGP2302" value="${totalCreditsGP2302 + studentScore.subCredit}" />
	</c:if>
</c:forEach>

//////////////////////교양선택///////////////////////////////////////
<c:set var="totalCreditsGS2101" value="0" /> 
	<c:forEach items="${sListGS}" var="studentScore">
	<c:if test="${studentScore.lecOpenYear eq 2021 and studentScore.lecOpenSemester eq 1}">
		<c:set var="totalCreditsGS2101" value="${totalCreditsGS2101 + studentScore.subCredit}" />
	</c:if>
</c:forEach>

<c:set var="totalCreditsGS2102" value="0" /> 
	<c:forEach items="${sListGS}" var="studentScore">
	<c:if test="${studentScore.lecOpenYear eq 2021 and studentScore.lecOpenSemester eq 2}">
		<c:set var="totalCreditsGS2102" value="${totalCreditsGS2102 + studentScore.subCredit}" />
	</c:if>
</c:forEach> 
	
<c:set var="totalCreditsGS2201" value="0" /> 
	<c:forEach items="${sListGS}" var="studentScore">
	<c:if test="${studentScore.lecOpenYear eq 2022 and studentScore.lecOpenSemester eq 1}">
		<c:set var="totalCreditsGS2201" value="${totalCreditsGS2201 + studentScore.subCredit}" />
	</c:if>
</c:forEach> 
		
<c:set var="totalCreditsGS2202" value="0" /> 
	<c:forEach items="${sListGS}" var="studentScore">
	<c:if test="${studentScore.lecOpenYear eq 2022 and studentScore.lecOpenSemester eq 2}">
		<c:set var="totalCreditsGS2202" value="${totalCreditsGS2202 + studentScore.subCredit}" />
	</c:if>
</c:forEach> 
			
<c:set var="totalCreditsGS2301" value="0" /> 
	<c:forEach items="${sListGS}" var="studentScore">
	<c:if test="${studentScore.lecOpenYear eq 2023 and studentScore.lecOpenSemester eq 1}">
		<c:set var="totalCreditsGS2301" value="${totalCreditsGS2301 + studentScore.subCredit}" />
	</c:if>
</c:forEach> 
			
<c:set var="totalCreditsGS2302" value="0" /> 
	<c:forEach items="${sListGS}" var="studentScore">
	<c:if test="${studentScore.lecOpenYear eq 2023 and studentScore.lecOpenSemester eq 2}">
		<c:set var="totalCreditsGS2302" value="${totalCreditsGS2302 + studentScore.subCredit}" />
	</c:if>
</c:forEach>
/////////////////////////////////////////////////////////

    var chart = c3.generate({
        data: {
            x: 'myX',
            columns: [
                ['myX', '2021년 1학기', '2021년 2학기', '2022년 1학기', '2022년 2학기', '2023년 1학기', '2023년 2학기'],
                ['전공필수', 0, 0, 0, 0, 0, 0],
//                 	${totalCreditsJP2101},
//                 	${totalCreditsJP2102},
//                 	${totalCreditsJP2201},
//                 	${totalCreditsJP2202},
//                 	${totalCreditsJP2301},
//                 	${totalCreditsJP2302}],
                ['전공선택', 0, 0, 0, 0, 0, 0], 
//                 	${totalCreditsJS2101},
//                 	${totalCreditsJS2102},
//                 	${totalCreditsJS2201},
//                 	${totalCreditsJS2202},
//                 	${totalCreditsJS2301},
//                 	${totalCreditsJS2302}],
                ['교양필수', 0, 0, 0, 0, 0, 0],
//                 	${totalCreditsGP2101},
//                 	${totalCreditsGP2102},
//                 	${totalCreditsGP2201},
//                 	${totalCreditsGP2202},
//                 	${totalCreditsGP2301},
//                 	${totalCreditsGP2302}],
                ['교양선택', 0, 0, 0, 0, 0, 0]
//                 	${totalCreditsGS2101},
//                 	${totalCreditsGS2102},
//                 	${totalCreditsGS2201},
//                 	${totalCreditsGS2202},
//                 	${totalCreditsGS2301},
//                 	${totalCreditsGS2302}]
            ]
        },
        axis: {
            x: {
                type: 'category'
                ,color: 'red'
            }
        	
        },
        bindto: '#chart'
    });
    
     setTimeout(function () {
        chart.load({
            columns: [
            	['전공필수', 
                	${totalCreditsJP2101},
                	${totalCreditsJP2102},
                	${totalCreditsJP2201},
                	${totalCreditsJP2202},
                	${totalCreditsJP2301},
                	${totalCreditsJP2302}]
            ]
        });
    }, 1000);
    
    setTimeout(function () {
        chart.load({
            columns: [
            	['전공선택', 
                	${totalCreditsJS2101},
                	${totalCreditsJS2102},
                	${totalCreditsJS2201},
                	${totalCreditsJS2202},
                	${totalCreditsJS2301},
                	${totalCreditsJS2302}]
            ]
        });
    }, 2000);

    setTimeout(function () {
        chart.load({
            columns: [
            	['교양필수', 
                	${totalCreditsGP2101},
                	${totalCreditsGP2102},
                	${totalCreditsGP2201},
                	${totalCreditsGP2202},
                	${totalCreditsGP2301},
                	${totalCreditsGP2302}]
            ]
        });
    }, 3000);
    
    setTimeout(function () {
        chart.load({
            columns: [
            	['교양선택', 
                	${totalCreditsGS2101},
                	${totalCreditsGS2102},
                	${totalCreditsGS2201},
                	${totalCreditsGS2202},
                	${totalCreditsGS2301},
                	${totalCreditsGS2302}]
            ]
        });
    }, 4000); 
</script>
<!-- 				<div class="table-responsive" style="height: 40vh; overflow: auto;"> -->
<!-- 					<table id="subTable" class="table table-sm table-bordered table-hover"> -->
<!-- 						<thead> -->
<!-- 							<tr class="table-active"> -->
<!-- 								<th>개설연도</th> -->
<!-- 								<th>개설학기</th> -->
<!-- 								<th>교과구분</th> -->
<!-- 								<th>이수구분</th> -->
<!-- 								<th>총학점평균</th> -->
<!-- 								<th>총이수학점</th> -->
<!-- 							</tr> -->
<!-- 						</thead> -->
<!-- 						<tbody> -->
<%-- 							<c:forEach items="${averageList}" var="averageScore"> --%>
<!-- 								<tr class="tblRow"> -->
<%-- 									<td>${averageScore.lecOpenYear }</td> --%>
<%-- 									<td>${averageScore.lecOpenSemester }</td> --%>
<%-- 									<td>${averageScore.subSort}</td> --%>
<%-- 									<td>${averageScore.subType}</td> --%>
<%-- 									<td>${averageScore.gradeAverage }</td> --%>
<%-- 									<td>${averageScore.sumCredit }</td> --%>
<!-- 								</tr> -->
<%-- 							</c:forEach> --%>
<!-- 						</tbody> -->
<!-- 					</table> -->
<!-- 				</div> -->
			</div>
		</div>
	</div>
</div>	
	
<script>
function filterTable() {
	  var selectedYearAndSemester = document.getElementById("selectYear").value.split(",");
	  var selectedYear = selectedYearAndSemester[0];
	  var selectedSemester = selectedYearAndSemester[1];
	  var tableBody = document.getElementById("scoreTableBody");
	  var rows = tableBody.getElementsByTagName("tr");
	  for (var i = 0; i < rows.length; i++) {
	    var yearCell = rows[i].getElementsByClassName("year")[0];
	    var semesterCell = rows[i].getElementsByClassName("semester")[0];
	    if (yearCell.innerHTML != selectedYear || semesterCell.innerHTML != selectedSemester
	      && selectedYearAndSemester != "==해당연도/학기 선택==") {
	      rows[i].style.display = "none";
	    } else {
	      rows[i].style.display = "";
	    } 
	  }
	}

</script>