<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- <p>체킁: ${userInfo}</p> --%>
<input type="hidden" name="msgNo" value="${msgVO.msgNo }">
	<div class="col-xl-6 col-lg-6">
		<div class="card">
			<div class="card-header">
				<div class="mb-3 row">
				<c:if test="${msgVO.msgSender eq userId }">
					<label class="col-sm-3 col-form-label">받는사람</label>
					<div>
						<input type="text" class="form-control" placeholder="학번/교번/사번" name="msgSender" value="${msgVO.msgReceiver}">
					</div>
				</c:if>
				<c:if test="${msgVO.msgSender ne userId }">
					<label class="col-sm-3 col-form-label">보낸사람</label>
					<div>
						<input type="text" class="form-control" placeholder="학번/교번/사번" name="msgReceiver" value="${msgVO.msgSender}">
					</div>
				</c:if>
				</div>
			</div>
			<div class="card-body">
				<div class="basic-form">
					<div class="mb-3">
						<textarea class="form-txtarea form-control" rows="8" id="comment" placeholder="내용을 입력해주세요" name="msgContent">${msgVO.msgContent}</textarea>
					</div>
				</div>
			<input type="button" onclick="f_send()" class="btn btn-primary" style="float:right;" id="sendMail" value="답장">
			<button type="button" class="btn btn-outline-primary" onclick="window.close()">취소</button>
			</div>
		</div>
	</div>

<script>
function f_send() {
	win1 = open("/msg/msgSend?msgReceiver=${msgVO.msgSender}", "winNew1",
			"width=500, height=500, top=100, left=100");
}
</script>