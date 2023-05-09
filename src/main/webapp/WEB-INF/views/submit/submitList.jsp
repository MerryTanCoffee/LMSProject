<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<div class="page-titles">
	<ol class="breadcrumb">
		<li>
			<h5 class="bc-title">과제</h5>
		</li>
		<li class="breadcrumb-item"><a href="javascript:void(0)"> 
			<svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path fill-rule="evenodd" clip-rule="evenodd" d="M10.0122 1.82893L11.6874 5.17545C11.8515 5.50399 12.1684 5.73179 12.5359 5.78451L16.2832 6.32391C17.2091 6.45758 17.5775 7.57968 16.9075 8.22262L14.1977 10.8264C13.9314 11.0825 13.8101 11.4505 13.8731 11.812L14.5126 15.488C14.6701 16.3974 13.7023 17.0911 12.8747 16.6609L9.52545 14.9241C9.1971 14.7537 8.80385 14.7537 8.47455 14.9241L5.12525 16.6609C4.29771 17.0911 3.32986 16.3974 3.48831 15.488L4.12686 11.812C4.18986 11.4505 4.06864 11.0825 3.80233 10.8264L1.09254 8.22262C0.422489 7.57968 0.790922 6.45758 1.71678 6.32391L5.4641 5.78451C5.83158 5.73179 6.14942 5.50399 6.31359 5.17545L7.98776 1.82893C8.40201 1.00148 9.59799 1.00148 10.0122 1.82893Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
			</svg> 과제
		</a></li>
		<li class="breadcrumb-item active"><a href="#">${homework.hwTitle}</a></li>
	</ol>
</div>
<div class="container-fluid">
	<div class="card">
			<div class="card-header" style="padding-bottom:10px;">
				<h4><span style="font-size:20px; color: #f96d00;">|</span><strong>&nbsp;${homework.hwTitle}</strong></h4>
			</div>
			<div class="card-body pb-0">
				<div style="border-radius: 3px; background: #becbd9c2; padding: 15px 15px 0 15px;">
					<span style="font-size:18px;"><strong>제출기간&nbsp;</strong><i class="fa-solid fa-caret-right"></i>&nbsp; ${fn:substring(homework.hwDeadline, 0, 10) }</span>
					<br>
					<div class="d-flex" style="font-size:18px;"><span style="padding-top:3px;"><strong>과제내용&nbsp;</strong><i class="fa-solid fa-caret-right"></i>&nbsp;</span> ${homework.hwContent}</div>
				</div> 
			</div>
	
		<!-- ///////////////////////////card-header ////////////////////-->
		<div class="card-body">
			<h4>[학생목록] </h4>
			<div class="row">
				<div class="table-responsive">
					<table class="table table-bordered text-center" id="myTable">
						<thead>
							<tr>
								<th>#</th>
								<th>이름</th>
								<th>학번</th>
								<th>학과</th>
								<th>제출일자</th>
								<th>과제확인</th>
								<th>과제점수</th>
								<th>제출확인</th>
							</tr>
						</thead>
						
						<tbody id ="fileTable"  style="border-top: #175bc7;">
						    <c:set value="${pagingVO.dataList }" var="boardList"/>
						    <c:choose>
						      <c:when test="${empty studentList}">
						        <tr>
						          <td colspan="8" style="text-align:center;">과제를 제출한 학생 내역이 존재하지 않습니다.</td>                                 
						        </tr>
						      </c:when>
						      <c:otherwise>
						        <c:forEach items="${studentList }" var="list" varStatus="i"> 
						          <tr>
						            <td style="padding-top:7px;padding-bottom:7px;">${i.count }</td>
						            <td style="padding-top:7px;padding-bottom:7px;">${list.stuNameKo }</td>
						            <td style="padding-top:7px;padding-bottom:7px;" data-stu-id>${list.stuId }</td>
						            <td style="padding-top:7px;padding-bottom:7px;">${list.acaMajor }</td>
						            <td style="padding-top:7px;padding-bottom:7px;" id = "submDate${i.index}"></td>
						            <td style="padding-top:7px;padding-bottom:7px;" id = "fileTd${i.index}"></td>
						            <td style="padding-top:7px;padding-bottom:7px;">	
							      	    <select id = "score-select">
										  <option value="none">성적부여</option>
										  <option value="5">A</option>
										  <option value="4">B</option>
										  <option value="3">C</option>
										  <option value="2">D</option>
										  <option value="0">F</option>
										</select>
									</td>
						            <td style="padding-top:7px;padding-bottom:7px; data-btn"><button class="btn btn-xs btn-primary" style="font-size: 13px;">확인</button></td>
						          </tr>
						        </c:forEach>
						      </c:otherwise>
						    </c:choose>
						  </tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="card-footer border-0">
		</div>
	</div>
</div><!-- container-fluid 끝 -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript">
$(function() {
	$(document).on('click', '.btn-primary', function(){
		 const stuId = $(this).parents('tr').children('[data-stu-id]').text();
         const score = $(this).parents('tr').find('#score-select option:selected').val();
         const btn = $(this);
         
         var data = {
             asgScore : score,
             stuId : stuId,
             lecCode : '${lecCode}'
         }
         $.ajax({
             url : "/submit/submitScore/${hwNo}",
             type : "post",
             data : JSON.stringify(data),
             contentType : "application/json;charset=utf-8",
             dataType : "text",
             success : function(res) {
            	 swal("성적 반영이 완료되었습니다.");
            	 btn.prop('disabled', true);
             },
         });
     });
	
	
	
		$.ajax({
				type: "post",
				url: "/submit/submitFile",
				dataType: "json",
				data: { lecCode: '${lecCode}', hwNo : '${homework.hwNo}'},
				success : function (res) {
					if (res.length > 0) {
						$.each(res, function (index, item) {
							var data = item.submFilePath + item.submFileName;
							var stuId = item.stuId;
							var foundIndex = -1;
						    // stuId를 기준으로 해당 행을 찾음
						    $('#myTable tr').each(function(i, el) {
						        var rowStuId = $(el).find('[data-stu-id]').text();
						        if (rowStuId === stuId) {
						            foundIndex = i;
						            return false; // 순회를 중단하기 위해 false를 반환함
						        }
						    });
						    if (foundIndex >= 0) {
						        // 찾은 행에 대응하는 index를 이용하여 열의 내용 변경
						        let strFile = `<a href='/submit/displayFile?fileName=\${item.submFilePath}\${item.submFileName}'>다운로드</a>`;
						        let strDate = `\${item.submDate}`;
						        let fndIndex = foundIndex-1;
						        $(`#fileTd\${fndIndex}`).html(strFile);
						        $(`#submDate\${fndIndex}`).html(strDate);
						    }
						});
					};
				}
			})
			
		}) 
		
	function getExtension(filename) {
	var ext = filename.split('.').pop();
	return ext;
	}
	</script>
