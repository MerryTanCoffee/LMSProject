<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<title>대원대학교</title>
</head>

<body class="container py-5">
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">아이디 찾기</h4>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="userType" id="stu" value="STU">
                <label class="form-check-label" for="stu">학생</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="userType" id="pro" value="PRO">
                <label class="form-check-label" for="pro">교수</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="userType" id="emp" value="EMP">
                <label class="form-check-label" for="emp">직원</label>
            </div>
            <hr>
            <div class="mb-3">
                <label for="userName" class="form-label">이름</label>
                <input type="text" class="form-control" name="userName" id="userName">
            </div>
            <div class="mb-3">
                <label for="userReg1" class="form-label">주민번호</label>
                <div class="input-group">
                    <input type="text" class="form-control" name="userReg1" id="userReg1">
                    <span class="input-group-text">-</span>
                    <input type="text" class="form-control" name="userReg2" id="userReg2">
                </div>
            </div>
            <button type="button" class="btn btn-primary" id="idBtn">아이디 찾기</button>
            <button type="button" class="btn btn-secondary" id="autoIdBtn">자동완성1</button>
            <div id="getId" class="mt-3"></div>
        </div>
    </div>

    <hr>

    <div class="card">
        <div class="card-body">
            <h4 class="card-title">임시 비밀번호 보내기</h4>
            <div class="mb-3">
                <label for="userId" class="form-label">아이디</label>
                <input type="text" class="form-control" name="userId" id="userId">
            </div>
            <div class="mb-3">
                <label for="userName2" class="form-label">이름</label>
                <input type="text" class="form-control" name="userName" id="userName2">
            </div>
            <div class="mb-3">
                <label for="userReg11" class="form-label">주민번호</label>
                <div class="input-group">
                    <input type="text" class="form-control" name="userReg1" id="userReg11">
                    <span class="input-group-text">-</span>
                    <input type="text" class="form-control" name="userReg2" id="userReg22">
                </div>
            </div>
            <div class="mb-3">
                <label for="userEmail" class="form-label">임시비번 받을 이메일</label>
                <input type="email" class="form-control" name="userEmail" id="userEmail">
            </div>
            <button type="button" class="btn btn-primary" id="pwBtn">비밀번호 찾기</button>
            <button type="button" class="btn btn-secondary" id="autoPwBtn">자동완성2</button>
            <div id="getPw" class="mt-3"></div>
        </div>
    </div>


	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script>
$(function(){
	let idBtn = $("#idBtn");
	let pwBtn = $("#pwBtn");
	let userType = $("input[name='userType']");
	let autoIdBtn = $("#autoIdBtn");
	let autoPwBtn = $("#autoPwBtn");

	autoIdBtn.on("click", function(){
		$("#stu").prop('checked', true);
		$("#userName").val('이국주');
		$("#userReg1").val('910901');
		$("#userReg2").val('1411222');
	});

	autoPwBtn.on("click", function(){
		$("#stu").prop('checked', true);
		$("#userId").val("2023160104");
		$("#userName2").val('이국주');
		$("#userReg11").val('910901');
		$("#userReg22").val('1411222');
		$("#userEmail").val("ckzmfk19@gmail.com")
	});

	pwBtn.on("click", function(){
		if(!userType.is(":checked")){
			alert("구분을 선택해주세요.");
			return false;
		}
		if($("#userId").val() == ""){
			alert("아이디를 입력해주세요.");
			return false;
		}
		if($("#userName2").val() == ""){
			alert("이름을 입력해주세요.");
			return false;
		}
		if($("#userReg11").val() == "" || $("#userReg22").val() == ""){
			alert("주민번호를 입력해주세요.");
			return false;
		}
		if($("#userEmail").val() == ""){
			alert("이메일을 입력해주세요.");
			return false;
		}

		$("#getPw").html("");

		let data = {
				userType : $("input[name='userType']:checked").val(),
				userName : $("#userName2").val(),
				userReg1 : $("#userReg11").val(),
				userReg2 : $("#userReg22").val(),
				userId : $("#userId").val(),
				userEmail : $("#userEmail").val()
			}

		$.ajax({
			type : "post",
			url : "/sendPw",
			data : JSON.stringify(data),
			contentType : "application/json; charset:UTF-8",
			success : function(res){
				console.log(res);
				$("#getPw").html(res);
			}
		});
	});
	
	idBtn.on("click", function(){
		if(!userType.is(":checked")){
			alert("구분을 선택해주세요.");
			return false;
		}
		if($("#userName").val() == ""){
			alert("이름을 입력해주세요.");
			return false;
		}
		if($("#userReg1").val() == "" || $("#userReg2").val() == ""){
			alert("주민번호를 입력해주세요.");
			return false;
		}

		$("#getId").html("");

		let data = {
				userType : $("input[name='userType']:checked").val(),
				userName : $("#userName").val(),
				userReg1 : $("#userReg1").val(),
				userReg2 : $("#userReg2").val()
			}

		$.ajax({
			type : "post",
			url : "/findId",
			data : JSON.stringify(data),
			contentType : "application/json; charset:UTF-8",
			success : function(res){
				console.log(res);
				$("#getId").html(res);
			}
		});
	});

});
</script>
</body>
</html>