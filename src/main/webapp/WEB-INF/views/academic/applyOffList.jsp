<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
        <!-- 학생이 신청한 휴학 리스트 보여주기  -->
 <div class="page-titles">
   <ol class="breadcrumb">
      <li>
         <h5 class="bc-title">학적</h5>
      </li>
      <li class="breadcrumb-item"><a href="#">
           <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path fill-rule="evenodd" clip-rule="evenodd" d="M18.634 13.4211C18.634 16.7009 16.7007 18.6342 13.4209 18.6342H6.28738C2.99929 18.6342 1.06238 16.7009 1.06238 13.4211V6.27109C1.06238 2.99584 2.26688 1.06259 5.54763 1.06259H7.38096C8.03913 1.06351 8.65879 1.37242 9.05296 1.89951L9.88988 3.01234C10.2859 3.53851 10.9055 3.84834 11.5637 3.84926H14.1579C17.446 3.84926 18.6596 5.52309 18.6596 8.86984L18.634 13.4211Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
				<path d="M5.85754 12.2577H13.8646" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
			</svg>
           	학적</a>
      </li>
      <li class="breadcrumb-item active"><a href="javascript:void(0)">휴.복학 신청 내역</a></li>
   </ol>
</div>   
<div class="container-fluid">
        <div class="row">
            <div class="card mb-0" style="border:none;">
                <!-- Nav tabs -->
                <div class="custom-tab-1 pt-3">
                    <ul class="nav nav-tabs">
                        <li class="nav-item">
                            <a class="nav-link active" data-bs-toggle="tab" href="#waitList">대기</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-bs-toggle="tab" href="#selectAcceptList">승인</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-bs-toggle="tab" href="#rejectList">반려</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane show active" id="waitList" role="tabpanel">
                            <div class="row">
                                <div class="card" style="border:none;">
                                    <div class="pt-4">
                                        <div class="card-header pt-0 pb-0" style="border:none;">
                                            <h4><span style="font-size:20px; color: #f96d00;">|</span>&nbsp;대기내역</h4>
                                        </div>
                                        <div class="card-body">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th><strong>학번</strong></th>
                                                        <th><strong>성명</strong></th>
                                                        <th><strong>시작학기</strong></th>
                                                        <th><strong>종료학기</strong></th>
                                                        <th style="display:none">사유</th>
                                                        <th><strong>신청일자</strong></th>
                                                        <th><strong>상세보기</strong></th>
                                                    </tr>
                                                </thead> 
                                                <tbody>
                                                	<c:forEach items="${waitList }" var="wait">
	                                                  <tr id="waitRow"
														    data-stu-id="${wait.stuId}"
														    data-stu-name-ko="${wait.studentVO.stuNameKo}" 
														    data-si-Start-Year="${wait.acStartYear}"
														    data-si-Start-Smstr="${wait.acStartSmstr}"
														    data-si-End-Year="${wait.acEndYear}"
														    data-si-End-Smstr="${wait.acEndSmstr}"
														    data-si-Reason="${wait.acReason}"
														    data-si-App-Date="${wait.acReportDate}"
														    data-si-ac-no="${wait.acNo}"
														>
	                                                        <td>${wait.stuId }</td>
	                                                        <td>${wait.studentVO.stuNameKo}</td>
	                                                        <td>${wait.acStartYear}년도 ${wait.acStartSmstr}학기</td>
	                                                        <td>${wait.acEndYear}년도 ${wait.acEndSmstr}학기</td>
	                                                        <td style="display:none">${wait.acReason}</td>
	                                                        <td><fmt:formatDate value="${wait.acReportDate }" pattern="yyyy-MM-dd"/> </td>
	                                                        <td><button type="button" class="btn btn-rounded btn-outline-primary btn-sm waitViewBtn" data-bs-toggle="modal" data-bs-target="#waitApplication"><i class="bi bi-list-task"></i>보기</button></td>
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
                         <!-- 대기내역 모달 -->
                         <div class="modal fade" id="waitApplication">
                             <div class="modal-dialog modal-dialog-centered" role="document">
                                 <div class="modal-content">
                                     <div class="modal-header">
                                         <h5 class="modal-title">대기내역</h5>
                                         <button type="button" class="btn-close" data-bs-dismiss="modal">
                                         </button>
                                     </div>
                                     <div class="modal-body">
                                     	<form action="/academic/updateOffStatus" method="post" id="waitUpdate">
	                                     	<input type="hidden"  name="acStatus" value="W" />
	                                     	<table class="table table-bordered" id="waitModalTbl">
												<tr>
													<td style="width: 30%;background-color: aliceblue;">학번</td>
													<td class="waitModalTd"></td>
											    </tr>
										 		<tr>
										  			<td style="width: 30%;background-color: aliceblue;">성명</td>
										  			<td class="waitModalTd"></td>
										 		</tr>
										 		<tr>
										  			<td style="width: 30%;background-color: aliceblue;">시작학기</td>
										  			<td class="waitModalTd"></td>
												</tr>
												<tr>
										  			<td style="width: 30%;background-color: aliceblue;">종료학기</td>
										  			<td class="waitModalTd"></td>
												</tr>
												<tr>
										  			<td style="width: 30%;background-color: aliceblue;">사유</td>
										  			<td class="waitModalTd"></td>
												</tr>
												<tr>
										  			<td style="width: 30%;background-color: aliceblue;">신청일자</td>
										  			<td class="waitModalTd"></td>
												</tr>
												<tr>
													<td style="width: 30%;background-color: aliceblue;">처리의견</td>
													<td><textarea class="form-txtarea form-control" rows="8" name="acComment"></textarea></td>
												</tr>
										
												<tr style="display:none;">
													<td style="width: 30%; background-color: aliceblue;">순번</td>
													<td class="waitModalTd"></td>
												</tr>
										    </table>
										</form>
                                     </div>
                                     <div class="modal-footer">
                                         <button type="button" class="btn btn-success" id="apply">승인</button>
                                         <button type="button" class="btn btn-danger" id="deny">반려</button>
                                         <button type="button" class="btn btn-dark" data-bs-dismiss="modal">닫기</button>
                                     </div>
                                 </div>
                             </div>
                         </div>
					 <div class="tab-content">	
                        <div class="tab-pane" id="rejectList">
                            <div class="row">
                                <div class="card" style="border:none;">
                                    <div class="pt-4">
                                        <div class="card-header pt-0 pb-0" style="border:none;">
                                            <h4><span style="font-size:20px; color: #f96d00;">|</span>&nbsp;반려내역</h4>
                                        </div>
                                        <div class="card-body">
                                            <table class="table table-hover">
                                                <thead>
                                                    <tr>
                                                        <th><strong>학번</strong></th>
                                                        <th><strong>성명</strong></th>
                                                        <th><strong>시작학기</strong></th>
                                                        <th><strong>종료학기</strong></th>
                                                        <th style="display:none">사유</th>
                                                        <th><strong>신청일자</strong></th>
                                                        <th><strong>상세보기</strong></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach items="${rejectList }" var="reject">
                                                    <tr id="rejectRow"
                                                    data-stu-id="${reject.stuId}"
	  												data-stu-name-ko="${reject.studentVO.stuNameKo}" 
													data-si-Start-Year="${reject.acStartYear}"
													data-si-Start-Smstr="${reject.acStartSmstr}"
													data-si-End-Year="${reject.acEndYear}"
													data-si-End-Smstr="${reject.acEndSmstr}"
													data-si-Reason="${reject.acReason}"
													data-si-App-Date="${reject.acReportDate}"
													data-si-Ac-Comment="${reject.acComment}"
                                                    >
	                                            	<td>${reject.stuId }</td>
		                                            <td>${reject.studentVO.stuNameKo}</td>
		                                            <td>${reject.acStartYear}년도 ${reject.acStartSmstr}학기</td>
		                                            <td>${reject.acEndYear}년도 ${reject.acEndSmstr}학기</td>
		                                            <td style="display:none">${reject.acReason}</td>
		                                            <td><fmt:formatDate value="${reject.acReportDate }" pattern="yyyy-MM-dd"/> </td>
                                                    <td><button type="button" class="btn btn-rounded btn-outline-primary btn-sm rejectViewBtn" data-bs-toggle="modal" data-bs-target="#rejectApplication"><i class="bi bi-list-task"></i>보기</button></td>
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
                        <!-- tab content 끝 -->
                         <!-- 반려내역 모달 -->
                         <div class="modal fade" id="rejectApplication">
                             <div class="modal-dialog modal-dialog-centered" role="document">
                                 <div class="modal-content">
                                     <div class="modal-header">
                                         <h5 class="modal-title">반려내역</h5>
                                         <button type="button" class="btn-close" data-bs-dismiss="modal">
                                         </button>
                                     </div>
                                     <div class="modal-body">
                                     	<table class="table table-bordered" id="rejectModalTbl">
												<tr>
													<td style="width: 30%;background-color: aliceblue;">학번</td>
													<td class="rejectModalTd"></td>
											    </tr>
										 		<tr>
										  			<td style="width: 30%;background-color: aliceblue;">성명</td>
										  			<td class="rejectModalTd"></td>
										 		</tr>
										 		<tr>
										  			<td style="width: 30%;background-color: aliceblue;">시작학기</td>
										  			<td class="rejectModalTd"></td>
												</tr>
												<tr>
										  			<td style="width: 30%;background-color: aliceblue;">종료학기</td>
										  			<td class="rejectModalTd"></td>
												</tr>
												<tr>
										  			<td style="width: 30%;background-color: aliceblue;">사유</td>
										  			<td class="rejectModalTd"></td>
												</tr>
												<tr>
										  			<td style="width: 30%;background-color: aliceblue;">신청일자</td>
										  			<td class="rejectModalTd"></td>
												</tr>
												<tr>
													<td style="width: 30%;background-color: aliceblue;">반려사유</td>
													<td class="rejectModalTd"></td>
												</tr>
									    </table>
                                     </div>
                                     <div class="modal-footer">
                                         <button type="button" class="btn btn-dark" data-bs-dismiss="modal">닫기</button>
                                     </div>
                                 </div>
                             </div>
                         </div>
	                </div>
	            </div>
	         <div class="tab-content">    
              <div class="tab-pane" id="selectAcceptList">
			      <div class="row">
			          <div class="card" style="border:none;">
			              <div class="pt-4">
			                	<div class="card-header pt-0 pb-0" style="border:none;">
                                    <h4><span style="font-size:20px; color: #f96d00;">|</span>&nbsp;승인내역</h4>
                                </div>
			                  <div class="card-body">
			                      <table class="table table-hover">
			                          <thead>
			                                <tr>
					                            <th><strong>학번</strong></th>
					                            <th><strong>성명</strong></th>
					                            <th><strong>시작학기</strong></th>
					                            <th><strong>종료학기</strong></th>
					                            <th><strong>신청일자</strong></th>
					                            <th><strong>사유</strong></th>
					                         </tr>
			                          </thead>
			                          <tbody>
				                          <c:forEach items="${acceptList }" var="accept">
				                              <tr id="acceptRow"
				                              data-stu-id="${accept.stuId}"
												data-stu-name-ko="${accept.studentVO.stuNameKo}" 
												data-si-Start-Year="${accept.acStartYear}"
												data-si-Start-Smstr="${accept.acStartSmstr}"
												data-si-End-Year="${accept.acEndYear}"
												data-si-End-Smstr="${accept.acEndSmstr}"
												data-si-Reason="${accept.acReason}"
												data-si-App-Date="${accept.acReportDate}"
												data-si-Ac-Comment="${accept.acComment}"
				                              >
				                         	<td>${accept.stuId }</td>
				                             <td>${accept.studentVO.stuNameKo}</td>
				                             <td>${accept.acStartYear}년도 ${accept.acStartSmstr}학기</td>
				                             <td>${accept.acEndYear}년도 ${accept.acEndSmstr}학기</td>
				                             <td style="display:none">${accept.acReason}</td>
				                             <td><fmt:formatDate value="${accept.acReportDate }" pattern="yyyy-MM-dd"/> </td>
				                              <td>${accept.acReason}</td>
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
		 </div>
	</div>
<script type="text/javascript">
$(function(){

    $(document).on("click", ".waitViewBtn", function(){
        let waitRow = $(this).parent().parent();
        let waitTbl = $("#waitModalTbl")
        console.log(waitTbl.find(".waitModalTd"));
        waitTbl.find(".waitModalTd:eq(0)").html(`<input style="border:none" readonly type=text name=stuId value='\${waitRow.data('stuId')}'>`);
        waitTbl.find(".waitModalTd:eq(1)").html(`<input style="border:none" readonly type=text name=stuNameKo value='\${waitRow.data('stuNameKo')}'>`);
        waitTbl.find(".waitModalTd:eq(2)").html(`<input style="border:none; width: 35px;" readonly type=text name=acStartYear value='\${waitRow.data('siStartYear')}'>년도   <input style="border:none; width: 7px;" readonly type=text name=acStartSmstr value='\${waitRow.data('siStartSmstr')}'>학기`);
        waitTbl.find(".waitModalTd:eq(3)").html(`<input style="border:none; width: 35px;" readonly type=text name=acEndYear value='\${waitRow.data('siEndYear')}'>년도   <input style="border:none; width: 7px;" readonly type=text name=acEndSmstr value='\${waitRow.data('siEndSmstr')}'>학기`);
        waitTbl.find(".waitModalTd:eq(4)").html(`<input style="border:none" readonly type=text name=acReason value='\${waitRow.data('siReason')}'>`);
        waitTbl.find(".waitModalTd:eq(5)").html(`<input style="border:none" readonly type=text name=acReportDate value='\${waitRow.data('siAppDate')}'>`);
        waitTbl.find(".waitModalTd:eq(6)").html(`<input style="border:none" readonly type=text name=acNo value='\${waitRow.data('siAcNo')}'>`);
    	
    });
	
    $("#apply").on("click", function(){
    	console.log("승인버튼");
    	$("input[name=acStatus]").val("Y");
    	$("#waitUpdate").submit();
    });
    
    $("#deny").on("click", function(){
    	console.log("반려버튼");
    	$("input[name=acStatus]").val("N");
    	$("#waitUpdate").submit();
    });

    $(document).on("click", ".rejectViewBtn", function(){
        let rejectRow = $(this).parent().parent();
        let rejectTbl = $("#rejectModalTbl")
        console.log(rejectTbl.find(".rejectModalTd"));
        rejectTbl.find(".rejectModalTd:eq(0)").html(`<input style="border:none" readonly type=text name=stuId value='\${rejectRow.data('stuId')}'>`);
        rejectTbl.find(".rejectModalTd:eq(1)").html(`<input style="border:none" readonly type=text name=stuNameKo value='\${rejectRow.data('stuNameKo')}'>`);
        rejectTbl.find(".rejectModalTd:eq(2)").html(`<input style="border:none; width: 35px;" readonly type=text name=acStartYear value='\${rejectRow.data('siStartYear')}'>년도   <input style="border:none; width: 7px;" readonly type=text name=acStartSmstr value='\${rejectRow.data('siStartSmstr')}'>학기`);
        rejectTbl.find(".rejectModalTd:eq(3)").html(`<input style="border:none; width: 35px;" readonly type=text name=acEndYear value='\${rejectRow.data('siEndYear')}'>년도   <input style="border:none; width: 7px;" readonly type=text name=acEndSmstr value='\${rejectRow.data('siEndSmstr')}'>학기`);
        rejectTbl.find(".rejectModalTd:eq(4)").html(`<input style="border:none" readonly type=text name=acReason value='\${rejectRow.data('siReason')}'>`);
        rejectTbl.find(".rejectModalTd:eq(5)").html(`<input style="border:none" readonly type=text name=acReportDate value='\${rejectRow.data('siAppDate')}'>`);
        rejectTbl.find(".rejectModalTd:eq(6)").html(`<input style="border:none" readonly type=text name=acComment value='\${rejectRow.data('siAcComment')}'>`);
		
    });
    
});


</script>        