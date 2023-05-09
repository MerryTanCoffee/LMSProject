<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="page-titles">
	<ol class="breadcrumb">
		<li>
			<h5 class="bc-title">장학</h5>
		</li>
		<li class="breadcrumb-item"><a href="#">
			<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path fill-rule="evenodd" clip-rule="evenodd" d="M16.3691 18.7157C18.086 18.7157 19.4784 17.3242 19.4793 15.6073V15.6055V13.1305C18.3454 13.1305 17.4269 12.212 17.426 11.078C17.426 9.94504 18.3445 9.02562 19.4784 9.02562H19.4793V6.55062C19.4812 4.83279 18.0906 3.43946 16.3737 3.43762H16.3682H5.63216C3.91433 3.43762 2.52191 4.82912 2.521 6.54696V6.54787V9.10537C3.6155 9.06687 4.53308 9.92304 4.57158 11.0175C4.5725 11.0377 4.57341 11.0579 4.57341 11.078C4.57433 12.2101 3.65858 13.1286 2.5265 13.1305H2.521V15.6055C2.52008 17.3224 3.9125 18.7157 5.62941 18.7157H5.63033H16.3691Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
				<path fill-rule="evenodd" clip-rule="evenodd" d="M11.3403 8.30788L11.905 9.45096C11.96 9.5628 12.0663 9.64071 12.1901 9.65905L13.4523 9.8433C13.7649 9.88913 13.8887 10.2723 13.6632 10.4914L12.7502 11.3805C12.6603 11.4676 12.62 11.5932 12.6402 11.717L12.8556 12.9728C12.9087 13.2835 12.5833 13.52 12.3047 13.3734L11.1762 12.7803C11.0653 12.7216 10.9333 12.7216 10.8224 12.7803L9.69491 13.3734C9.41533 13.52 9.08991 13.2835 9.14308 12.9728L9.3585 11.717C9.37958 11.5932 9.33833 11.4676 9.2485 11.3805L8.33641 10.4914C8.11091 10.2723 8.23466 9.88913 8.54633 9.8433L9.80858 9.65905C9.93233 9.64071 10.0396 9.5628 10.0946 9.45096L10.6583 8.30788C10.7977 8.02555 11.201 8.02555 11.3403 8.30788Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
			</svg> 장학내역
		</a></li>
		<li class="breadcrumb-item active"><a href="#">장학금 수혜내역</a></li>
	</ol>
</div>
<div class="container-fluid">
	<div class="col-xl-12">
		<div class="card">
			<div class="card-body" style="border: none;">
				<div class="row">
					<div class="col-md-1 text-center" style="margin-top: 10px;">
						학년도: 
					</div>
					<div class="col-md-2">
						<select name="year" id="year" class="default-select form-control">
<!-- 							<option value="" id="">선택</option> -->
							<option value="0" id="allyear">전체</option>
							<option value="2023" id="2023">2023</option>
							<option value="2022" id="2022">2022</option>
							<option value="2021" id="2021">2021</option>
							<option value="2020" id="2020">2020</option>
							<option value="2019" id="2019">2019</option>
							<option value="2018" id="2018">2018</option>
							<option value="2017" id="2017">2017</option>
						</select>
					</div>
					<div class="col-md-1 text-center" style="margin-top: 10px;">
						학기:</div>
					<div class="col-md-2">
						<select name="semesterType" id="semesterType" class="default-select form-control">
<!-- 							<option value="" id="">선택</option> -->
							<option value="0" id="allses">전체</option>
							<option value="1" id="1">1학기</option>
							<option value="2" id="2">2학기</option>
						</select>
					</div>
					<div class="col-md-1 text-center" style="margin-top: 10px;">
						학번:</div>
					<div class="col-md-3">
						<input type="text" name="stuId" value="${sessionScope.userInfo.studentVO.stuId }" class="form-control" disabled="disabled">
					</div>
					<div class="col-md-2">	
						<button type="button" class="btn btn-outline-secondary" onclick="listSearch()">
						                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
						  <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"></path>
						</svg>
	                  <span class="visually-hidden">Button</span>
	                </button>
					</div>
				</div> <!-- row 끝 -->
			</div>	
		</div>
	</div>
	
	<div class="card">
		<div class="card-header" style="padding-bottom:10px;">
				<h4><span style="font-size:20px; color: #f96d00;">|</span>&nbsp;장학금 수혜내역</h4>
		</div>
		<div class="card-body">
			<div class="table-responsive" id="scholarshipList">
				<table class="table table-hover table-bordered" id="svt">
					<thead>
						<tr style="text-align:center; background-color:#eeeeee;">
							<th>#</th>
							<th>연도</th>
							<th>학기</th>
							<th>장학명칭</th>
							<th>장학구분</th>
							<th>장학금액</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${empty scholarList }">
								<tr>
									<td colspan="6">장학금 수혜 내역이 존재하지 않습니다.</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${ scholarList}" var="list" varStatus="stat">
									<tr style="background-color:white; text-align:center;" id="scholar">
										<td>${stat.count }</td>
										<td>${list.slYear }</td>
										<td>${list.slSemester }</td>
										<td style="text-align:left;">${list.siName }</td>
										<td>${list.siGubun }</td>
										<td style="text-align:right;"><fmt:formatNumber type="number" maxFractionDigits="3" value="${list.slSchlr }"/></td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
			</div>	
		</div>
	</div>
</div>		

<script>

function listSearch(){
	
	const year = $("#year").val();
	const semester = $("#semesterType").val();
	
// 	var data = {
// 		slYear : year,
// 		slSemester : semester
// 	};
	
	$.ajax({
		url : "/scholarship/benefitList",
		type : "post",
		data : {
			slYear : year,
			slSemester : semester
		},
// 		contentType : "application/json;charset=utf-8",
		dataType : "json",
		success : function(result){
			console.log(result)
			console.log($("table > tbody"));
			$("table > tbody").empty();
			if(result.length > 0){
				$.each(result, function(index, item){
					index = index + 1;
					let str = "<tr id='scholar' style=background-color:white;text-align:center;>";
					str += "<td>" + index + "</td>";
					str += `<td>\${item.slYear}</td>`;
					str += `<td>\${item.slSemester}</td>`;
					str += `<td style='text-align:left;'>\${item.siName}</td>`;
					str += `<td>\${item.siGubun}</td>`;
					str += `<td style='text-align:right;'>\${item.slSchlr.toLocaleString('ko-KR')}</td>`;
					str += "</tr>"
					$("table > tbody").append(str);
				});
			}
		}
	});
}


</script>
