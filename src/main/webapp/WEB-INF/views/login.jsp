<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>대원대학교 로그인</title>
    <link rel="stylesheet" href="/resources/login/login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet"
        href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <!-- sweeet alert -->	
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Raleway:wght@300&display=swap');
/* 모달 css */
.modal-findId {
    position: fixed;
    background-color: rgba(0, 0, 0, 0.4);
    top: 0;
    left: 0;
    height: 100vh;
    width: 100%;
    display: none;
}

.modal-findId.active {
    display: block;
}

.modal-findPw {
    position: fixed;
    background-color: rgba(0, 0, 0, 0.4);
    top: 0;
    left: 0;
    height: 100vh;
    width: 100%;
    display: none;
}

.modal-findPw.active {
    display: block;
}

.modal-content {
    background-color: #fff;
/* 	width: 700px;  */
    border-radius: 10px;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    padding: 30px;
    box-shadow: 0 0 15PX rgb(0, 0, 0, 0.15);
    /* 애니메이션 적용 */
    animation: slidefade 0.35s linear;
}

.btn-close {
    position: absolute;
    top: 15px;
    right: 15px;
}

.btn-guide {
    background-color: #0b4085;
    color: #fff;
    border-radius: 5px;
    font-size: 14px;
    padding: 13px;
    display: block; /* 버튼 꽉 차게 */
}

/* 애니메이션 */
@keyframes slidefade {
    0% {
        opacity: 0;
        margin-top: -50px;
        /* margin-top: 100px; -> 아래에서 위로 */
    }
    100%{
        opacity: 1;
        margin-top: 0;
    }
}

a {
	text-decoration: none;
}

.contain {
  position: relative;
  max-width: 700px;
  width: 100%;
  background: #fff;
  padding: 10px;
  border-radius: 8px;
}
.contain header {
  font-size: 1.5rem;
  color: #333;
  font-weight: 800;
  text-align: center;
  padding-top: 15px;
}

.contain .contain-form {
  margin-top: 30px;
  
}
.contain-form .input-box {
  width: 100%;
  margin-top: 20px;
}
.input-box label {
  color: #333;
}

.contain-form :where(.input-box input, .select-box) {
  position: relative;
  height: 50px;
  width: 100%;
  outline: none;
  font-size: 1rem;
  color: #707070;
  margin-top: 8px;
  border: 1px solid #ddd;
  border-radius: 6px;
  padding: 0 15px;
}

.input-box input:focus {
  box-shadow: 0 1px 0 rgba(0, 0, 0, 0.1);
}
.contain-form .column {
  display: flex;
  column-gap: 15px;
}
.contain-form .actor-box {
  margin-top: 20px;
}
.actor-box h3 {
  color: #333;
  font-size: 1rem;
  font-weight: 400;
  margin-bottom: 8px;
}
.contain-form :where(.actor-option, .actor) {
  display: flex;
  align-items: center;
/*   column-gap: 50px; */
  flex-wrap: wrap;
  justify-content: space-evenly;
  font-size: 20px;
}
.contain-form .actor {
  column-gap: 5px;
  padding: 10px;
  border-radius: 25px;
}
.actor input {
  accent-color: rgb(130, 106, 251);
}
.contain-form :where(.actor input, .actor label) {
  cursor: pointer;
}

.actor label {
  color: black;
}
.reg :where(input, .select-box) {
  margin-top: 15px;
}
.contain-form button {
  height: 45px;
  width: 100%;
  color: #fff;
  font-size: 1rem;
  font-weight: 400;
  margin-top: 49px;
  border: none;
  cursor: pointer;
  transition: all 0.2s ease;
  background: #0b4085;
}
.contain-form button:hover {
  background: rgb(88, 56, 250);
}
/*Responsive*/
@media screen and (max-width: 500px) {
  .form .column {
    flex-wrap: wrap;
  }
  .contain-form :where(.actor-option, .actor) {
    row-gap: 15px;
  }
}
.btn-box {
    display: flex;
}

#preloader{
	position: fixed;
	top:0;
	width:100%;
	height: 100vh;
	background: #77b3d4;
	display: flex;
	justify-content: center;
	align-items: center;
    transition : opacity 0.5s ease;
    z-index: 99999;
}

.cloud1, .cloud2, .cloud3 {
	height: 100px;
	position: absolute;
	right: 0%;
    z-index: -1;
}

.cloud1 {
	top:25%;
	transform : translate(100%, -25%);
    animation: clouds 3s ease infinite;
	
}
.cloud2 {
	top:50%;
	transform : translate(100%, -50%);
    animation: clouds 3s ease infinite 2s;
}
.cloud3 {
	top:75%;
	transform : translate(100%, -75%);
    animation: clouds 3s ease infinite 1.5s;
}

.paperplane {
	height: 200px;
    animation: airplane 1s ease infinite alternate;
}

#preloader h3 {
	position: absolute;
	top: 67%;
	transform: translateY(-75%);
	color:white;
	font-size: 23px;
}
#preloader h4 {
	position: absolute;
	top: 72%;
	transform: translateY(-75%);
	color:white;
	font-size: 19px;
}

@keyframes airplane {
    from {
        transform: translateY(0px);
    }
    to {
        transform: translateY(50px);
    }
}

@keyframes clouds {
    from {
        right: 0%;
    }
    to {
        right: 130%;
    }
}
</style>


</head>

<body>
	<div id="preloader" style="display:none;">
		<img src="/resources/images/paperplane.png" style="width:200px;">
		<h3>임시 비밀번호 발급 중...</h3>
		<h4>잠시만 기다려주세요.</h4>
		<img class="cloud1" src="/resources/images/cloud.png">
		<img class="cloud2" src="/resources/images/cloud.png">
		<img class="cloud3" src="/resources/images/cloud.png">
    </div>
    <section>
        <div class="main-container">
            <!-- <h2>대원대학교<p>Daewon University</p></h2> -->
            <img src="${pageContext.request.contextPath}/resources/images/DWU_logo.png" id="logo">
           	<h1 id="univName">대원대학교</h1>
            <br>
            <form action="/loginProcess" method="post" id="loginForm">
                <div class="radio-button">
                    <label class="custom-radio">
                        <input type="radio" name="userType" value="STU">
                        <span class="radio-btn"><i class="las la-check"></i>
                            <div class="user-icon">
                                <i class="las la-graduation-cap"></i>
                                <h4>Student</h4>
                            </div>
                        </span>
                    </label>
                    <label class="custom-radio">
                        <input type="radio" name="userType" value="PRO" checked>
                        <span class="radio-btn"><i class="las la-check"></i>
                            <div class="user-icon">
                                <i class="las la-chalkboard-teacher"></i>
                                <h4>professor</h4>
                            </div>
                        </span>
                    </label>
                    <label class="custom-radio">
                        <input type="radio" name="userType" value="EMP">
                        <span class="radio-btn"><i class="las la-check"></i>
                            <div class="user-icon">
                                <i class="las la-user-cog"></i>
                                <h4>employee</h4>
                            </div>
                        </span>
                    </label>
                </div>
                <div class="login-info">
                    <i class="lar la-id-card"></i>
                    <input type="text" name="userId"  value="p2010111222" required id="userId">
                    <label for="">Id</label>
                </div>
                <div class="login-info">
                    <i class="las la-lock"></i>
                    <input type="password" name="password" value="123" required id="userPassword">
                    <label for="">Password</label>
                </div>
                <div class="forget">
                    <input type="checkbox" id="chBtn">
                    <!-- <label for="chBtn"> 자동 로그인</label> -->
<!--                     <a href="/userFind" onclick="window.open(this.href, '_blank', 'width=800, height=600'); return false;">아이디 찾기</a> -->
                    <a href="#" class="findId">아이디 찾기</a>
                    <pre>&nbsp;&nbsp;</pre>
<!--                     <a href="/userFind" onclick="window.open(this.href, '_blank', 'width=800, height=600'); return false;">비밀번호 찾기</a> -->
                    <a href="#" class="findPw">비밀번호 찾기</a> 

                </div>
                <div class="g-recaptcha" style="padding-bottom: 20px;" data-sitekey="6Ldy-iUlAAAAAKIj2dgmP8eplJaPSwoKo1i-oxz6"></div>	<!-- 6Ldy-iUlAAAAAKIj2dgmP8eplJaPSwoKo1i-oxz6 -->
                <button  type="button"  id="loginBtn">로그인</button> 
<!--                 <button  id="loginBtn">로그인</button>  -->
                <div class="register">
                    <p>© DAEWON Univ</p>
                </div>
            </form>
        </div>
    </section>
    
    <!-- /////////////////////////////// 아이디 찾기 모달 창  /////////////////////////////// -->
    <div class="modal-findId">
        <div class="modal-content">
            <a href="#" class="btn-close"> <i class="fa-solid fa-xmark"></i></a>
            <div class="modal-body">
				<div class="contain">
					<div style="display: flex; flex-direction: column; align-items: center; font-size: 70px;"> 
						<i class="fa-solid fa-circle-user" style="color:#0b4085;"></i>
						<header>아이디 찾기</header>
					</div>
					<div class="contain-form">
						<div class="actor-box">
	                        <div class="actor-option">
	                            <div class="actor">
	                                <input type="radio"  name="userType1" id="stu1" value="STU" checked />
	                                <label for="stu1">학생</label>
	                            </div>
	                            <div class="actor">
	                                <input type="radio"  name="userType1" id="pro1" value="PRO"/>
	                                <label  for="pro1">교수</label>
	                            </div>
	                            <div class="actor">
	                                <input type="radio"  name="userType1" id="emp1" value="EMP"/>
	                                <label  for="emp1">교직원</label>
	                            </div>
	                        </div>
                    	</div>
                    	<div class="input-box">
                       		<label for="userName1">이름</label>
                        	<input type="text" placeholder="이름을 입력해 주세요." name="userName" id="userName1" />
                    	</div>
                    	<div class="input-box reg">
	                        <label for="userReg1">주민번호</label>
	                        <div class="column">
	                            <input type="text" name="userReg1" id="userReg1"/>
	                            <span style="padding-top: 25px;">-</span>
	                            <input type="text" name="userReg2" id="userReg11"/>
	                        </div>
	                    </div>
	                    <div class="btn-box">
	                        <button type="button" id="idBtn">찾기</button>
	                        <span>&nbsp;&nbsp;&nbsp;</span>
	                        <button type="button" id="autoIdBtn">자동완성</button>
	                    </div>
	                    <br>
	                    <div id="getId"style="display: flex; font-size: 20px; align-items: center; justify-content: center"></div> 
					</div>
				</div>
            </div>
        </div>
    </div>
    
    <!-- /////////////////////////////// 비밀번호 찾기 모달 창  /////////////////////////////// -->
    <div class="modal-findPw">
        <div class="modal-content">
            <a href="#" class="btn-close"> <i class="fa-solid fa-xmark"></i></a>         
            <div class="modal-body">
                <div class="contain">
					<div style="display: flex; flex-direction: column; align-items: center; font-size: 70px;"> 
						<i class="fa-solid fa-envelope-open" style="color:#0b4085;"></i>
						<header>임시 비밀번호 발급</header>
					</div>
					<div class="contain-form">
						<div class="actor-box">
	                        <div class="actor-option">
	                            <div class="actor">
	                                <input type="radio" name="userType2" id="stu2" value="STU" checked />
	                                <label for="stu2">학생</label>
	                            </div>
	                            <div class="actor">
	                                <input type="radio" name="userType2" id="pro2" value="PRO"/>
	                                <label for="pro2">교수</label>
	                            </div>
	                            <div class="actor">
	                                <input type="radio" name="userType2" id="emp2" value="EMP"/>
	                                <label for="emp2">교직원</label>
	                            </div>
	                        </div>
                    	</div>
                    	<div class="input-box">
                       		<label for="userId2">아이디</label>
                        	<input type="text" placeholder="아이디를 입력해 주세요." name="userId" id="userId2" />
                    	</div>
                    	<div class="input-box">
                       		<label for="userName2">이름</label>
                        	<input type="text" placeholder="이름을 입력해 주세요." name="userName" id="userName2" />
                    	</div>
                    	<div class="input-box reg">
	                        <label for="userReg2">주민번호</label>
	                        <div class="column">
	                            <input type="text" name="userReg1" id="userReg2"/>
	                            <span style="padding-top: 25px;">-</span>
	                            <input type="password" name="userReg2" id="userReg22"/>
	                        </div>
	                    </div>
	                    <div class="input-box">
                       		<label for="userEmail">이메일</label>
                        	<input type="email" placeholder="이메일을 입력해 주세요." name="userEmail2" id="userEmail2" />
                    	</div>
	                    <div class="btn-box">
	                        <button type="button" id="pwBtn">찾기</button>
	                        <span>&nbsp;&nbsp;&nbsp;</span>
	                        <button type="button" id="autoPwBtn">자동완성</button>
	                    </div> 
                        <div id="getPw"></div>
					</div>
				</div>
            </div>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <!-- 구글 리캡차 -->
	<script src='https://www.google.com/recaptcha/api.js'></script> 
    
    <script>
    	$("#preloader").hide();
    	
	    <c:if test="${not empty sessionScope.msg }">
    		alert("${sessionScope.msg}"); 
		    <c:remove var="msg" scope="session"/>
	    </c:if>
		let loginCnt = 0;

        const loginForm = document.querySelector("#loginForm");
        
        $(".g-recaptcha").css("display", "none");	// 캡챠박스 처음엔 display none 찰;
        
        var recapchaFlag = false;
        var sign = false;
		$("#loginBtn").on("click", function(e){
            //e.preventDefault();

            let data = {
                userId: $("#userId").val(),
                password: $("#userPassword").val()
            }

            // recapcha가 실행되었고, recapcha가 적용되었을때 아래가 실행된다.
            if(sign){
            	recapcha();
            	return false;
            }
            
            $.ajax({
                type:"post",
                url:"/loginCheck",
                contentType:"application/json;charset=utf-8",
                data: JSON.stringify(data),
                dataType:"text",
                success:function(rslt){
                    if(rslt == "NG"){
	                    loginCnt++;
	                    // alert("등록된 사용자 정보가 존재하지 않습니다.");
                        Swal.fire({
                            title: "로그인 실패<strong style='color: red'>("+loginCnt+"/3)</strong>",
                            html: "로그인 <Strong>3회</strong> 실패 시 캡챠 인증이 발생합니다.",
                            icon: 'error'
                            });
                        console.log("로그인 "+loginCnt+"회 실패!");
                        if(loginCnt == 3){
                        	// 캡챠진행
                        	console.log("캡챠 이벤트 발생...!");
                        	
                        	$(".g-recaptcha").css("display", "block");
                       		sign = true;
                        }
                    }else{
	                   	loginForm.submit();
                    }
                }
            })
		});
		
		var result = "";
		function recapcha(){
			$.ajax({
                url: '/VerifyRecaptcha',
                type: 'post',
                data: {
                	recaptcha: $("#g-recaptcha-response").val()
                },
                
                success: function(res) {
                	console.log("캡챠 : " + res);
                    const data=JSON.parse(res);
                    
                    $(".g-recaptcha").css("display", "block");	
                    if(data.success){
                     	sign = false;	// recapcha 인증 성공
                    }else{
                        // alert("자동 가입 방지 봇을 확인 한뒤 진행 해 주세요.");
                        Swal.fire({
                            title :  '캡챠 인증 확인 필요.', 
                            html:  '캡챠 인증을 진행해 주세요.',
                            icon : 'error'
                        });
                    }               
                }
            }); 
		}
		
		// ////////////////////////// 아이디 찾기 모달 //////////////////////////
		$('.findId').click(function(){
            $('.modal-findId').addClass('active');
        });

        $('.btn-close').click(function(){
            $('.modal-findId').removeClass('active');
        });
        
		// ////////////////////////// 비밀번호 찾기 모달 //////////////////////////
		$('.findPw').click(function(){
            $('.modal-findPw').addClass('active');
        });
		
        $('.btn-close').click(function(){
            $('.modal-findPw').removeClass('active');
        });

		
        $(function(){
        	let idBtn = $("#idBtn");
        	let pwBtn = $("#pwBtn");
        	let autoIdBtn = $("#autoIdBtn");
        	let autoPwBtn = $("#autoPwBtn");

        	autoIdBtn.on("click", function(){
        		$("#stu1").prop('checked', true);
        		$("#userName1").val('이국주');
        		$("#userReg1").val('010930');
        		$("#userReg11").val('4123954');
        	});

        	autoPwBtn.on("click", function(){
        		$("#stu2").prop('checked', true);
        		$("#userId2").val("20210035");
        		$("#userName2").val('이국주');
        		$("#userReg2").val('010930');
        		$("#userReg22").val('4123954');
        		$("#userEmail2").val("ysh5260@naver.com")
        	});

        	$(document).on("click", "#pwBtn", function(){
        		if($('input[name="userType2"]:checked').val() == "" || $('input[name="userType2"]:checked').val() == null){
        			// alert("구분을 선택해주세요.");
                    Swal.fire({
                        title :  '구분 미선택', 
                        html:  '사용자 구분을 선택해주세요.',
                        icon : 'warning'
                    });
        			return false;
        		}
        		if($("#userId2").val() == "" || $("#userId2").val() == null){
        			// alert("아이디를 입력해주세요.");
                    Swal.fire({
                        title :  '아이디 미입력', 
                        html:  '아이디를 입력해주세요.',
                        icon : 'warning'
                    });
        			return false;
        		}
        		if($("#userName2").val() == "" || $("#userName2").val() == null){
        			// alert("이름을 입력해주세요.");
                    Swal.fire({
                        title :  '이름 미입력', 
                        html:  '이름을 입력해주세요.',
                        icon : 'warning'
                    });
        			return false;
        		}
        		if($("#userReg2").val() == "" || $("#userReg2").val() == null
        				|| $("#userReg22").val() == "" || $("#userReg22").val() == null){
        			// alert("주민번호를 입력해주세요.");
                    Swal.fire({
                        title :  '주민번호 미입력', 
                        html:  '주민번호를 입력해주세요.',
                        icon : 'warning'
                    });
        			return false;
        		}
        		if($("#userEmail2").val() == "" || $("#userEmail2").val() == null){
        			// alert("이메일을 입력해주세요.");
                    Swal.fire({
                        title :  '이메일 미입력', 
                        html:  '이메일을 입력해주세요.',
                        icon : 'warning'
                    });
        			return false;
        		}

        		$("#getPw").html("");

        		let data = {
        				userType : $('input[name="userType2"]:checked').val(),
        				userName : $("#userName2").val(),
        				userReg1 : $("#userReg2").val(),
        				userReg2 : $("#userReg22").val(),
        				userId : $("#userId2").val(),
        				userEmail : $("#userEmail2").val()
        			}
                console.log("비밀번호 찾을 데이터셋:", data);
        			$.ajax({
            			type : "post",
            			url : "/sendPw",
            			data : JSON.stringify(data),
            			contentType : "application/json; charset:UTF-8",
            			beforeSend: function() {
           				  //처리중
            				$("#preloader").show();

           				 },
           				 complete: function() {
           				  //완료
           					$("#preloader").hide();

           				 },
            			success : function(res){
            				console.log(res);
                            if(res == "ok"){
                                Swal.fire({
                                    title : "<h5>임시비밀번호 발급완료</5>",
                                    text : "이메일을 확인해주세요.",
                                    icon : "success",
                                    closeOnClickOutside : false
                                    });
                            } else {
                                Swal.fire({
                                    title : "<h5>임시비밀번호 발급실패</h5>",
                                    text : "입력하신 정보를 확인해주세요.",
                                    icon : "error",
                                    closeOnClickOutside : false
                                    });
                            } 
            			}
            		});
        		
        		
        	});
        	
        	$(document).on("click", "#idBtn", function(){
                console.log(">>", $('input[name="userType1"]:checked').val());
        		if(!$('input[name="userType1"]:checked').val()){
        			// alert("구분을 선택해주세요.");
                    Swal.fire({
                        title :  '구분 미선택', 
                        html:  '구분을 선택해주세요.',
                        icon : 'warning'
                    });
        			return false;
        		}
        		if($("#userName1").val() == ""){
        			// alert("이름을 입력해주세요.");
                    Swal.fire({
                        title : '이름 미입력', 
                        html : '이름을 입력해주세요.',
                        icon : 'warning'
                    });
        			return false;
        		}
        		if($("#userReg1").val() == "" || $("#userReg11").val() == ""){
        			// alert("주민번호를 입력해주세요.");
                    Swal.fire({
                        title : '주민번호 미입력', 
                        html : '주민번호를 입력해주세요.',
                        icon : 'warning'
                    });
        			return false;
        		}

        		$("#getId").html("");

        		let data = {
        				"userType" : $('input[name="userType1"]:checked').val(),
        				"userName" : $("#userName1").val(),
        				"userReg1" : $("#userReg1").val(),
        				"userReg2" : $("#userReg11").val()
        			}
                
                console.log("아이디 찾을 데이터셋:", data);
        		$.ajax({
        			type : "post",
        			url : "/findId",
        			data : JSON.stringify(data),
        			contentType : "application/json; charset:UTF-8",
        			success : function(res){
        				console.log(res);
        				if(res == "fail" ){
                            Swal.fire({
                                title : "<h5>아이디 찾기 실패</5>",
                                text : "입력한 사용자 정보가 없습니다.",
                                icon : "error",
                                closeOnClickOutside : false
                                });
                        } else {
                            Swal.fire({
                                title : `<h5>아이디: \${res}</h5>`,
                                text : `` ,
                                icon : "success",
                                closeOnClickOutside : false
                                });
                        }
        			}
        		});
        	});

        });
        
        
		/*
        function changeBg() {
            const images = [
                'url("/resources/images/1.jpg")',
                'url("/resources/images/2.jpg")',
                'url("/resources/images/3.jpg")',
//                 'url("./resources/images/4.jpg")',
//                 'url("./resources/images/5.jpg")',
            ];

            const section = document.querySelector('section');
            const bg = images[Math.floor(Math.random() * images.length)];
            section.style.backgroundImage = bg;
        }

        setInterval(changeBg, 3000);
        */
    </script>
</body>

</html>