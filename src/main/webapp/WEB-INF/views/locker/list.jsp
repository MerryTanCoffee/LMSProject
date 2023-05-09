<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="row">

	<!-- 사물함 사용현황 -->
	<div class="col-xl-12">
		<div class="card" id="card-title-1">
<!-- 			<div class="card-header border-0 pb-0 "> -->
<!-- 				<h3>사물함 이용현황</h3> -->
<!-- 			</div> -->
			<div class="card-body d-flex flex-column align-items-center vh-150">
				<div class="col-sm-4" style="margin: 20px 0;">
					<label class="form-label" for="hallCode">건물</label>
					<div class="dropdown bootstrap-select default-select form-control">
						<select name="hallName" class="default-select form-control" id="hallName">
							<option data-display="Select" value="empty">선택해 주세요.</option>
							<c:forEach items="${hallList }" var="hall">
								<option value="${hall.hallCode }" id="hallCode">${hall.hallName }</option>
							</c:forEach>
						</select>
					</div>
				</div>
				
				<div id="lockerDiv" style="display: none;">
					<ul class="showcase">
						<li>
							<div class="status "></div> <small>사용 불가</small>
						</li>
						<li>
							<div class="status available"></div> <small>사용가능</small>
						</li>
						<li>
							<div class="status selected"></div> <small>선택</small>
						</li>
						<li>
							<div class="status myLocker"></div> <small>사용중</small>
						</li>
					</ul>
					<div class="locker-container" id="lockerBox">
						<div class="line"></div>
						
						
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 사물함 예약 폼 -->
	<div class="col-xl-12" id="lockerInsertForm">
		<div class="card">
			<div class="card-header">
				<h4 class="card-title">사물함 예약</h4>
			</div>
			<div class="card-body">
				<div class="basic-form">

					<form id="lockerForm" action="/locker/lockerReservation"
						method="post">
						<input type="hidden" id="lockerNum" name="locNum" value="">
						<input type="hidden" id="lockerHallCode" name="hallCode" value="">
						<div class="row">
							<div class="mb-3 col-md-5">
								<label class="col-lg-4 col-form-label" for="validationCustom02">학번
									<span class="text-danger">*</span>
								</label> <input type="text" class="form-control" placeholder="학번"
									id="stuId" name="stuId"
									value="${sessionScope.userInfo.userId }">
							</div>
							<div class="mb-3 col-md-5">
								<label class="col-lg-4 col-form-label" for="validationCustom02">사용자
									<span class="text-danger">*</span>
								</label> <input type="text" class="form-control" placeholder="이름"
									value="${sessionScope.userInfo.studentVO.stuNameKo }">
							</div>


						</div>
						<div class="row">
							<div class="mb-3 col-md-5">
								<label class="col-lg-4 col-form-label" for="validationCustom02">사용
									시작일 <span class="text-danger">*</span>
								</label> <input type="date" class="form-control" id="lrSdate"
									name="lrSdate">
							</div>
							<div class="mb-3 col-md-5">
								<label class="col-lg-4 col-form-label" for="validationCustom02">사용
									종료일 <span class="text-danger">*</span>
								</label> <input type="date" class="form-control" id="lrEdate"
									name="lrEdate">
							</div>
						</div>

						<div
							class="card-footer d-sm-flex justify-content-between align-items-center">
							<div class="card-footer-link mb-4 mb-sm-0">
								<p class="card-text d-inline">
									<span id="lockerNumber"
										style="color: #ffc1c8; font-size: 20px; font-weight: 600;"></span><span
										id="text"></span>
								</p>
							</div>

							<button type="button" class="btn btn-primary" id="alertStart">신청하기</button>

						</div>
					</form>

				</div>
			</div>
		</div>
	</div>





</div>
<!-- row end -->


<script>
	$(function() {

		var hallCode = "";
		// 사물함 이용현황 - 건물(홀)을 선택할 때 이벤트
		// 건물(홀)을 변경할 때마다 이벤트가 발생한다.
		$("#hallName").on("change",function() {
			// select, 즉 건물을 선택할 때마다 select 내 option 값을 가져온다.
			var code = $(this).val();
			
			// option 값이 empty 인경우엔 "선택해주세요"를 선택한 것이기 때문에 display none으로 가려준다.
			// empty가 아닌 경우엔 해당 건물(홀)을 선택한 것이기 때문에 display block으로 사물함을 예약할 수 있는 폼을 제공한다.
			if (code == "empty") {
				$("#lockerDiv").css("display", "none");
			} else {
				$("#lockerDiv").css("display", "block");
			}

			// 내가 선택한 건물의 코드(키)에 맞는 사물함 정보를 리스트(목록)로 가져온다.
			// 비동기 처리로 해당 목록을 가져오도록 한다.
			var data = {
				hallCode : code
			};

			hallCode = code;

			$.ajax({
				url : "/locker/getLockerList",
				type : "post",
				data : JSON.stringify(data),
				contentType : "application/json;charset=utf-8",
				dataType : "json",
				success : function(res) {
					// locker : 다른 사람이 사용중인 사물함
					// locker selected : 선택한 사물함
					// locker available : 사용가능한 사물함
					// locker myLocker: 내가 사용중인 사물함
					var html = "";
					html += "<div class='locker-row'>";
					
					if(res.mylocker != null){
						if(res.mylocker.LOC_NUM != null || res.mylocker.LOC_NUM != ""){
							$("#alertStart").attr("disabled", true);
							$("#alertStart").text("예약된 정보가 존재합니다.");
						}else{
							$("#alertStart").attr("disabled", false);
							$("#alertStart").text("신청하기");
						}
					}
					
					res.list.map(function(value, idx) {
						
						var status = "available";	// 사용가능
						
						if (value.locStatus == "Y") {
							status = "";	// 사용중
						}
						
						if(res.mylocker != null){
							if(value.locNum == res.mylocker.LOC_NUM && hallCode == res.mylocker.HALL_CODE){	// 현재 내가 사용한 사물함 정보를 표현해주기 위함
								status = "myLocker";
							} 
						}
						
						
						
						html += "	<div class='locker " + status + "' id='lockerData' data-no='" + value.locNum + "'>";
						if(status == ""){
							html += "		<p></p>";
						}else if(status == "myLocker"){
							html += "		<p><font color='white'>" + (idx + 1) + "</font></p>";
						}else{
							html += "		<p>" + (idx + 1) + "</p>";
						}
						html += "	</div>";
						
						if ((idx + 1) != 0 && (idx + 1) % 10 == 0) { // 9 18 27 36 45 
							html += "</div>";
							html += "<div class='locker-row'>";
						}
						
					});
					html += "</div>";
					
					$("#lockerBox").html(html);
					
				}
			});
		});
		
		
		

		var elementBox = null;
		var flag = true;
		// 사물함 단일 하나씩 선택했을때 이벤트(사물함 한개의 클릭 이벤트)
		$("#lockerBox").on("click", "#lockerData", function() {
			console.log("click...!");

			var classVal = $(this).attr("class");
			console.log("classVal ::: ", classVal);
			
			if(classVal == "locker myLocker"){
				return false;
			}

			if (classVal.trim() == "locker") {
				$(this).off("click");
				Swal.fire({
					title : "실패",
					text : "사용중인 사물함 입니다!",
					icon : "warning",
					closeOnClickOutside : false
				});
				return;
			}
			

			if (flag) {
				$(this).removeClass("available");
				$(this).addClass("selected");
				if (elementBox != null) {
					elementBox.removeClass("selected");
					elementBox.addClass("available");
				}
				elementBox = $(this); // 방금 누른 사물함
				flag = false;
			} else {
				elementBox.removeClass("selected");
				elementBox.addClass("available");
				elementBox = $(this); // 방금 누른 사물함

				$(this).removeClass("available");
				$(this).addClass("selected");
				flag = true;
			}
			let lockNum = $(this).data("no");
			console.log(lockNum);
			$("#lockerNum").val(lockNum); // 내가 선택한 사물함 번호 lockNum을 셋팅
			$("#lockerHallCode").val(hallCode); // 내가 선택한 사물함의 건물번호인 hallCode를 셋팅

			var num = $("#lockerNum").val().substr(-2);

			console.log("num ::: ", num);

			$("#lockerNumber").text(num);
			$("#text").text("번 사물함을 사용하시겠습니까?");

		});

		var insertForm = document.querySelector("#lockerForm");

		// 사물함 예약에서 신청하기 버튼을 클릭했을때
// 		$("#alertStart").click(function() {
// 			Swal.fire({
// 				title : "OK!",
// 				text : "예약이 완료되었습니다.",
// 				icon : "success",
// 				closeOnClickOutside : false		// 백그라운드 클릭해도 안꺼짐
// 			}).then(function() {
// 				// 이벤트
// 				insertForm.submit();
// 			});
// 		});
		

	$("#alertStart").click(function(e) {
			if ($(lockerNum).val() == "") {
				e.preventDefault();
// 				alert("사용하실 건물과 사물함을 선택해주세요!");
				Swal.fire({
					title : "실패",
					text : "사용하실 건물과 사물함을 선택해주세요!",
					icon : "error",
					closeOnClickOutside : false
				});
			} else {
				Swal.fire({
					title : "성공",
					text : "이제 사물함을 사용이 가능합니다!",
					icon : "success",
					closeOnClickOutside : false
				// 백그라운드 클릭해도 안꺼짐
				}).then(function() {
					// 이벤트
					insertForm.submit();
				});
			}

		});

	});
</script>



