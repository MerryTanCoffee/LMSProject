<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>대원대학교 포털시스템</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <link rel="stylesheet" href="/resources/css/boardStyle.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
            integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
            crossorigin="anonymous" referrerpolicy="no-referrer" />
    
<style>

::-webkit-scrollbar {
	width: 5px;
}

::-webkit-scrollbar-track {
	background-color: #fff;
}

::-webkit-scrollbar-thumb {
 	background-color: #56a5eb; 
}

::-webkit-scrollbar-thumb:hover {
	background-color: #56a5eb;
}




</style>
</head>    
    <body>
        <div class="wrapper">
        <!-- //////////////////////////////////////////// aside ////////////////////////////////////////////// -->
            <aside class="main-sidebar">
                <div class="sublogo fs-5">대원대학교</div>
                <p class="uniTextEng">DAEWON UNIVERSITY</p>
                <div class="sectit"><a href="/main">학생포털</a></div>
                <div class="user-w stb-w">
                    <div class="user-img">
                        <img src="#" alt="">
                    </div>
                    <div class="user-t" style="color: #fff; font-size: 18px;">
                        <div class="user-tw">
                            <span class="user-name"></span>${userInfo.studentVO.stuNameKo } <span class="user-subname" style="color: #fff;"></span>
                            <span class="user-subname" style="font-size:18px;">${userInfo.studentVO.academicVO.acaMajor}</span>
                        </div>
                        <div class="user-logcw">
                            <span class="user-logc"><a href="/logout">로그아웃</a></span> &nbsp;
                            <span class="user-logc"><a href="#">마이페이지</a></span>
                        </div>
                    </div>
                </div>
                <ul class="sidebar-menu">
                    <li><a href="/home">통합정보시스템</a></li>
                    <li><a href="/board/list/s001">스터디 모집현황</a></li>
                    <li><a href="/board/list/n002">일반공지</a></li>
                    <li><a href="/board/list/n001">학사공지</a></li>
                    <li><a href="/board/list/r001">채용정보</a></li>
                </ul>

            </aside>
            <!-- //////////////////////////////////////////// aside ////////////////////////////////////////////// -->

			<!-- //////////////////////////////////////////// section ////////////////////////////////////////////// -->
            <section class="content stucontent">

				

            </section>
            <!-- //////////////////////////////////////////// section ////////////////////////////////////////////// -->
        </div>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
            crossorigin="anonymous"></script>

</body>
</html>