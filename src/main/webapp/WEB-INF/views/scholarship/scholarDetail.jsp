<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<input type="hidden" name="slNo" value="${scholar.slNo }"/>
<div class="card" style="margin:1%">
	<div class="card-header">
		진행현황
	</div>
	<div class="card-body">
		<div class="row">
			<form action="/scholarship/scholarUpdate" method="post">
				<table class="table table-bordered">
				
					<tr>
						<td style="width: 30%;background-color: aliceblue;">장학명칭</td>
						<td><label class="col-sm-3 label-control">${scholar.siName }</label></td>
				    </tr>
			 		<tr>
			  			<td style="width: 30%;background-color: aliceblue;">장학등급</td>
			  			<td><label class="col-sm-3 label-control">${scholar.siGrade }</label></td>
			 		</tr>
			 		<tr>
			  			<td style="width: 30%;background-color: aliceblue;">장학구분</td>
			  			<td><label class="col-sm-3 label-control">${scholar.siGubun }</label></td>
			 		</tr>
			 		<tr>
			  			<td style="width: 30%;background-color: aliceblue;">신청일자</td>
				  		<td><label class="col-sm-8 label-control"><fmt:formatDate value="${scholar.slAplctDate }" pattern="yyyy-MM-dd"/></label></td>
					</tr>
					<tr>
			  			<td style="width: 30%;background-color: aliceblue;">확정일자</td>
			  			<td><label class="col-sm-8 label-control"><fmt:formatDate value="${scholar.slConfirmDate }" pattern="yyyy-MM-dd"/></label></td>
					</tr>
					<tr>
			  			<td style="width: 30%;background-color: aliceblue;">처리상태</td>
			  			<c:if test="${scholar.slStatus eq 'Y' }">
				  			<td><label class="col-sm-8 label-control">승인</label></td>
			  			</c:if>
			  			<c:if test="${scholar.slStatus eq 'N' }">
				  			<td><label class="col-sm-8 label-control">반려</label></td>
			  			</c:if>
			  			<c:if test="${scholar.slStatus eq 'W' }">
				  			<td><label class="col-sm-8 label-control">대기</label></td>
			  			</c:if>
					</tr>
					<tr>
						<td style="width: 30%;background-color: aliceblue;">처리의견</td>
						<td><textarea class="form-txtarea form-control" style="border:none;" rows="5" readonly="readonly">${scholar.slComment }</textarea></td>
					</tr>
			    	</table>
		    	</form>
		</div>
	</div>
	<div class="card-footer">
		<div>
			<button class="btn btn-primary" onclick="window.close()" style="float:right;">닫기</button>
		</div>
	</div>
</div>