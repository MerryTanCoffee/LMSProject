<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- <p>체킁: ${userInfo}</p> --%>
<form id="msgSend" >
<input type="hidden" name="msgSender" value="${userInfo.userId}">
	<div class="col-xl-6 col-lg-6">
		<div class="card">
			<div class="card-header">
				<div class="mb-3 row">
					<label class="col-sm-3 col-form-label">받는사람</label>
					<div>
						<input type="text" class="form-control" placeholder="학번/교번/사번" name="msgReceiver" value="<c:if test="${not empty msgReceiver }">${msgReceiver }</c:if>">
					</div>
				</div>
			</div>
			<div class="card-body">
				<div class="basic-form">
					<div class="mb-3">
						<textarea class="form-txtarea form-control" rows="8" id="comment" placeholder="내용을 입력해주세요" name="msgContent"></textarea>
					</div>
				</div>
			<input type="button" class="btn btn-primary" style="float:right;" id="sendMail" value="전송">
			<button type="button" class="btn btn-outline-primary" onclick="window.close()">취소</button>
			</div>
		</div>
	</div>
</form>

<script>
$(function(){
	 console.log("실행");
	 $('#sendMail').on('click', function(){
		 console.log("클릭이벤트");
		let data = {
		    msgSender:"${userInfo.userId}",
		    msgReceiver: $("input[name=msgReceiver]").val(),
		    msgContent: $("textarea[name=msgContent]").val()
		}
	
		console.log("체킁: ",data);
	
	 	$.ajax({
	 		type: 'post',
	 		url: '/msg/msgSend',
			data: data,
// 			contentType:"application/json;charset=utf-8",
			dataType: 'json',
			success:function(result){
				console.log(result);
				alert("쪽지가 전송되었습니다.");
				self.close();
			}
		});
	});
	
});
</script>