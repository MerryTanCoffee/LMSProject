<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!-- Coding by CodingLab | www.codinglabweb.com-->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <!--<title> Check Password and Confirm Password | CodingLab </title>-->
<!--     <link rel="stylesheet" href="style.css"> -->
    <!-- Fontawesome CDN Link -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"/>
<style type="text/css">
   	/* Google Font Link */
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins" , sans-serif;
}
body{
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 0 35px;
}
.wrapper{
  position: relative;
  background: #fff;
  max-width: 480px;
  width: 100%;
  padding: 35px 40px;
  /* border-radius: 6px; */
  box-shadow: 0 5px 10px rgba(0,0,0,0.2);
}
.input-box{
  position: relative;
  height: 65px;
  margin: 9px 0;
}
.input-box input{
  position: relative;
  height: 77%;
  width: 100%;
  outline: none;
  color: #333;
  font-size: 18px;
  font-weight: 500;
  padding: 0 40px 0 16px;
  border: 1px solid lightgrey;
  /* border-radius: 6px; */
  transition: all 0.3s ease;
  background: #fff;
}
.input-box input:focus,
.input-box input:valid{
  border-color: #4070F4;
}
.input-box i,
.input-box label{
  position: absolute;
  top: 37%;
  transform: translateY(-50%);
  /* color: #a6a6a6; */
  transition: all 0.3s ease;
}
.input-box label{
  left: 15px;
  font-size: 14px;
  font-weight: 400;
  background: #fff;
  padding: 0 6px;
  pointer-events: none;
}
.input-box input:focus ~ label,
.input-box input:valid ~ label{
  top: 0;
  font-size: 14px;
  color: #4070F4;
}
.input-box i{
  right: 15px;
  cursor: pointer;
  padding: 8px;
}
.alert{
  display: flex;
  align-items: center;
  margin-top: -13px;
}
.alert .error{
  color: #D93025;
  font-size: 18px;
  display: none;
  margin-right: 8px;
}
 .text{
  font-size: 18px;
  font-weight: 400;
  color: #a6a6a6;
}
.input-box.button input{
  border: none;
  font-size: 16px;
  color: #fff;
  letter-spacing: 1px;
  background: #4070F4;
  /* cursor: not-allowed; */
  cursor: pointer;
}
.input-box.button input.active:hover{
  background: #265df2;
  cursor: pointer;
}
   	
   
   </style>
   </head>
<body>
  <div class="wrapper">
  	<input type="hidden" name="userId" id="userId" value="${userId }">
        <h3>변경할 비밀번호를 입력해 주세요.</h3>
      <div class="input-box" style="margin-top: 40px;">
        <input name="password" id="password" type="password" value="">
        <label>비밀번호</label>
      </div>
      <div class="input-box">
        <input id="password_confirm" type="password" value="" >
        <label>비밀번호 확인</label>
        <i class="fas fa-eye-slash show"></i>
      </div>
      <div class="alert">
        <i class="fas fa-exclamation-circle error"></i>
        <span class="error-text" style="color:#f95959;"></span>
      </div>
      <div class="input-box button">
        <input id="updPasswordBtn" type="button" value="비밀번호 변경">
      </div>
  </div>
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  <script>
  
  	$("#updPasswordBtn").on("click", function(){
  		console.log("click!");
		
  		let userId = $("#userId").val();
  		let password = $("#password").val();
  		let password_confirm = $("#password_confirm").val();
  		console.log("비밀번호 입력 값 :", password);
  		console.log("비밀번호 확인 입력 값 :", password_confirm);
  		
  		
  		data = {
  			userId : userId,
  			password : password,
  		}
  		
  		if(password != password_confirm){
			$(".error-text").html("비밀번호가 일치하지 않습니다.");
		} else {
			$(".error-text").html("");
			$.ajax({
	  			url: "/user/updPassword?userId=" + userId,
	  			type: "post",
	  			data : JSON.stringify(data),
				contentType : "application/json; charset:UTF-8",
				success : function(res){
					console.log("통신성공??", res);
					alert("비밀번호가 변경되었습니다.");
					location.href = "/login";
				}
	  		});
		}
  		
  		
  	});
  
  </script>

</body>
</html>
