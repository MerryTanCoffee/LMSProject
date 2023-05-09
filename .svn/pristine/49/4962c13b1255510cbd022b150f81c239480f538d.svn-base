<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
	#cateName{
		color:#22313f; 
		font-weight: 800; 
		font-size: 25px;
	}
</style>

<div class="conL"> 
	  <div class="row">
   <div class="col-xl-12">
      <div class="card dz-card border-0" id="accordion-one">
         <div class="card-header flex-wrap border-0">
            <div>
               <h4 class="card-title" id="cateName"></h4>
            </div>
         </div>
         <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="Preview" role="tabpanel"
               aria-labelledby="home-tab">
               <div class="card-body pt-0">
                  <div class="table-responsive">
                     <table id="example" class="display table"
                        style="min-width: 845px">
                        <thead style="border-bottom: #175bc7;">
                           <tr style="border-bottom: #175bc7;">
                              <th>#</th>
                              <th>제목</th>
                              <th>작성자</th>
                              <th>작성일</th>
                              <th>조회수</th>
                           </tr>
                        </thead>
                        <tbody  style="border-top: #175bc7;">
                           <c:set value="${pagingVO.dataList }" var="boardList"/>
                           <c:choose>
                              <c:when test="${empty boardList}">
                                 <tr>
                                    <td colspan="5" style="text-align:center;">조회하신 게시글이 존재하지 않습니다.</td>                                 
                                 </tr>
                              </c:when>
                              <c:otherwise>
                                 <c:forEach items="${boardList }" var="board">
                                    <tr>
                                       <td>${board.rnum }</td>
                                       <td><a href="/board/detail/${board.boNo }">${board.boTitle }</a></td>
                                       <td>${board.empNameKo }${board.stuNameKo }</td>
                                       <td>${board.boWriteDate }</td>
                                       <td>${board.boHit }</td>
                                    </tr>
                                 </c:forEach>
                              </c:otherwise>
                           </c:choose>
                        </tbody>
                     </table>
                     <input type="hidden" id="cateCode" value="${cateCode }">
                     <c:if test="${sessionScope.userInfo.userType eq 'EMP' }">
		   			 	<button type="button" class="btn btn-primary" onclick="javascript:location.href='/board/form/${cateCode}'">등록</button>
		   			 </c:if>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div> 

</div>





  <script>
  $(function () {
	var cateCode = $('#cateCode').val();
	var cateName = $('#cateName');
	
	if(cateCode == 'n001'){
		cateName.text('학사공지');
	}
	if(cateCode == 'n002'){
		cateName.text("일반공지");
	}
	if(cateCode == 'r001'){
		cateName.text("채용공지");
	}
	if(cateCode == 's002'){
		cateName.text("학사일정");
	}
	if(cateCode == 'r001'){
		cateName.text("채용정보");
	}
	if(cateCode == 'p001'){
		cateName.text("건의사항");
	}
	
})
  
  </script>
  