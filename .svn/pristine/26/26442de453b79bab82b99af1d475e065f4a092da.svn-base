<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>

table thead {
  position: sticky;
  top: 0;
  background-color: white;
}

tbody {
  height: 100px; /* 스크롤이 생길 높이 지정 */
  overflow-y: auto; /* 세로 스크롤만 표시 */

}
</style>
<c:if test = "${status eq 's' }">
	<c:set var = "stuActive" value="active"/>
	<c:set var = "stu" value="학생"/>
</c:if>
<c:if test = "${status eq 'p' }">
	<c:set var = "proActive" value="active"/>
	<c:set var = "pro" value="교수"/>
</c:if>
<c:if test = "${status eq 'e' }">
	<c:set var = "empActive" value="active"/>
	<c:set var = "emp" value="직원"/>
</c:if>
<c:if test="${status eq 'ex' }">
	<c:set var="display" value="none" />
	<c:set var="ex" value="엑셀 업로드 데이터" />
</c:if>
<!-- 페이지 타이틀 -->
      <div class="page-titles">
         <ol class="breadcrumb">
            <li>
               <h5 class="bc-title">${stu}${pro}${emp}</h5>
            </li>
            <li class="breadcrumb-item"><a href="javascript:void(0)">
                  <svg width="17" height="17" viewBox="0 0 17 17" fill="none" xmlns="http://www.w3.org/2000/svg">
                     <path
                        d="M2.125 6.375L8.5 1.41667L14.875 6.375V14.1667C14.875 14.5424 14.7257 14.9027 14.4601 15.1684C14.1944 15.4341 13.8341 15.5833 13.4583 15.5833H3.54167C3.16594 15.5833 2.80561 15.4341 2.53993 15.1684C2.27426 14.9027 2.125 14.5424 2.125 14.1667V6.375Z"
                        stroke="#2C2C2C" stroke-linecap="round" stroke-linejoin="round" />
                     <path d="M6.375 15.5833V8.5H10.625V15.5833" stroke="#2C2C2C" stroke-linecap="round"
                        stroke-linejoin="round" />
                  </svg>
                  ${stu}${pro}${emp}${ex}</a>
            </li>
            <li class="breadcrumb-item active"><a href="javascript:void(0)">조회</a></li>
         </ol>
      </div>
	<div class="container-fluid">
<div class="row">
	<div class="card">
		<c:if test="${status eq 'ex' }">
			<div class="card-header" style="padding-bottom:10px;">
					<h4><span style="font-size:20px; color: #f96d00;">|</span><strong>&nbsp;엑셀 업로드 데이터</strong></h4>
			</div>	
		</c:if>
		<div class="card-body" >
		<button type="button" class="btn btn-outline-primary ${stuActive}" onclick="location.href='/user/list'" style="display: ${display}">학생</button>
		<button type="button" class="btn btn-outline-primary ${proActive}" onclick="location.href='/user/proList'" style="display: ${display}">교수</button>
		<button type="button" class="btn btn-outline-primary ${empActive}" onclick="location.href='/user/empList'" style="display: ${display}">직원</button>
		<!-- 엑셀 등록 폼 -->
		<div class="d-flex justify-content-end" style="display : ${display} !important;">
		<form  style="display : ${display}" id="excelUploadForm" name="excelUploadForm" enctype="multipart/form-data"	method="post" action="excelUpload" class="d-flex align-items-center">
			<div class="form-group mr-2">
				<input id="excelFile" type="file" class="form-control" name="excelFile">
			</div>
			<button type="button" id="addExcelImpoartBtn" onclick="check()"
				class="btn btn-success-s">
				<span class="btn-icon-start text-success"><i
						class="fa fa-upload color-success"></i></span>
				엑셀파일 업로드하기
			</button>
		</form>
		</div>
		<!-- 엑셀 등록 폼 끝 -->
		<div class="row" id="keyword" style="margin-top: 20px; margin-bottom: 20px;"  style="display: ${display}">
					<div class="col-md-3 mb-1"  style="display : ${display}">
						<label for="coll">단과대학</label> 
						<select id="collCode" name="collCode" tabindex="-1" class="form-control">
							<option data-display="Select" value="ALL">전체 단과</option>
							<option value="GYE">경상대학</option>
							<option value="ENG">공과대학</option>
							<option value="CUL">교양대학</option>
							<option value="UNI">대학본부</option>
							<option value="EDU">사범대학</option>
							<option value="SCI">생활과학대학</option>
							<option value="HUM">인문대학</option>
						</select>
					</div> 
					<div class="col-md-3 mb-1"  style="display: ${display}">
						<div>
							<label for="dept">학과(부)</label> 
							<select id="deptName" name="deptName" tabindex="-1" class="form-control">
								<option data-display="Select" value="ALL">선택해 주세요.</option>
							</select>
						</div>
					</div>

					<div class="col-md-2 mb-1"  style="display: ${display}">
						<label for="select">검색 유형</label> 
						<input type="hidden" name="page" id="page"> 
						<c:if test="${status eq 's' }">
						<select id="searchType" class="form-control" name="searchType">
							<option value="id" <c:if test="${searchType =='id' }">selected</c:if>>학번</option>
							<option value="name" <c:if test="${searchType =='name' }">selected</c:if>>성명</option>
						</select>
						</c:if>
						<c:if test="${status eq 'p' }">
						<select id="searchType" class="form-control" name="searchType">
							<option value="id" <c:if test="${searchType =='id' }">selected</c:if>>교번</option>
							<option value="name" <c:if test="${searchType =='name' }">selected</c:if>>성명</option>
						</select>
						</c:if>
						<c:if test="${status eq 'e' }">
						<select id="searchType" class="form-control" name="searchType">
							<option value="id" <c:if test="${searchType =='id' }">selected</c:if>>사번</option>
							<option value="name" <c:if test="${searchType =='name' }">selected</c:if>>성명</option>
						</select>
						</c:if>
					</div>
					<c:if test="${status eq 's' }">
						<div class="col-md-2 mb-1">
							<label for="search">검색어</label> 
							<input id="searchWord" type="text" name="searchWord" value="${searchWord}" class="form-control float-right" >
						</div>
						<div class="col-md-2 mb-1">
							<button type="button" class="btn light btn-primary"  style="margin-top:25px;" id="stuList">검색</button>
						</div>
					</c:if>
					<c:if test="${status eq 'p' }">
						<div class="col-md-2 mb-1">
							<label for="search">검색어</label> 
							<input id="searchWord" type="text" name="searchWord" value="${searchWord}" class="form-control float-right" >
						</div>
						<div class="col-md-2 mb-1">
							<button type="button" class="btn light btn-primary"  style="margin-top:25px;"  id="proList">검색</button>
						</div>
					</c:if>
					<c:if test="${status eq 'e' }">
						<div class="col-md-2 mb-1">
							<label for="search">검색어</label> 
							<input id="searchWord" type="text" name="searchWord" value="${searchWord}" class="form-control float-right" >
						</div>
						<div class="col-md-2 mb-1">
							<button type="button" class="btn light btn-primary" style="margin-top:25px;"  id="empList">검색</button>
						</div>	
					</c:if>
				</div>
			<div style="width:100%; height:600px; overflow:auto">
			<c:if test="${status eq 's' }">
			<table class="display table" style="margin-top: 10px">
				<thead>
					<tr>
						<th><strong>학번</strong></th>
						<th><strong>성명</strong></th>
						<th><strong>단과대학</strong></th>
						<th><strong>전공</strong></th>
						<th><strong>학년</strong></th>
						<th><strong>생년월일</strong></th>
					</tr>
				</thead>
				<tbody id="tableBody">
						<c:choose>
							<c:when test="${empty student }">
								<span>조회한 내역이 존재하지 않습니다.</span>
							</c:when>
							<c:otherwise>
								<c:forEach items="${student }" var="stu">
									<tr >
									<td><strong>
									<a onclick="window.open('/user/stuDetail?stuId=${stu.stuId }', 'win_new2', 'width=1000, height=600, top=200, left=200')">${stu.stuId }</a></strong></td>
										<td>${stu.stuNameKo }</td>
										<td>${stu.academicVO.collName}</td>
										<td>${stu.academicVO.acaMajor }</td>
										<td>${stu.academicVO.acaGrade} 학년</td>
										<td>${stu.stuReg1 }</td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
				</tbody>
			</table>
			</c:if>	
			<c:if test="${status eq 'p' }">
			<table class="display table" style="margin-top: 10px">
				<thead>
					<tr>
						<th style="width: 20px"><strong>교번</strong></th>
						<th style="width: 20px"><strong>성명</strong></th>
						<th style="width: 20px"><strong>단과대학</strong></th>
						<th style="width: 20px"><strong>전공</strong></th>
						<th style="width: 20px"><strong>연구실 호수</strong></th>
						<th style="width: 20px"><strong>생년월일</strong></th>
					</tr>
				</thead>
				<tbody id="tableBody">
						<c:choose>
							<c:when test="${empty professor }">
								<span>조회한 내역이 존재하지 않습니다.</span>
							</c:when>
							<c:otherwise>
								<c:forEach items="${professor }" var="pro">
									<tr>
									<td><strong>
									<a onclick="window.open('/user/proDetail?proId=${pro.proId }', 'win_new2', 'width=1200, height=600, top=200, left=200')">${pro.proId }</a></strong></td>
										<td>${pro.proNameKo }</td>
										<td>${pro.collName}</td>
										<td>${pro.proMajor }</td>
										<td>${pro.proLabNum} 호</td>
										<td>${pro.proReg1 }</td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
				</tbody>
			</table>
			</c:if>	
			<c:if test="${status eq 'e' }">
			<table class="display table" style="margin-top: 10px">
				<thead>
					<tr>
						<th style="width: 20px"><strong>사번</strong></th>
						<th style="width: 20px"><strong>성명</strong></th>
						<th style="width: 20px"><strong>단과대학</strong></th>
						<th style="width: 20px"><strong>소속부서</strong></th>
						<th style="width: 20px"><strong>부서 연락처</strong></th>
						<th style="width: 20px"><strong>생년월일</strong></th>
					</tr>
				</thead>
				<tbody id="tableBody">
						<c:choose>
							<c:when test="${empty employee }">	
								<span>조회한 내역이 존재하지 않습니다.</span>
							</c:when>
							<c:otherwise>
								<c:forEach items="${employee }" var="emp">
									<tr ><td><strong>
	<a onclick="window.open('/user/empDetail?empId=${emp.empId }', 'win_new2', 'width=1200, height=600, top=200, left=200')">${emp.empId }</a></strong></td>
										<td>${emp.empNameKo }</td>
										<td>${emp.collName}</td>
										<td>${emp.deptName }</td>
										<td>${emp.deptTel}
										<td>${emp.empReg1 }</td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
				</tbody>
			</table>
			</c:if>	
			
		<c:if test="${status eq 'ex' }">
			<table class="display table" >
					<thead>
						<tr>
							<th style="width: 20px"><strong>학번/교번/사번</strong></th>
							<th style="width: 20px"><strong>유형</strong></th>
							<th style="width: 20px"><strong>성명</strong></th>
							<th style="width: 20px"><strong>생년월일</strong></th>
							<th style="width: 20px"><strong>연락처</strong></th>
							<th style="width: 20px"><strong>국적</strong></th>
							<th style="width: 20px"><strong>주소</strong></th>
							<th style="width: 20px"><strong>상세주소</strong></th>
							<th style="width: 20px"><strong>소속</strong></th>
						</tr>
					</thead>
					<tbody id="tableBody">
							<c:choose>
								<c:when test="${empty excelList }">
									<tr>
										<td colspan="5">조회한 내역이 존재하지 않습니다.</td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach items="${excelList }" var="ex">
										<tr>
											<td>${ex.A}</td>
											<td>${ex.D}</td>
											<td>${ex.E}</td>
											<td>${ex.G}</td>
											<td>${ex.I}</td>
											<td>${ex.K}</td>
											<td>${ex.N}</td>
											<td>${ex.O}</td>
											<td>${ex.R}</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
					</tbody>
				</table>
			</c:if>	
			</div>
		</div>
	</div>
</div>
</div>
<script>

$(function(){
	$("#collCode").on("change",function(){
		  var code = $(this).val();
		  var data = {
		    collCode : code  
		  };
		  $.ajax({
		    url:"/user/departList",
		    type:"post",
		    data:JSON.stringify(data),
		    contentType:"application/json;charset=utf-8",
		    dataType:"json",
		    success:function(res){
		      res.sort(function(a, b){
		        return a.deptName.localeCompare(b.deptName);
		      });

		      // 옵션들 추가하기 전에 selectJisun 변수가 위치하는 DOM 엘리먼트를 가져와서,
		      // 첫번째 옵션을 추가하고, 그 다음 옵션들을 추가하면 됩니다.
		      var deptName = document.querySelector("#deptName");
		      deptName.innerHTML = ""; // 옵션들을 모두 삭제합니다.

		      // 첫번째 옵션 추가
		      var option = document.createElement("option");
		      option.setAttribute("data-display", "Select");
		      option.setAttribute("value", "ALL");
		      option.innerHTML = "전체 학과";
		      deptName.appendChild(option);

		      // 나머지 옵션들 추가
		      for(let i=1; i<res.length; i++){
		        let option = document.createElement("option");
		        option.innerHTML = res[i].deptName;
		        deptName.appendChild(option);
		      }
		    }
		  });
		});



$("#stuList").on("click",function(){
	
	const collCode = $("#collCode").val();
	const deptName = $("#deptName").val();
	const searchType = $("#searchType").val();
	const searchWord = $("#searchWord").val();

	console.log("collCode >> ",collCode);
	console.log("deptName >> ",deptName);
	console.log("searchType >> ",searchType);
	console.log("searchWord >> ",searchWord);
	
	var data = {
			 
			collCode : collCode,
			deptName : deptName,
			searchType : searchType,
			searchWord : searchWord,
			startRow : 1
	};
	
	const tbody = document.querySelector("#tableBody");
	
	$.ajax({
		  url: "/user/stuSearch",
		  type: "post",
		  data: JSON.stringify(data),
		  contentType: "application/json;charset=utf-8",
		  dataType: "json",
		  success : function(res){
		  console.log(res)
		  console.log($("table > tbody"));
		   $("table > tbody").empty();
		      if(res.length > 0){
		        let str = "";
		        $.each(res, function(index, item){
		          index = index + 1;
		          str += "<tr style=background-color:white;>";
		          str += "<td><strong><a onclick=\"window.open('/user/stuDetail?stuId=" + item.stuId + "', 'win_new2', 'width=1000, height=600, top=200, left=200')\">" + item.stuId + "</a></strong></td>";
		          str += "<td>" + item.stuNameKo + "</td>";
		          str += "<td>" + item.academicVO.collName + "</td>";
		          str += "<td>" + item.academicVO.acaMajor + "</td>";
		          str += "<td>" + item.academicVO.acaGrade + " 학년</td>";
		          str += "<td>" + item.stuReg1 + "</td>";
		          str += "</tr>";
		        });
		        tbody.innerHTML = str;
		      }
	    	}
	    });
	})
	
	$("#proList").on("click",function(){
	
	const collCode = $("#collCode").val();
	const deptName = $("#deptName").val();
	const searchType = $("#searchType").val();
	const searchWord = $("#searchWord").val();

	console.log("collCode >> ",collCode);
	console.log("deptName >> ",deptName);
	console.log("searchType >> ",searchType);
	console.log("searchWord >> ",searchWord);
	
	var data = {
			 
			collCode : collCode,
			deptName : deptName,
			searchType : searchType,
			searchWord : searchWord,
			startRow : 1
	};
	
	const tbody = document.querySelector("#tableBody");
	
	$.ajax({
		  url: "/user/proSearch",
		  type: "post",
		  data: JSON.stringify(data),
		  contentType: "application/json;charset=utf-8",
		  dataType: "json",
		  success : function(res){
		  console.log(res)
		  console.log($("table > tbody"));
		   $("table > tbody").empty();
		      if(res.length > 0){
		        let str = "";
		        $.each(res, function(index, item){
		          index = index + 1;
		          str += "<tr style=background-color:white;>";
		          str += "<td><strong><a onclick=\"window.open('/user/proDetail?proId=" + item.proId + "', 'win_new2', 'width=1000, height=600, top=200, left=200')\">" + item.proId + "</a></strong></td>";
		          str += "<td>" + item.proNameKo + "</td>";
		          str += "<td>" + item.collName + "</td>";
		          str += "<td>" + item.proMajor + "</td>";
		          str += "<td>" + item.proLabNum + " 호</td>";
		          str += "<td>" + item.proReg1 + "</td>";
		          str += "</tr>";
		        });
		        tbody.innerHTML = str;
		      }
		    }
		  });
	});
	$("#empList").on("click",function(){
	
	
	const collCode = $("#collCode").val();
	const deptName = $("#deptName").val();
	const searchType = $("#searchType").val();
	const searchWord = $("#searchWord").val();

	console.log("collCode >> ",collCode);
	console.log("deptName >> ",deptName);
	console.log("searchType >> ",searchType);
	console.log("searchWord >> ",searchWord);
	
	var data = {
			 
			collCode : collCode,
			deptName : deptName,
			searchType : searchType,
			searchWord : searchWord,
			startRow : 1
	};
	
	const tbody = document.querySelector("#tableBody");
	
	$.ajax({
		  url: "/user/empSearch",
		  type: "post",
		  data: JSON.stringify(data),
		  contentType: "application/json;charset=utf-8",
		  dataType: "json",
		  success : function(res){
		  console.log(res)
		  console.log($("table > tbody"));
		   $("table > tbody").empty();
		      if(res.length > 0){
		        let str = "";
		        $.each(res, function(index, item){
		          index = index + 1;
		          str += "<tr style=background-color:white;>";
		          str += "<td><strong><a onclick=\"window.open('/user/empDetail?empId=" + item.empId + "', 'win_new2', 'width=1000, height=600, top=200, left=200')\">" + item.empId + "</a></strong></td>";
		          str += "<td>" + item.empNameKo + "</td>";
		          str += "<td>" + item.collName + "</td>";
		          str += "<td>" + item.deptName + "</td>";
		          str += "<td>" + item.deptTel + "</td>";
		          str += "<td>" + item.empReg1 + "</td>";
		          str += "</tr>";
		        });
		        tbody.innerHTML = str;
		      }
		    }
		  });
	})
});	

function checkFileType(filePath) {
	var fileFormat = filePath.split(".");

	if (fileFormat.indexOf("xls") > -1 || fileFormat.indexOf("xlsx") > -1) {
		return true;
	} else {
		return false;
	}
}



function checkFileType(filePath) {
	var fileFormat = filePath.split(".");

	if (fileFormat.indexOf("xls") > -1 || fileFormat.indexOf("xlsx") > -1) {
		return true;
	} else {
		return false;
	}
}

function check() {

	var file = $("#excelFile").val();

	if (file == "" || file == null) {
		alert("파일을 선택해주세요.");

		return false;
	} else if (!checkFileType(file)) {
		alert("엑셀 파일만 업로드 가능합니다.");

		return false;
	}

	Swal.fire({
	    icon: "question",
	    text: "업로드 하시겠습니까?",
	    showCancelButton: true
	}).then((result) => {
	    if (result.value) {
	        var options = {
	            success: function (data) {
	                console.log(data);
	                Swal.fire({
	                    icon: "success",
	                    text: "모든 데이터가 업로드 되었습니다."
	                });
	            },
	            type: "POST"
	        };
	        $("#excelUploadForm").submit();
	    }
	});

}

		
</script>