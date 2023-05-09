<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
   #cateName{
      font-weight: 800;
      font-size: 20px;
   }
   
</style>

<div class="conL"> 
   <div class="row" >
      <div class="card border-0">
      <div class="card-header flex-wrap border-0" style="padding-left:0px;">
              <h1 id="cateName">
                     <c:if test="${board.cateCode eq 'n001' }"> 학사공지</c:if>
                     <c:if test="${board.cateCode eq 'n002' }"> 일반공지</c:if>
                     <c:if test="${board.cateCode eq 'r001' }"> 채용정보</c:if> 상세보기
              </h1>
					<!-- ///////////////////////////////////////////////////// 스터디 관련  ///////////////////////////////////////////////////// -->
                    <c:if test="${board.cateCode eq 's001'}">
                      <input type="hidden" name="studyCode" value="${board.studyCode}" id="studyCode">
                        <c:choose>
                           <c:when test="${board.ssStatus ne 'N'}"><span class="badge badge-xl light badge-danger">모집완료된 스터디입니다.</span></c:when>
                           <c:when test="${board.userId == sessionScope.userInfo.userId}">
                              <span class="badge badge-xl light badge-warning" >본인이 모집중인 스터디입니다.</span>
                           </c:when>
                           <c:otherwise>
                              <input id="atdBtn" type="button" class="btn btn-primary mb-2" data-bs-toggle="modal" data-bs-target="#exampleModalCenter" value="참여신청하기"></input>
                              <div class="modal fade" id="exampleModalCenter" style="display: none;" aria-hidden="true">
                                 <div class="modal-dialog modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                       <div class="modal-header">
                                          <h3 class="modal-title">스터디 참여 신청</h3>
                                          <button type="button" class="btn-close"
                                             data-bs-dismiss="modal"></button>
                                       </div>
                                       <div class="modal-body pb-0">
                                          <form action="/board/study/${board.boNo}" method="post"
                                             id="stuInForm">
                                             <input type="hidden" name="boTitle" value="${board.boTitle}"> 
                                             <input type="hidden" name="cateCode" id="cateCode" value="${board.cateCode}"> 
                                             <input type="hidden" name="boNo" value="${board.boNo }" id="boNo">
                                             <input type="hidden" name="boId" value="${board.userId }">
                                          <div class="row">
                                          	<div class="mb-3 col-md-6">
                                                <i class="fa-solid fa-check"></i><label class="form-label fs-4">&nbsp;&nbsp;성명</label>
                                                <input type="text" class="form-control" value="${sessionScope.userInfo.studentVO.stuNameKo }">
                                            </div>	
                                          	<div class="mb-3 col-md-6">
                                                <i class="fa-solid fa-check"></i><label class="form-label fs-4">&nbsp;&nbsp;소속학과</label>
                                                <input type="text" class="form-control" value="${sessionScope.userInfo.studentVO.academicVO.acaMajor}">
                                            </div>	
                                          
<%--                                              <p>${sessionScope.userInfo.studentVO.stuNameKo }</p> --%>
<%--                                              <p>${sessionScope.userInfo.studentVO.academicVO.acaMajor}</p> --%>

                                          </div>
                                          <br>
                                          <div class="input-group input-primary">
												<span class="input-group-text border-0 fs-4">참여 동기</span>
                                            	<textarea class="form-control" name="motiv" rows="5" cols="50"></textarea>
                                        	</div>
                                          </form>
                                       </div>
                                       <div class="modal-footer border-0 pb-3">
<!--                                           <button type="button" class="btn btn-danger light" data-bs-dismiss="modal">닫기</button> -->
                                          <button type="button" class="btn btn-warning" id="studyIn">신청하기</button>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <!-- <input type="button" class="btn btn-success"
                                 style="float: right" id="studyIn" value="참여신청하기"> -->
                           
                           </c:otherwise>
                        </c:choose>
                     </c:if>
        </div>
      <div class="row">
         <div class="col-md-12">
            <div class="card card-primary">
               <div class="card-header">
                  <h3>제목 :&nbsp;&nbsp;${board.boTitle }</h3>
                  <div class="card-tools">
                  <input type="hidden" name="scateCode" id="scateCode" value="${board.cateCode}"> 
                     <div class="fs-4">
                        <strong>작성자&nbsp;:</strong>&nbsp;${board.stuNameKo }${board.empNameKo } / 
                        <strong>작성일&nbsp;:</strong>&nbsp;${board.boWriteDate } / 
                        <strong>조회수&nbsp;:</strong>&nbsp;${board.boHit }
                     </div>

                  </div>
               </div>
               <div id="quickForm" novalidate="novalidate">
                  <div class="card-body fs-4">
                 		 내용&nbsp;:&nbsp; ${board.boContent }</div>
                  <div class="card-footer bg-white">
                     <ul
                        class="mailbox-attachments d-flex align-items-stretch clearfix">
                        <c:if test="${not empty board.boardAttachList }">
                           <c:forEach items="${board.boardAttachList}" var="boardAttach">
                              <li>
                                 <div class="mailbox-attachment-info">
                                 <!-- 파일데이터를 출력하기위한 출력세트 --> 
                                 <span class="mailbox-attachment-icon"> <i class="far fa-file-pdf"></i> </span>
                                    <a href="#" class="mailbox-attachment-name"> 
                                    <i class="fas fa-paperclip"></i>${boardAttach.baOrigin } 
                                    </a> 
                                     <span class="mailbox-attachment-size clearfix mt-1">
                                       <span>${boardAttach.baFancySize } </span> 
                                       <c:url value="/board/download" var="downloadURL">
                                          <c:param name="baNo" value="${boardAttach.baNo }" />
                                       </c:url> <a href="${boardAttach.baSavePath}" download="${boardAttach.baOrigin }" id="down"> 
                                       <span class="btn btn-default btn-sm float-right">
                                          <i class="fas fa-download"></i>
                                       </span>
                                    </a>
                                    </span>
                                 </div>
                              </li>
                           </c:forEach>
                        </c:if>
                     </ul>
                  </div>
                  <c:choose>
                  <c:when test="${sessionScope.userInfo.userType eq 'EMP' || board.userId == sessionScope.userInfo.userId }">
                  <div class="card-footer d-grid gap-3 d-md-flex justify-content-md-end border-0">
                        <button type="button" class="btn badge light badge-primary" id="updateBtn">수정</button>
                        <button type="button" class="btn badge light badge-danger" id="delBtn" style="border-color:#ff5e5e;">삭제</button>
                        <button type="button" class="btn badge light badge-dark" id="listBtn">목록</button>
                  </div>
                  </c:when>
                  <c:otherwise>
                  <div class="card-footer d-grid gap-3 d-md-flex justify-content-md-end border-0">
                        <button type="button" class="btn badge light badge-dark" id="listBtn">목록</button>
                  </div>
                  </c:otherwise>
                  </c:choose>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
</div>

<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>
   $(function() {
      var nFrm = $("#nFrm");
      var upDc = $("#upDc");
      var listBtn = $("#listBtn");
      var updateBtn = $("#updateBtn");
      var delBtn = $("#delBtn");
      var cateCode = $("#scateCode").val();
      var downcount = $("#downcount").val();
      var down = $("#down");
      var studyIn = $("#studyIn");
      var stuInForm = $("#stuInForm");
      var modalBtn = $("#modalBtn");
      var boTitle = '${board.boTitle }';
      var boWriter = '${board.userId}';
      var boNo = '${board.boNo}';
      var userId = '${sessionScope.userInfo.userId}';
      var studyCode=$("#studyCode").val();
      console.log("스터디코드", studyCode);
      console.log("아이디", userId);
      
      var obj = {
            "boTitle" : boTitle,
            "boWriter" :boWriter,
            "userId" : userId
      }
      console.log("obj>>>", obj);

      $.ajax({
          type: "POST",
          url: "/board/detail2",
          data: obj,
          success: function(res) {
              console.log("스터디코드 보내주나?", res);
               if(res == 0){
                 console.log("없다");
              }else{
                 console.log("있다");
                 var badge = $("<span>").addClass("badge badge-xl light badge-warning").text("참여신청 완료");
                 $("#atdBtn").replaceWith(badge);
            } 
          }
      }) 

      studyIn.on("click", function() {
            stuInForm.submit();
      });

      down.on("click", function() {
         //             downcount = parseInt(downcount)+1;
         upDc.submit();
      });
      listBtn.on("click", function() {
         location.href = "/board/list/" + cateCode;
      });
      updateBtn.on("click", function() {
         nFrm.submit();
      });
      delBtn.on("click", function() {
         if (confirm("정말로 삭제하시겠습니까?")) {
            nFrm.attr("action", "/board/delete");
            nFrm.attr("method", "post");
            nFrm.submit();
         } else {
            nFrm.reset();
         }
      });

      const params = new URLSearchParams(location.search);
      const alertMsg = params.get('msg');

      if (alertMsg) {
         alert(alertMsg); 
      }
   });
</script>