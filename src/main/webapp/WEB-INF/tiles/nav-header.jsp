<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<style>
	@font-face {
	    font-family: 'GmarketSansMedium';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	#logoName{
		font-family: 'GmarketSansMedium';
	    padding-left: 10px;
    	font-size: 1.3rem;
    	letter-spacing: 2px;
    	margin-top: 4px;
	}

</style>
<!--**********************************
           Nav header start
       ***********************************-->
        <div class="nav-header">
        <c:if test="${sessionScope.userInfo.userType eq 'STU' }">
           <a href="/main" class="brand-logo">
			<img src="/resources/images/DWU_logo_white.png" style="padding-top: 5px; padding-bottom: 5px;"/>
			<span id="logoName">대원대학교</span>
           </a>
        </c:if>
        <c:if test="${sessionScope.userInfo.userType eq 'PRO' }">
           <a href="/proHome" class="brand-logo">
			<img src="/resources/images/DWU_logo_white.png" style="padding-top: 5px; padding-bottom: 5px;"/>
			<span id="logoName">대원대학교</span>
           </a>
        </c:if>
        <c:if test="${sessionScope.userInfo.userType eq 'EMP' }">
           <a href="/adminHome" class="brand-logo">
			<img src="/resources/images/DWU_logo_white.png" style="padding-top: 5px; padding-bottom: 5px;"/>
			<span id="logoName">대원대학교</span>
           </a>
        </c:if>
           <div class="nav-control">
               <div class="hamburger" id="hamburgerBtn">
                   <span class="line"></span>
				<span class="line"></span>
				<span class="line"></span>
               </div>
           </div>
       </div>
       <!--**********************************
           Nav header end
       ***********************************-->
       
       
       
       