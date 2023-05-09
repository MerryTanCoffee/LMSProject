<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!-- 페이지 타이틀 -->
<div class="page-titles">
	<ol class="breadcrumb">
		<li><h5 class="bc-title">온라인 시험</h5></li>
		<li class="breadcrumb-item"><a href="javascript:void(0)">
			<svg width="17" height="17" viewBox="0 0 17 17" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path d="M2.125 6.375L8.5 1.41667L14.875 6.375V14.1667C14.875 14.5424 14.7257 14.9027 14.4601 15.1684C14.1944 15.4341 13.8341 15.5833 13.4583 15.5833H3.54167C3.16594 15.5833 2.80561 15.4341 2.53993 15.1684C2.27426 14.9027 2.125 14.5424 2.125 14.1667V6.375Z" stroke="#2C2C2C" stroke-linecap="round" stroke-linejoin="round"/>
				<path d="M6.375 15.5833V8.5H10.625V15.5833" stroke="#2C2C2C" stroke-linecap="round" stroke-linejoin="round"/>
			</svg>
			시험 출제 </a>
		</li>
		<li class="breadcrumb-item active"><a href="#">상세보기</a></li>
	</ol>
	<a class="text-primary fs-13" data-bs-toggle="offcanvas" href="#offcanvasExample1" role="button" aria-controls="offcanvasExample1">+ Add Task</a>
</div>
<div class="container-fluid">

	<!-- 표현하고자 하는 내용 넣기 -->

<div class="row">
   <div class="col-xl-9">
      <div class="card" id="card-title-3">
         <div class="card-header">
            <h5>
            	<span style="font-size: 18px; color: #f96d00;">|</span> ${examInfo[0].subName } 
            	<c:if test="${examGubun eq 'M' }">중간고사</c:if>
            	<c:if test="${examGubun eq 'F' }">기말고사</c:if>
            </h5> 
         </div>
            <div class="card-body pt-3" id="questBody">
            <div class="card-body pb-3 pt-0" style="background-color: #ffe2e28a; border-radius: 5px;">
            	<p class="pt-3 m-0" style="font-size:16px;">&lt; 출제자 유의사항 &gt;</p>
           		<code style="background-color: #ffe2e200; color:red; font-size:18px;">1.</code> 문제 수정 시, 항목 '추가' 또는 '제거'를 할 수 없으며 문제와 보기, 정답만 수정할 수 없습니다. <br>
           		<code style="background-color: #ffe2e200; color:red; font-size:18px;">2.</code> 시험에 응시한 학생이 있으면 시험문제를 삭제할 수 없습니다.
           	</div> 
            <c:choose>
			<c:when test="${empty examInfo }">
				<div>시험정보가 존재하지 않습니다.</div> 
			</c:when>
			<c:otherwise>
	               <c:set value="${examInfo[0].examList }" var="examList"/>
	               <c:forEach items="${examList }" var="list" varStatus="fstat">
	
	                  <div class="row pt-3" id="questRow${fstat.count }">
	                     <div class="card" id="card-title-3" style="border:none;">
	                        <div class="card-header pt-3" style='border:none;'>
	                           <font id="questionNum">Q${list.exNum }.</font>&nbsp;&nbsp;&nbsp;&nbsp;
	                           <input type="text" class="form-control" placeholder=" 문제를 입력해주세요." value="${list.exContent }" name="exContent"/>
	                        </div>
	                        <div class="card-body pb-0 pt-3">
	                           <c:forEach items="${list.examSelectList }" var="select" varStatus="sstat">
	                              <div id="questCol${sstat.count}" class="form-check custom-checkbox mb-3 checkbox-success" style="padding-left:0;">
	                                 <div class="input-group">
	                                    <span class="input-group-text" style="background-color:#ecf2f9; color:black;" >${sstat.count }번</span>
	                                    <div class="input-group-text" style="background-color:white;">
	                                       <div class="form-check custom-checkbox">
	                                          <input type="radio" class="form-check-input answerBtn" data-num="${fstat.count }" jinaSol  name="examList[${fstat.index }].exSolution" value="${sstat.count }" <c:if test="${list.exSolution eq select.exsNum }">checked</c:if>/>
	                                           <input type="hidden" name="exsNum" value="${select.exsNum}">
	                                       </div>
	                                    </div>
	                                    <input type="text" id="bogiCont" jinaBogi  class="form-control" placeholder="${sstat.count }번 보기" name="examList[${fstat.index }].examSelectList[${sstat.index }].exsContent" value="${select.exsContent }">
	                                 </div>
	                              </div>
	                           </c:forEach>
	                        </div>
<!-- 	                        <div class="card-footer"> -->
<!-- 	                           <p class="card-text"> -->
<!-- 	                           </p> -->
<!-- 	                        </div> -->
	                     </div>
	                  </div>
	               </c:forEach>
               	</c:otherwise>
               </c:choose>
            </div>
         <div class="card-footer d-grid gap-2 d-md-flex justify-content-md-end" style="padding-left:200px; padding-bottom:20px;">
            <button class="btn bg-primary-light" data-cust="${fstat.index }" onclick="f_update(this)">
           		<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M9.16492 13.6286H14" stroke="#0D99FF" stroke-linecap="round" stroke-linejoin="round"></path>
					<path fill-rule="evenodd" clip-rule="evenodd" d="M8.52001 2.52986C9.0371 1.91186 9.96666 1.82124 10.5975 2.32782C10.6324 2.35531 11.753 3.22586 11.753 3.22586C12.446 3.64479 12.6613 4.5354 12.2329 5.21506C12.2102 5.25146 5.87463 13.1763 5.87463 13.1763C5.66385 13.4393 5.34389 13.5945 5.00194 13.5982L2.57569 13.6287L2.02902 11.3149C1.95244 10.9895 2.02902 10.6478 2.2398 10.3849L8.52001 2.52986Z" stroke="#0D99FF" stroke-linecap="round" stroke-linejoin="round"></path>
					<path d="M7.34723 4.00059L10.9821 6.79201" stroke="#0D99FF" stroke-linecap="round" stroke-linejoin="round"></path>
				</svg> 수정
			</button>
            <button class="btn bg-danger-light" onclick="f_delete(this)">
            	<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M12.8833 6.31213C12.8833 6.31213 12.5213 10.8021 12.3113 12.6935C12.2113 13.5968 11.6533 14.1261 10.7393 14.1428C8.99994 14.1741 7.25861 14.1761 5.51994 14.1395C4.64061 14.1215 4.09194 13.5855 3.99394 12.6981C3.78261 10.7901 3.42261 6.31213 3.42261 6.31213" stroke="#FF5E5E" stroke-linecap="round" stroke-linejoin="round"></path>
					<path d="M13.8055 4.1598H2.50012" stroke="#FF5E5E" stroke-linecap="round" stroke-linejoin="round"></path>
					<path d="M11.6271 4.1598C11.1037 4.1598 10.6531 3.7898 10.5504 3.27713L10.3884 2.46647C10.2884 2.09247 9.94974 1.8338 9.56374 1.8338H6.74174C6.35574 1.8338 6.01707 2.09247 5.91707 2.46647L5.75507 3.27713C5.65241 3.7898 5.20174 4.1598 4.67841 4.1598" stroke="#FF5E5E" stroke-linecap="round" stroke-linejoin="round"></path>
				</svg> 삭제
            </button>
					
			
         </div>
      </div>
   </div>
  <div class="col-xl-3">
  
		<div class="card text-center" id="card-title-3">
			<div class="card-header ">
				<h5 class="card-title"><span style="font-size: 18px; color: #f96d00;">|</span> ${subName } <strong>답안</strong></h5>
			</div>
			<div class="card-body" id="omrBody">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th colspan="5">Answer Status</th>
						</tr>
					</thead>
					<tbody id="answerTbody">
					<c:set value="${examInfo[0].examList }" var="examList"/>
	                <c:forEach items="${examList }" var="list" varStatus="fstat">
						<tr id="answerTr${fstat.count }">
							<th scope="row" id="questionNumber">${fstat.count }번</th>
							<c:forEach items="${list.examSelectList }" var="select" varStatus="sstat">
							<td>
<%-- 								<button type="button" id="omr${fstat.count }_${sstat.count}" class="badge badge-circle badge-outline-dark omrBtn" style='background-color:white;'>${sstat.count }</button> --%>
								<button type="button" id="omr${fstat.count }_${sstat.count}" class="badge badge-circle badge-outline-dark omrBtn" style="background-color:white;<c:if test="${list.exSolution eq sstat.count}">background-color:black;</c:if>">${sstat.count }</button>
							</td>
							</c:forEach>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
			
		</div>
	</div>
</div>

	
</div>

<script type="text/javascript">

   const lecCode = location.href.split("&")[1].split("=")[1]; 
   const examGubun = location.href.split("&")[0].split("=")[1];
   
   
   $(".answerBtn").on("click", function(e){
	   console.log(e.target);
	   
	   let val = e.target.defaultValue;
	   let munNum = e.target.dataset.num;	// 문제 번호
	   console.log("선택한 값:",val, "문제번호:",munNum);
	   
	   let omrBtns = document.querySelectorAll("#answerTr"+munNum+" .omrBtn");
	   for (var i = 0; i < omrBtns.length; i++) {
			omrBtns[i].style.backgroundColor = "white";  // 초기화
		}
	   
	   let omrBtn = document.querySelector("#omr"+munNum+"_"+val);
	   omrBtn.style.backgroundColor = "black"; 
	   
	   
   });
   
   
   
   
   function f_update(p_this){
	   // console.log(p_this.parentElement.parentElement.parentElement.parentElement.id);
	   // var id = p_this.parentElement.parentElement.parentElement.parentElement.id;
	   // var num = parseInt(id.replace("questRow",""));
	   // console.log(num);
	   
	   // 시험지 단위로 ExamVO, 문제단위로 하면 ExamListVO가 필요!
       /* ExamVO
       	String examGubun; 	// 시험구분(중간-M,기말 -Y)
	      String lecCode;		// 강의계획코드
	
	      List<ExamListVO> examList;		// 문제 여러개
       */

       /* ExamListVO
         	int exNum;
	         String examGubun;
	         String lecCode;
	         String exContent;
	         String exSolution;
	         List<ExamSelectVO> examSelectList;	// 보기여러개
       */

       /* ExamSelectVO
          	int exsNum;
	         int exNum;
	         String examGubun;
	         String lecCode;
	         String exsContent;
       */
/*
       const ExamSelectVO = { // 문제안 보기(4개씩)
          exsNum:"",
          exNum:"",
          examGubun:examGubun,
          lecCode:lecCode,
          exsContent:"",
       }


       const ExamList = {  // 2개(문제)
          exNum:"",
          examGubun:examGubun,
          lecCode:lecCode,
          exContent:"",
          exSolution:"",
          examSelectList:[]
       }
*/
       const ExamVO = {           // 1개
         examGubun:examGubun,
         lecCode:lecCode,
         examList:[]
       }

       let munSu = '${examList.size() }';
       const BogiSu = 4;   // 항상  4개 

       console.log("하고싶당: ",$("#questRow1").find("[jinaBogi]"));

       for(let i=1; i<=munSu; i++){  // 문제수 만큼 돌리기
            let  ExamList = {  // 2개(문제)
                  exNum:i,
                  examGubun:examGubun,
                  lecCode:lecCode,
                  exContent:$("#questRow"+i).find("[name=exContent]").val(),
                  exSolution:$("#questRow"+i).find("[jinaSol]:checked").val(),
                  examSelectList:[]
            }
          
            for(let j=1; j<=BogiSu; j++){
               let ExamSelectVO = { // 문제안 보기(4개씩)
                  exsNum:j,
                  exNum:i,
                  examGubun:examGubun,
                  lecCode:lecCode,
                  exsContent:$("#questRow"+i).find("[jinaBogi]").eq(j-1).val(),
               }
               ExamList.examSelectList.push(ExamSelectVO);
            }
            ExamVO.examList.push(ExamList);
       }

       console.log("최종체크 ExamVO:", ExamVO);

       let xhr = new XMLHttpRequest();
        xhr.open("post", "/exam/examUpdate", true);
        xhr.setRequestHeader("Content-Type", "application/json;charset=utf-8");
        xhr.onreadystatechange = () => {
           
          if(xhr.readyState == 4 && xhr.status == 200) {
               console.log("온값: ", xhr.responseText);
               
               Swal.fire({
 				  title: '수정',
 				  text: "시험을 정말 삭제하시겠습니까?",
 				  icon: 'question',
 				  showCancelButton: true,
 				  confirmButtonText: 'Yes'
 				}).then((result) => {
 				  if (result.isConfirmed) {
 				    Swal.fire({
 				    	title : '성공',
 				      	html : '수정이 완료되었습니다!',
 				      	icon : 'success',
 				      	value : true
 				    }).then((result) => {
//  				    	location.href="/exam/examGubunList?lecCode=" + lecCode;
 				    	location.href="/class/proClassRoom/" + lecCode;	
 				    });
 				  } else {
 					  Swal.fire({
 						 title :'error',
 						 html : '수정이 중단되었습니다!',
 						 icon : 'error'
 					  })
 				  }
 				});
            }
        }
        xhr.send(JSON.stringify(ExamVO));
   }
   
   function f_delete(p_this){
	   // console.log(p_this.parentElement.parentElement.parentElement.parentElement.id);
	   // var id = p_this.parentElement.parentElement.parentElement.parentElement.id;
	   // var num = parseInt(id.replace("questRow",""));
	   // console.log(num);
	   
      const ExamVO = {           // 1개
         examGubun:examGubun,
         lecCode:lecCode,
         examList:[]
       }

       let munSu = '${examList.size() }';
       const BogiSu = 4;   // 항상  4개 

       console.log("하고싶당: ",$("#questRow1").find("[jinaBogi]"));

       for(let i=1; i<=munSu; i++){  // 문제수 만큼 돌리기
            let  ExamList = {  // 2개(문제)
                  exNum:i,
                  examGubun:examGubun,
                  lecCode:lecCode,
                  exContent:$("#questRow"+i).find("[name=exContent]").val(),
                  exSolution:$("#questRow"+i).find("[jinaSol]:checked").val(),
                  examSelectList:[]
            }
            
          
            for(let j=1; j<=BogiSu; j++){
               let ExamSelectVO = { // 문제안 보기(4개씩)
                  exsNum:j,
                  exNum:i,
                  examGubun:examGubun,
                  lecCode:lecCode,
                  exsContent:$("#questRow"+i).find("[jinaBogi]").eq(j-1).val(),
               }
               ExamList.examSelectList.push(ExamSelectVO);
            }
            ExamVO.examList.push(ExamList);
       }

       console.log("최종체크 ExamVO:", ExamVO);

      let xhr = new XMLHttpRequest();
        xhr.open("post", "/exam/examDelete", true);
        xhr.setRequestHeader("Content-Type", "application/json;charset=utf-8");
        xhr.onreadystatechange = () => {
           
          if(xhr.readyState == 4 && xhr.status == 200) {
               console.log("온값: ", xhr.responseText);
//                alert("삭제가 완료 되었습니다!");
               Swal.fire({
				  title: '삭제',
				  text: "시험을 정말 삭제하시겠습니까?",
				  icon: 'question',
				  showCancelButton: true,
				  confirmButtonText: 'Yes'
				}).then((result) => {
				  if (result.isConfirmed) {
				    Swal.fire(
				      '성공',
				      '삭제가 완료되었습니다!',
				      'success'
				    ).then(function(){
// 				    	location.href="/exam/examGubunList?lecCode=" + lecCode;
				   		location.href="/class/proClassRoom/" + lecCode;	
				    });
				  } else {
					  Swal.fire(
					      'error',
					      '삭제가 중단되었습니다!',
					      'error'
					  )
				  }
				});
               
            }
        }
        xhr.send(JSON.stringify(ExamVO));
   }

</script>