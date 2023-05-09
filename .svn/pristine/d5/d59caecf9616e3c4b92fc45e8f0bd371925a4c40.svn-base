<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<style>

#jisun {
	width:95vw;
	height:95vh;
}
#imgArea { 
    width: 200px; 
    height: 200px; 
    object-fit: contain; 
} 
#uppder{
	height:35%;
}

.js{
	vertical-align:top;
	height:100%;
}
.right{
    margin-top: 50px;
    height: 50%;
}

img{
	width:100%;
	height:100%;
}
table{
	height:100%;
}

</style>
<c:if test="${status eq 's' }">
<input type="hidden" name="stuId" value="${student.stuId }"/>
<div id ="jisun" style="margin: 10px;">
	<div id="uppder">
	  <div class="js left" style="display: flex;height: 110%;;">
	    <img id="imgArea"  class="d-flex justify-content-center" src="${pageContext.request.contextPath}/resources/images/profile${profile.profilePath}${profile.profileName }" style="width: 50%;">
	    <table class="table table-bordered" style="width: 82%;">
	      <tr>
	        <td style="width: 20%;background-color: aliceblue;">성명</td>
	        <td>${student.stuNameKo }</td>
	        <td style="width: 20%;background-color: aliceblue;">영문성명</td>
	        <td>${student.stuNameEn }</td>
	      </tr>
	      <tr>
	        <td style="width: 20%;background-color: aliceblue;">학번</td>
	        <td>${student.stuId }</td>
	         <td style="width: 20%;background-color: aliceblue;">학년</td>
	        <td>${student.academicVO.acaGrade }</td>
	      </tr>
	      <tr>
	        <td style="width: 20%;background-color: aliceblue;">단과대학</td>
	        <td>${student.academicVO.collName }</td>
	          <td style="width: 20%;background-color: aliceblue;">학과</td>
	        <td>${student.academicVO.acaMajor }</td>
	    </table>
	  </div>
	</div>
		<div class="js right">
			<table class="table table-bordered">
				<tr>
					<td style="width: 20%;background-color: aliceblue;">학적상태</td>
					<td>${student.academicVO.acaStatus }</td>
					<td style="width: 20%;background-color: aliceblue;">입학일자</td>
					<td><fmt:formatDate value="${student.academicVO.admiDate }" pattern="yyyy-MM-dd"/></td>
			    </tr>
				<tr>
					<td style="width: 20%;background-color: aliceblue;">복수전공</td>
					<td>${student.academicVO.acaDmajor }</td>
					<td style="width: 20%;background-color: aliceblue;">부전공</td>
					<td>${student.academicVO.acaMinor }</td>
			    </tr>
				<tr>
					<td style="width: 20%;background-color: aliceblue;">이수학기</td>
					<td>${student.academicVO.acaSemester }</td>
					<td style="width: 20%;background-color: aliceblue;">학점평균</td>
					<td>${student.academicVO.acaAvgCredit }</td>
			    </tr>
				<tr>
					<td style="width: 20%;background-color: aliceblue;">전공필수 이수학점</td>
					<td>${student.academicVO.acaMaj1Score }</td>
					<td style="width: 20%;background-color: aliceblue;">전공선택 이수학점</td>
					<td>${student.academicVO.acaMaj2Score }</td>
			    </tr>
				<tr> 
					<td style="width: 20%;background-color: aliceblue;">교양필수 이수학점</td>
					<td>${student.academicVO.acaCul1Score }</td>
					<td style="width: 20%;background-color: aliceblue;">교양선택 이수학점</td>
					<td>${student.academicVO.acaCul2Score }</td>
			    </tr>
			</table>
		</div>
	</div>
</c:if>
<c:if test="${status eq 'p' }">
<div id ="jisun" style="margin: 10px;">
	<div id="uppder">
	  <div class="js left" style="display: flex;height: 110%;;">
	    <img id="imgArea"  class="d-flex justify-content-center" src="${pageContext.request.contextPath}/resources/images/profile${profile.profilePath}${profile.profileName }" style="width: 50%;">
	    <table class="table table-bordered" style="width: 82%;">
	      <tr>
	        <td style="width: 20%;background-color: aliceblue;">성명</td>
	        <td>${professor.proNameKo }</td>
	        <td style="width: 20%;background-color: aliceblue;">영문성명</td>
	        <td>${professor.proNameEn }</td>
	      </tr>
	      <tr>
	        <td style="width: 20%;background-color: aliceblue;">교번</td>
	        <td>${professor.proId }</td>
	         <td style="width: 20%;background-color: aliceblue;">주민등록번호</td>
	        <td>${professor.proReg1 } - ${professor.proReg2 }</td>
	      </tr>
	      <tr>
	        <td style="width: 20%;background-color: aliceblue;">단과대학</td>
	        <td>${professor.collName }</td>
	          <td style="width: 20%;background-color: aliceblue;">학과</td>
	        <td>${professor.proMajor }</td>
	    </table>
	  </div>
	</div>
		<div class="js right">
			<table class="table table-bordered">
				<tr>
					<td style="width: 20%;background-color: aliceblue;">연구실 호수</td>
					<td>${professor.proLabNum }호</td>
					<td style="width: 20%;background-color: aliceblue;">연구실 연락처</td>
					<td>${professor.proLabTel }</td>
			    </tr>
				<tr>
					<td style="width: 20%;background-color: aliceblue;">개인 연락처</td>
					<td>${professor.proPhone }</td>
					<td style="width: 20%;background-color: aliceblue;">이메일</td>
					<td>${professor.proEmail }</td>
			    </tr>
				<tr>
					<td style="width: 20%;background-color: aliceblue;">주소</td>
					<td>${professor.proAddr1 }</td>
					<td style="width: 20%;background-color: aliceblue;">상세주소</td>
					<td>${professor.proAddr2 }</td>
			    </tr>
				<tr>
					<td style="width: 20%;background-color: aliceblue;">은행</td>
					<td>${professor.proBank }</td>
					<td style="width: 20%;background-color: aliceblue;">계좌번호</td>
					<td>${professor.proAccount }</td>
			    </tr>
			</table>
		</div>
	</div>
</c:if>
<c:if test="${status eq 'e' }">
<div id ="jisun" style="margin: 10px;">
	<div id="uppder">
	  <div class="js left" style="display: flex;height: 110%;;">
	    <img id="imgArea"  class="d-flex justify-content-center" src="${pageContext.request.contextPath}/resources/images/profile${profile.profilePath}${profile.profileName }" style="width: 50%;">
	    <table class="table table-bordered" style="width: 82%;">
	      <tr>
	        <td style="width: 20%;background-color: aliceblue;">성명</td>
	        <td>${employee.empNameKo }</td>
	        <td style="width: 20%;background-color: aliceblue;">영문성명</td>
	        <td>${employee.empNameEn }</td>
	      </tr>
	      <tr>
	        <td style="width: 20%;background-color: aliceblue;">사번</td>
	        <td>${employee.empId }</td>
	         <td style="width: 20%;background-color: aliceblue;">주민등록번호</td>
	        <td>${employee.empReg1 } - ${employee.empReg2 }</td>
	      </tr>
	      <tr>
	        <td style="width: 20%;background-color: aliceblue;">단과대학</td>
	        <td>${employee.collName }</td>
	          <td style="width: 20%;background-color: aliceblue;">학과</td>
	        <td>${employee.deptName }</td>
	    </table>
	  </div>
	</div>
		<div class="js right" style="height:40%">
			<table class="table table-bordered">
				<tr>
					<td style="width: 20%;background-color: aliceblue;">개인 연락처</td>
					<td>${employee.empPhone }</td>
					<td style="width: 20%;background-color: aliceblue;">이메일</td>
					<td>${employee.empEmail }</td>
			    </tr>
				<tr>
					<td style="width: 20%;background-color: aliceblue;">주소</td>
					<td>${employee.empAddr1 }</td>
					<td style="width: 20%;background-color: aliceblue;">상세주소</td>
					<td>${employee.empAddr2 }</td>
			    </tr>
				<tr>
					<td style="width: 20%;background-color: aliceblue;">은행</td>
					<td>${employee.empBank }</td>
					<td style="width: 20%;background-color: aliceblue;">계좌번호</td>
					<td>${employee.empAccount }</td>
			    </tr>
			</table>
		</div>
	</div>
</c:if>