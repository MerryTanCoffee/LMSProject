<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<style>
#infoTable thead tr,
#scholarAppList thead tr {
        text-align: center;
        position: sticky;
        top: 0px;
      }
.slName {
	cursor: pointer;
	color: black;
}
.inner{
	max-height: 200px;
}
</style>

<div class="page-titles">
	<ol class="breadcrumb">
		<li>
			<h5 class="bc-title">장학</h5>
		</li>
		<li class="breadcrumb-item"><a href="javascript:void(0)">
			<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path fill-rule="evenodd" clip-rule="evenodd" d="M16.3691 18.7157C18.086 18.7157 19.4784 17.3242 19.4793 15.6073V15.6055V13.1305C18.3454 13.1305 17.4269 12.212 17.426 11.078C17.426 9.94504 18.3445 9.02562 19.4784 9.02562H19.4793V6.55062C19.4812 4.83279 18.0906 3.43946 16.3737 3.43762H16.3682H5.63216C3.91433 3.43762 2.52191 4.82912 2.521 6.54696V6.54787V9.10537C3.6155 9.06687 4.53308 9.92304 4.57158 11.0175C4.5725 11.0377 4.57341 11.0579 4.57341 11.078C4.57433 12.2101 3.65858 13.1286 2.5265 13.1305H2.521V15.6055C2.52008 17.3224 3.9125 18.7157 5.62941 18.7157H5.63033H16.3691Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
				<path fill-rule="evenodd" clip-rule="evenodd" d="M11.3403 8.30788L11.905 9.45096C11.96 9.5628 12.0663 9.64071 12.1901 9.65905L13.4523 9.8433C13.7649 9.88913 13.8887 10.2723 13.6632 10.4914L12.7502 11.3805C12.6603 11.4676 12.62 11.5932 12.6402 11.717L12.8556 12.9728C12.9087 13.2835 12.5833 13.52 12.3047 13.3734L11.1762 12.7803C11.0653 12.7216 10.9333 12.7216 10.8224 12.7803L9.69491 13.3734C9.41533 13.52 9.08991 13.2835 9.14308 12.9728L9.3585 11.717C9.37958 11.5932 9.33833 11.4676 9.2485 11.3805L8.33641 10.4914C8.11091 10.2723 8.23466 9.88913 8.54633 9.8433L9.80858 9.65905C9.93233 9.64071 10.0396 9.5628 10.0946 9.45096L10.6583 8.30788C10.7977 8.02555 11.201 8.02555 11.3403 8.30788Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
			</svg> 장학신청
		</a></li>
		<li class="breadcrumb-item active"><a href="#">장학금 신청∙조회</a></li>
	</ol>
</div>
<div class="container-fluid">

<div class="card" style="padding:20px;">

<div class="text-center" style="margin-bottom: 20px; margin-top:20px;">
	<h2>${currentInfo.year}학년도 ${currentInfo.semester}학기 장학금 신청</h2>
<%-- ${userInfo.studentVO.academicVO.deptCode} --%>
</div>
<!-- 내 학적 -->
<div class="row">
	<div class="col-xl-12">
		<div class="card">
			<div class="card-body" style="border:none;">
				<div class="row d-flex align-items-center mb-2">
					<div class="col-md-1 text-end fs-4">
						학번: 
					</div>
					<div class="col-md-2">
						<input type="text" name="" value="${userInfo.userId }" disabled="disabled" class="form-control" >
					</div>
					<div class="col-md-1 text-end fs-4">
						이름: 
					</div>
					<div class="col-md-2">
						<input type="text" name="" value="${sessionScope.userInfo.studentVO.stuNameKo }" disabled="disabled" class="form-control">
					</div>
					<div class="col-md-2 text-end fs-4">
						학부(과): 
					</div>
					<div class="col-md-3">
						<input type="text" name="" value="${sessionScope.userInfo.studentVO.academicVO.acaMajor }" disabled="disabled" class="form-control">
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!--  신청정보 장학정보 -->

<div class="row" style="margin-bottom: 60px;">
	<div class="col-md-5">
		<h4><span style="font-size:20px; color: #f96d00;">|</span><strong>&nbsp;신청정보</strong></h4>
		<div class="card">
			<div class="card-header" >
				<div class="col-md-4 text-end pe-4 fs-4">
					신청상태 
				</div>
				<div class="col-md-4 text-left">
					<select name="slStatus" id="slStatus" class="default-select form-control">
							<option selected>전체</option>
							<option value="Y">승인</option>
							<option value="W">대기</option>
							<option value="N">반려</option>
					</select>
				</div>
				<div class="col-md-4 text-left ps-4">	
					<button type="button" class="btn btn-xxl btn-outline-secondary" onclick="statusSearch()">
											<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
							<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"></path>
						</svg>
						<span class="visually-hidden">Button</span>
					</button>
				</div>
			</div>
		    <div class="card-body px-0" style="height:40vh;overflow:auto;padding-top:0;">
		    	<table class="table text-center" id="scholarAppList">
		    		<thead>
		    			<tr class="bg-info">
			    			<th class="fw-bold">#</th>
			    			<th class="fw-bold">장학명칭</th>
			    			<th class="fw-bold">등급</th>
			    			<th class="fw-bold">신청일자</th>
			    			<th class="fw-bold">신청상태</th>
		    			</tr>
		    		</thead>
		    		<tbody id="td">
						<c:choose>
							<c:when test="${empty scholarList }">
								<tr>
									<td colspan="4" class="text-center">
										신청내역이 존재하지 않습니다.
									</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${scholarList }" var="list" varStatus="stat">
					    			<tr class="detail">
					    				<input type="hidden" value="${list.slNo }"/>
					    				<input type="hidden" value="${list.siCode }"/>
					    				<td class="fw-bold">${stat.count }</td>
					    				<td><a class="slName" onclick="window.open('/scholarship/scholarDetail?slNo=${list.slNo }', 'win_new2', 'width=700, height=600, top=200, left=200')">${list.siName}</a></td>
					    				<td class="siGrade">${list.siGrade }</td>
					    				<td class="slAplctDate"><fmt:formatDate value="${list.slAplctDate }" pattern="yyyy-MM-dd"/></td>
					    				<c:if test="${list.slStatus eq 'W' }">
						    				<td class="slStatus"><span class="badge light badge-warning">대기</span></td>
					    				</c:if>
					    				<c:if test="${list.slStatus eq 'Y' }">
						    				<td class="slStatus"><span class="badge light badge-success">승인</span></td>
					    				</c:if>
					    				<c:if test="${list.slStatus eq 'N' }">
						    				<td class="slStatus"><span class="badge light badge-danger">반려</span></td>
					    				</c:if>
					    			</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
		    		</tbody>
		    	</table>
		    </div>
		</div>    
	</div>
	
	
	<div class="col-md-7">
					<h4><span style="font-size:18px; color: #f96d00;">|</span><strong>&nbsp;장학정보</strong></h4>
		<div class="card">
			<div class="card-header">
				<div class="col-md-2 text-center fs-4">
					장학명칭 
				</div>
				<div class="col-md-4" id="schoDiv">
					<select name="code" id="code" class="default-select form-control">
						<option value="전체" id="allyear">전체</option>
						<c:forEach items="${scholarInfoList }" var="list">
							<option value="${list.siCode }">${list.siName }</option>
						</c:forEach>
					</select>
				</div>
				<div class="col-md-2 text-center fs-4">
					장학구분</div>
				<div class="col-md-2">
					<select name="gubun" id="gubun" class="default-select form-control">
						<option value="전체" id="">전체</option>
						<option value="교내" id="1">교내</option>
						<option value="교외" id="2">교외</option>
					</select>
				</div>
				<div class="col-md-2 text-center">	
					<button type="button" class="btn btn-xxl btn-outline-secondary" onclick="listSearch()">
									  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
					  <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"></path>
					</svg>
				  <span class="visually-hidden">Button</span>
				</button>
				</div>
			</div>
			<div class="card-body px-0" style="height:40vh;overflow:auto;padding-top:0;">
				<table class="table text-center" id="infoTable" style="overflow:auto;">
					<thead>
						<tr class="bg-info">
							<th class="fw-bold">#</th>
							<th class="fw-bold">장학구분</th>
							<th class="fw-bold">장학명칭</th>
							<th class="fw-bold">장학등급</th>
							<th class="fw-bold">신청</th>
						</tr>
					</thead>
					<tbody id="tbody">
						<c:choose>
							<c:when test="${empty scholarInfoList }">
								<tr>
									<td colspan="5">
										조회하신 내용이 존재하지 않습니다.
									</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${scholarInfoList }" var="list" varStatus="stat">
									<tr class="scholarInfo">
										<td class="fw-bold">${stat.count }</td>
										<input class="siCode" type="hidden" value="${list.siCode }" />
										<td>${list.siGubun }</td>
										<td>${list.siName }</td>
										<td>${list.siGrade }</td>
										<td><button type="button" class="btn btn-xl btn-primary fs-6" id="scholarBtn">신청</button></td>
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
</div>

</div>




</div>

<script type="text/javascript">
function listSearch(){
	
	let code = $("#code").val();
	console.log(code);
	let gubun = $("#gubun").val();
	console.log(gubun);
	let data = {
			"siCode" : code,
			"siGubun" : gubun
		}

	$.ajax({
		url : "/scholarship/application",
		type : "post",
		data : data,
		dataType : "json",
		success : function(result){
			console.log(result)
			console.log($("#infoTable"));
			$("#infoTable > tbody").empty();
			if(result.length > 0){
				$.each(result, function(index, item){
					index = index + 1;
					let str = "<tr class='scholarInfo'>";
					str += "<td class='fw-bold'>" + index + "</td>";
					str += "<input class='siCode' type='hidden' value='" + item.siCode + "'>";
					str += `<td class='siGubun'>\${item.siGubun}</td>`;
					str += `<td class='siName'>\${item.siName}</td>`;
					str += `<td class='siGrade'>\${item.siGrade}</td>`;
					str += "<td><button type='button' class='btn btn-xl btn-primary fs-6' id='scholarBtn'>신청</button></td>";
					str += "</tr>";
					$("#infoTable > tbody").append(str);
				});
			}
		}
	});
}

function statusSearch(){
	
	let status = $("#slStatus").val();
	console.log(status);

	$.ajax({
		url : "/scholarship/application/appList",
		type : "post",
		data : {
			slStatus : status
		},
		success : function(res){
			console.log(res)

			$("#scholarAppList tbody tr").remove();
			$.each(res, function(i, item){
				let slStatus = item.slStatus;
				let timestamp = item.slAplctDate;
				let date = new Date(timestamp);
				let month = (date.getMonth() + 1).toString(); 
				if (month.length === 1) {
					month = '0' + month; 
				}
				let applDate = date.getFullYear() + '-' + month + '-' + date.getDate();
				let str = `
					<tr class="detail">
						<input type="hidden" value="\${item.slNo }"/>
						<input type="hidden" value="\${item.siCode }"/>
						<td class="fw-bold">\${i+1 }</td>
						<td><a onclick="window.open('/scholarship/scholarDetail?slNo=\${item.slNo }', 'win_new2', 'width=700, height=600, top=200, left=200')">\${item.siName}</a></td>
						<td class="siGrade">\${item.siGrade }</td>
						<td class="slAplctDate">\${applDate}</td>`;
				if(slStatus == 'W'){
					str += `<td class="slStatus"><span class="badge light badge-warning">대기</span></td>`;
				}
				if(slStatus == 'Y'){
					str += `<td class="slStatus"><span class="badge light badge-success">승인</span></td>`;		
				}
				if(slStatus == 'N'){
					str += `<td class="slStatus"><span class="badge light badge-danger">반려</span></td>`;			
				}
				str += "</tr>";

				$("#scholarAppList tbody").append(str);
			});
		}
	});
	
}

$(function(){
	
	setTimeout(() => {
		var element = document.querySelector("#schoDiv .inner");
		console.log(element.childNodes[0]);
		element.childNodes[0].style.overflow = "scroll";
	}, 1000);
	
	$(document).on("click", "#tbody #scholarBtn", function(){
// 		alert("신청버튼");
		console.log($(this).parents("tr").find("input").val());
		let sunheeMsg = this.parentElement.parentElement.children[3].innerHTML;
// 		if(confirm(sunheeMsg +" 신청하시겠습니까?")){
			
// 			let siCode = $(this).parents("tr").find("input").val();
			
// 			$.ajax({
// 				url : "/scholarship/application/insert",
// 				type : "post",
// 				data : {
// 					siCode : siCode
// 				},
// 				dataType : "json",
// 				success : function(result){
// 					if(result == "OK"){
// 						location.href = "/scholarship/application";
// 					}
// 				}
// 			});
// 		}
		Swal.fire({
			  title: '장학금 신청',
			  html : '<strong style="color: #f95959; font-size:19px;">' + sunheeMsg + '</strong>' + "를 신청하시겠습니까?",
			  icon: 'question',
			  showCancelButton: true,
			  confirmButtonText: 'Yes'
			}).then((result) => {
			  if (result.isConfirmed) {
				  
				  let siCode = $(this).parents("tr").find("input").val();
					
					$.ajax({
						url : "/scholarship/application/insert",
						type : "post",
						data : {
							siCode : siCode
						},
						dataType : "json",
						success : function(result){
							if(result == "OK"){
								Swal.fire(
							      '신청 완료',
							      '신청이 완료되었습니다!',
							      'success'
								).then((result)=>{
									location.href = "/scholarship/application";
								});
							}
						}
					});
			  } else {
				  Swal.fire(
				      '신청 중단',
				      '신청이 중단되었습니다!',
				      'error'
				  )
			  }
			});


	})
});

</script>