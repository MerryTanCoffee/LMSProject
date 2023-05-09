<%@ page language="java" contentType="text/html; charset=UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<style>
			/* .card-header {
    border-color: #E6E6E6;
    position: relative;
    background: transparent;
    display: flex;
    padding:0;
    justify-content: space-between;
    align-items: center;
    margin-top: -10px;
}

#imgArea { 
    width: 200px; 
    height: 200px; 
    object-fit: contain; 
} 
.card-body {
    padding: 0px; 
}
.badge {
    line-height: 2;
    border-radius: 0.25rem;
    font-size: 15px;
    font-weight: 1000;
    padding: 5px 12px;
    border: 0.0625rem solid transparent;
}
.form-control:disabled, .form-control[readonly] {
    background: #f5f5f540;
    opacity: 1;
    pointer-events: none;
}
.light.badge-success {
    background-color: #daf5e6;
    color: #495b72;
}
.form-label {
  text-align: left;
}

#myModal {
  display: none;
} */
		</style>

		<div class="page-titles">
			<ol class="breadcrumb">
				<li>
					<h5 class="bc-title">사용자관리</h5>
				</li>
				<li class="breadcrumb-item"><a href="javascript:void(0)"> <svg width="17" height="17"
							viewBox="0 0 17 17" fill="none" xmlns="http://www.w3.org/2000/svg">
							<path
								d="M2.125 6.375L8.5 1.41667L14.875 6.375V14.1667C14.875 14.5424 14.7257 14.9027 14.4601 15.1684C14.1944 15.4341 13.8341 15.5833 13.4583 15.5833H3.54167C3.16594 15.5833 2.80561 15.4341 2.53993 15.1684C2.27426 14.9027 2.125 14.5424 2.125 14.1667V6.375Z"
								stroke="#2C2C2C" stroke-linecap="round" stroke-linejoin="round" />
							<path d="M6.375 15.5833V8.5H10.625V15.5833" stroke="#2C2C2C" stroke-linecap="round"
								stroke-linejoin="round" />
						</svg> 사용자 등록
					</a></li>
				<li class="breadcrumb-item active"><a href="javascript:void(0)">신규등록</a></li>
			</ol>
		</div>

		<div class="container-fluid">
			<div class="card">
				<div class="card-header">
					<div class="card-title">
						<h4><span style="font-size:18px; color: #f96d00;">|</span> 사용자 신규등록</h4>
					</div>
				</div>

				<div class="card-body">
					<div class="row">
						<div class="col-xl-6">
							<!-- 엑셀 등록 폼 -->
							<form id="excelUploadForm" name="excelUploadForm" enctype="multipart/form-data"
								method="post" action="excelUpload" class="d-flex align-items-center">
								<div class="form-group mr-2">
									<input id="excelFile" type="file" class="form-control" name="excelFile">
								</div>
								<button type="button" id="addExcelImpoartBtn" onclick="check()"
									class="btn btn-success-s">
									<span class="btn-icon-start text-success"><i
											class="fa fa-upload color-success"></i></span>
									업로드하기
								</button>
							</form>
							<!-- 엑셀 등록 폼 끝 -->
						</div>
						<div class="col-xl-6">
							<button type="button" id="updBtn" class="btn btn-success">
								<i class="fa-solid fa-gear me-2"></i>등록하기
							</button>
						</div>
						<div class="container">
							<div class="row">
								<div class="radio-button text-center">
									<label class="custom-radio">
										<input type="radio" name="userType" id="STU" value="STU" onclick="setDisplay()">
										<span class="radio-btn">
											<div class="user-icon">
												<i class="fas fa-graduation-cap"></i>
												<h4>Student</h4>
											</div>
										</span>
									</label>

									<label class="custom-radio">
										<input type="radio" name="userType" id="PRO" value="PRO" onclick="setDisplay()">
										<span class="radio-btn">
											<div class="user-icon">
												<i class="fas fa-chalkboard-teacher fa"></i>
												<h4>professor</h4>
											</div>
										</span>
									</label>
									<label class="custom-radio">
										<input type="radio" name="userType" id="EMP" value="EMP"
											onclick="setDisplay( )">
										<span class="radio-btn">
											<div class="user-icon">
												<i class="fas fa-user-cog"></i>
												<h4>employee</h4>
											</div>
										</span>
									</label>
								</div>
								<div class="row" id="stuDiv">
									<div class="col">
										<div class="mb-4">
											<label class="form-label" id="memId">학번</label>
											<input type="text" id="userId" class="form-control" />
											<label class="form-label">성명</label>
											<input type="text" id="nameKo" class="form-control" />
											<label class="form-label">영문 성명</label>
											<input type="text" id="nameEn" class="form-control" />
										</div>
									</div>
									<div class="col">
										<div class="mb-4">
											<label class="form-label" id="memMajor">학과</label>

											<select id="single-select" data-select2-id="single-select" tabindex="-1"
												class="default-select form-control">
												<option data-display="Select" value="empty">선택해 주세요.</option>
												<option value="AREN" dept_val="042-821-1146">건축공학과</option>
												<option value="MNGE" dept_val="042-821-1161">경영학과</option>
												<option value="ECON" dept_val="042-821-1160">경제학과</option>
												<option value="PUBL" dept_val="042-821-1159">공공행정학과</option>
												<option value="SCIE" dept_val="042-821-1151">과학교육과</option>
												<option value="LIBE" dept_val="042-123-4567">교양학부</option>
												<option value="KORE" dept_val="042-821-1150">국어교육과</option>
												<option value="MECH" dept_val="042-821-1144">기계공학과</option>
												<option value="UNIV" dept_val="042-611-1252">대학본부</option>
												<option value="MECA" dept_val="042-821-1145">메카트로닉스공학과</option>
												<option value="TRAD" dept_val="042-821-1163">무역학과</option>
												<option value="MATH" dept_val="042-821-1154">수학교육과</option>
												<option value="NMAT" dept_val="042-821-1143">신소재공학과</option>
												<option value="HIST" dept_val="042-821-1153">역사교육과</option>
												<option value="ENGL" dept_val="042-821-1152">영어교육과</option>
												<option value="EENG" dept_val="042-821-1156">영어영문학과</option>
												<option value="JPAN" dept_val="042-821-1157">일본어과</option>
												<option value="ELEC" dept_val="042-821-1142">전기·전자공학과</option>
												<option value="INFO" dept_val="042-821-1141">정보통신공학과</option>
												<option value="CHIN" dept_val="042-821-1158">중국어과</option>
												<option value="PHYS" dept_val="042-821-1155">체육교육과</option>
												<option value="COMP" dept_val="042-656-1234">컴퓨터공학과</option>
												<option value="CHEM" dept_val="042-821-1148">화학공학과</option>
												<option value="ACCO" dept_val="042-821-1162">회계학과</option>
											</select>

											<label class="form-label" id="var1">학년</label>
											<input type="text" id="varInput1" class="form-control" />
											<label class="form-label" id="var2">이수학기</label>
											<input type="text" id="varInput2" class="form-control" />
										</div>
									</div>
								</div>
							</div>
							<div class="container" id="infoCont">
								<div class="row">
									<div class="col">
										<div class="mb-3">
											<label class="form-label">주민등록번호</label>
											<input type="text" id="reg" class="form-control" />
											<label class="form-label">핸드폰번호</label>
											<input type="text" id="phone" class="form-control">
											<label class="form-label">이메일</label>
											<input type="text" id="email" class="form-control">
										</div>
									</div>
									<div class="col">
										<div class="mb-3">
											<label class="form-label">국가구분</label>
											<input type="text" id="nation" value="대한민국" class="form-control" />
											<span class="input-group-append">
												<button type="button" class="btn btn-primary btn-xxs"
													onclick="DaumPostcode()">우편번호 찾기</button>
												<input type="text" id="postcode" name="stuPostcode"
													class="form-control">
											</span>
											<label class="form-label">주소</label>
											<input type="text" id="addr1" name="stuAddr1" class="form-control">

										</div>
									</div>
									<div class="col">

										<div class="mb-3">
											<label class="form-label">은행</label>
											<input type="text" id="bank" class="form-control" />
											<label class="form-label">계좌번호</label>
											<input type="text" id="account" class="form-control" />
											<label class="form-label">상세주소</label>
											<input type="text" id="addr2" name="stuAddr2" class="form-control">
										</div>
									</div>
								</div>
							</div>
						</div><!--container 끝-->
					</div><!--row 끝-->
				</div><!--card-body 끝-->


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">

	function setDisplay() {
		$(".form-control").val("");
		var selected = $("input[name='userType']:checked").val();
		if (selected == 'STU') {
			$(".form-control").val("");
			$("#memId").text("학번");
			$("#userId").attr("placeholder", "2023xxxxxx");
			$("#var1").text("학년");
			$("#var2").text("이수학기");
			$("#varInput1").attr("placeholder", "");
			$("#varInput2").attr("placeholder", "");
		}
		if (selected == 'PRO') {
			$(".form-control").val("");
			$("#memId").text("교번");
			$("#userId").attr("placeholder", "pxxxxxxx");
			$("#var1").text("연구실 호수");
			$("#var2").text("연구실 연락처");
			$("#varInput1").attr("placeholder", "50x");
			$("#varInput2").attr("placeholder", "042-xxx-xxxx");
		}
		if (selected == 'EMP') {
			$(".form-control").val("");
			$("#varInput1").attr("placeholder", "");
			$("#varInput2").attr("placeholder", "");
			$("#memId").text("사번");
			$("#userId").attr("placeholder", "axxxxxx");
			$("#var1").text("학과 코드");
			$("#var2").text("학과 연락처");
			$('#single-select').change(function () {
				var tmpSelect = $(this).find('option:selected').val();
				$('#varInput1').val(tmpSelect);

				var selectedOption = $('#single-select option:selected');
				var deptVal = selectedOption.attr('dept_val');
				$("#varInput2").val(deptVal);
			});



		}
	}


	$(function () {

		$("#updBtn").click(function () {


			var regVal = $('#reg').val();
			var regVals = regVal.split('-');
			var reg1 = regVals[0];
			var reg2 = regVals[1];
			var gender = "";
			if (reg2.substr(0, 1) == "1" || reg2.substr(0, 1) == "3") {
				gender = "M"
			}
			if (reg2.substr(0, 1) == "2" || reg2.substr(0, 1) == "4") {
				gender = "F"
			}
			var obj = {
				"userId": $('#userId').val(),
				"userType": $("input:radio[name=userType]:checked").val(),
				"nameKo": $('#nameKo').val(),
				"nameEn": $('#nameEn').val(),
				"reg1": reg1,
				"reg2": reg2,
				"gender": gender,
				"major": $("#single-select option:checked").text(),
				"dept": $("#single-select option:selected").val(),
				"varInput1": $('#varInput1').val(),
				"varInput2": $('#varInput2').val(),
				"phone": $('#phone').val(),
				"email": $('#email').val(),
				"nation": $('#nation').val(),
				"postcode": $('#postcode').val(),
				"addr1": $('#addr1').val(),
				"addr2": $('#addr2').val(),
				"bank": $('#bank').val(),
				"account": $('#account').val()
			}
			console.log("obj >>>> ", obj);
			$.ajax({
				type: "post",
				url: "/user/insert",
				dataType: "text",
				data: obj,
				success: function (res) {
					console.log("res >>> ", res);
					alert("등록되었습니다.");
					$(".form-control").val("");
				},
				error: function (jqXHR, textStatus, errorThrown) {
					alert("ERROR : " + textStatus + " : " + errorThrown);
				}
			});

		});
	});


	function getOriginalName(fileName) {
		if (checkImageType(fileName)) {
			return;
		}
		var idx = fileName.indexOf("_") + 1;
		return fileName.substr(idx);
	}

	function getThumbnailName(fileName) {
		var front = fileName.substr(0, 12);
		var end = fileName.substr(12);

		console.log("front : " + front);
		console.log("end : " + end);

		return front + "s_" + end;
	}

	function checkImageType(fileName) {
		var pattern = /jpg|gif|png|jpeg/i;
		return fileName.match(pattern); // 패턴과 일치하면 true (너 이미지 맞구나?)
	}

	function checkFileType(filePath) {
		var fileFormat = filePath.split(".");

		if (fileFormat.indexOf("xls") > -1 || fileFormat.indexOf("xlsx") > -1) {
			return true;
		} else {
			return false;
		}
	}



	function checkFileType(filePath) {
		var fileFormat = filePath.split(".");

		if (fileFormat.indexOf("xls") > -1 || fileFormat.indexOf("xlsx") > -1) {
			return true;
		} else {
			return false;
		}
	}

	function check() {

		var file = $("#excelFile").val();

		if (file == "" || file == null) {
			alert("파일을 선택해주세요.");

			return false;
		} else if (!checkFileType(file)) {
			alert("엑셀 파일만 업로드 가능합니다.");

			return false;
		}

		if (confirm("업로드 하시겠습니까?")) {

			var options = {

				success: function (data) {
					console.log(data);
					alert(data);
					alert("모든 데이터가 업로드 되었습니다.");
				},
				type: "POST"
			};

			$("#excelUploadForm").submit();
		}
	}


	function DaumPostcode() {
		new daum.Postcode({
			oncomplete: function (data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				// 각 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var addr = ''; // 주소 변수
				var extraAddr = ''; // 참고항목 변수

				//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
				if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
					addr = data.roadAddress;
				} else { // 사용자가 지번 주소를 선택했을 경우(J)
					addr = data.jibunAddress;
				}

				// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
				if (data.userSelectedType === 'R') {
					// 법정동명이 있을 경우 추가한다. (법정리는 제외)
					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
						extraAddr += data.bname;
					}
					// 건물명이 있고, 공동주택일 경우 추가한다.
					if (data.buildingName !== '' && data.apartment === 'Y') {
						extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
					}
					// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					if (extraAddr !== '') {
						extraAddr = ' (' + extraAddr + ')';
					}
				}

				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById('postcode').value = data.zonecode;
				document.getElementById("addr1").value = addr;
				// 커서를 상세주소 필드로 이동한다.
				document.getElementById("addr2").focus();
			}
		}).open();
	}


</script>