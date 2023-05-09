<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 납부 확인서 -->

<!DOCTYPE html>
<html>
<head>
<meta name="Generator" content="Hancom HWP 11.0.0.2129">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

.HStyle0 {
	style-name: "바탕글";
	margin-top: 0.0pt;
	margin-bottom: 0.0pt;
	text-align: justify;
	text-indent: 0.0pt;
	line-height: 160%;
	font-size: 10.0pt;
	font-family: 바탕;
	letter-spacing: -5%;
	font-weight: normal;
	font-style: normal;
	color: #000000;
}

.HStyle1 {
	style-name: "본문";
	margin-left: 15.0pt;
	margin-top: 0.0pt;
	margin-bottom: 0.0pt;
	text-align: justify;
	text-indent: 0.0pt;
	line-height: 160%;
	font-size: 10.0pt;
	font-family: 바탕;
	letter-spacing: -5%;
	font-weight: normal;
	font-style: normal;
	color: #000000;
}

.HStyle2 {
	style-name: "개요 1";
	margin-top: 0.0pt;
	margin-bottom: 0.0pt;
	text-align: justify;
	text-indent: 0.0pt;
	line-height: 160%;
	font-size: 10.0pt;
	font-family: 바탕;
	letter-spacing: -5%;
	font-weight: normal;
	font-style: normal;
	color: #000000;
}

.HStyle3 {
	style-name: "개요 2";
	margin-top: 0.0pt;
	margin-bottom: 0.0pt;
	text-align: justify;
	text-indent: 0.0pt;
	line-height: 160%;
	font-size: 10.0pt;
	font-family: 바탕;
	letter-spacing: -5%;
	font-weight: normal;
	font-style: normal;
	color: #000000;
}

.HStyle4 {
	style-name: "개요 3";
	margin-top: 0.0pt;
	margin-bottom: 0.0pt;
	text-align: justify;
	text-indent: 0.0pt;
	line-height: 160%;
	font-size: 10.0pt;
	font-family: 바탕;
	letter-spacing: -5%;
	font-weight: normal;
	font-style: normal;
	color: #000000;
}

.HStyle5 {
	style-name: "개요 4";
	margin-top: 0.0pt;
	margin-bottom: 0.0pt;
	text-align: justify;
	text-indent: 0.0pt;
	line-height: 160%;
	font-size: 10.0pt;
	font-family: 바탕;
	letter-spacing: -5%;
	font-weight: normal;
	font-style: normal;
	color: #000000;
}

.HStyle6 {
	style-name: "개요 5";
	margin-top: 0.0pt;
	margin-bottom: 0.0pt;
	text-align: justify;
	text-indent: 0.0pt;
	line-height: 160%;
	font-size: 10.0pt;
	font-family: 바탕;
	letter-spacing: -5%;
	font-weight: normal;
	font-style: normal;
	color: #000000;
}

.HStyle7 {
	style-name: "개요 6";
	margin-top: 0.0pt;
	margin-bottom: 0.0pt;
	text-align: justify;
	text-indent: 0.0pt;
	line-height: 160%;
	font-size: 10.0pt;
	font-family: 바탕;
	letter-spacing: -5%;
	font-weight: normal;
	font-style: normal;
	color: #000000;
}

.HStyle8 {
	style-name: "개요 7";
	margin-top: 0.0pt;
	margin-bottom: 0.0pt;
	text-align: justify;
	text-indent: 0.0pt;
	line-height: 160%;
	font-size: 10.0pt;
	font-family: 바탕;
	letter-spacing: -5%;
	font-weight: normal;
	font-style: normal;
	color: #000000;
}

.HStyle9 {
	style-name: "쪽 번호";
	margin-top: 0.0pt;
	margin-bottom: 0.0pt;
	text-align: justify;
	text-indent: 0.0pt;
	line-height: 160%;
	font-size: 10.0pt;
	font-family: 굴림;
	letter-spacing: -5%;
	font-weight: normal;
	font-style: normal;
	color: #000000;
}

.HStyle10 {
	style-name: "머리말";
	margin-top: 0.0pt;
	margin-bottom: 0.0pt;
	text-align: justify;
	text-indent: 0.0pt;
	line-height: 150%;
	font-size: 9.0pt;
	font-family: 굴림;
	letter-spacing: -5%;
	font-weight: normal;
	font-style: normal;
	color: #000000;
}

.HStyle11 {
	style-name: "각주";
	margin-left: 13.1pt;
	margin-top: 0.0pt;
	margin-bottom: 0.0pt;
	text-align: justify;
	text-indent: -13.1pt;
	line-height: 130%;
	font-size: 9.0pt;
	font-family: 바탕;
	letter-spacing: -5%;
	font-weight: normal;
	font-style: normal;
	color: #000000;
}
</style>
<script type="text/javascript">
	var adjustStyle = function(borderWidth) {
		var value = borderWidth.match(/([\d\.]+)(%|px|cm|em|in|mm|pc|pt|)/)
				|| [ 0, 0, '' ];
		var width = parseFloat(value[1]);
		var unit = value[2];
		if (unit == 'cm') {
			if (width > 0.0 && width < 0.03) {
				width = 0.03;
			}
		} else if (unit == 'in') {
			if (width > 0.0 && width < 0.02) {
				width = 0.02;
			}
		} else if (unit == 'mm') {
			if (width > 0.0 && width < 0.3) {
				width = 0.3;
			}
		} else if (unit == 'pc') {
			if (width > 0.0 && width < 0.07) {
				width = 0.07;
			}
		} else if (unit == 'px') {
			if (width > 0.0 && width < 1.0) {
				width = 1.0;
			}
		} else if (unit == 'pt') {
			if (width > 0.0 && width < 0.8) {
				width = 0.8;
			}
		} else if (unit == 'em') {
			/* do not support */
		} else if (unit == '%') {
			/* do not support */
		}
		borderWidth = width + unit;
		return borderWidth;
	};
	(function() {
		if (navigator.userAgent.match(/AppleWebKit/g) != null) {
			for (var shIndex = 0; shIndex < document.styleSheets.length; shIndex++) {
				var styleSheet = document.styleSheets[shIndex];
				var rules = styleSheet.rules;
				for (var rlIndex = 0; rlIndex < rules.length; rlIndex++) {
					var rule = rules[rlIndex];
					rule.style.borderLeftWidth = adjustStyle(rule.style.borderLeftWidth);
					rule.style.borderRightWidth = adjustStyle(rule.style.borderRightWidth);
					rule.style.borderTopWidth = adjustStyle(rule.style.borderTopWidth);
					rule.style.borderBottomWidth = adjustStyle(rule.style.borderBottomWidth);
				}
			}
		}
	})();
	window.onload = function() {
		if (navigator.userAgent.match(/AppleWebKit/g) != null) {
			var styledElms = document.querySelectorAll('*[style]');
			for (var loop = 0; loop < styledElms.length; loop++) {
				var elm = styledElms[loop];
				elm.style.borderLeftWidth = adjustStyle(elm.style.borderLeftWidth);
				elm.style.borderRightWidth = adjustStyle(elm.style.borderRightWidth);
				elm.style.borderTopWidth = adjustStyle(elm.style.borderTopWidth);
				elm.style.borderBottomWidth = adjustStyle(elm.style.borderBottomWidth);
			}
		}
	};
</script>
</head>
<body>

<div style="padding-left:80%;padding-top:2%;">
<!-- 	<button type="button" class="btn btn-outline-secondary" onclick="saveImage()"> -->
<!-- 			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-file-earmark-arrow-down" viewBox="0 0 16 16"> -->
<!-- 			  <path d="M8.5 6.5a.5.5 0 0 0-1 0v3.793L6.354 9.146a.5.5 0 1 0-.708.708l2 2a.5.5 0 0 0 .708 0l2-2a.5.5 0 0 0-.708-.708L8.5 10.293V6.5z"></path> -->
<!-- 			  <path d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5v2z"></path> -->
<!-- 			</svg> -->
<!-- 	        <span class="visually-hidden">Button</span> -->
<!-- 	</button> -->
<button type="button" class="btn btn-outline-danger" onclick="saveImage()">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-file-earmark-arrow-down" viewBox="0 0 16 16">
  <path d="M8.5 6.5a.5.5 0 0 0-1 0v3.793L6.354 9.146a.5.5 0 1 0-.708.708l2 2a.5.5 0 0 0 .708 0l2-2a.5.5 0 0 0-.708-.708L8.5 10.293V6.5z"></path>
  <path d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5v2z"></path>
</svg>
                download
              </button>
</div>
	
	<div style="padding: 5%;" id="pdfArea">
		<p class=HStyle0>
			<span style="position: relative;"><img
				src="${pageContext.request.contextPath}/resources/images/dojang.png"
				alt="(인)" width="74px" height="73px" vspace="0" hspace="0"
				border="0"
				style="position: absolute; left: 525.000000px; top: 500.000000px;"></span>
		</p>
		<table cellspacing="5" cellpadding="5"
			style='border-collapse: collapse; border: none; table-layout: fixed;'>
			<tr>
				<td valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 74px; height: 38px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 12.0pt;'>
						<span
							style='position: relative; font-size: 9.0pt; font-family: "바탕체"'>학부(과)</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td colspan="3" valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 168px; height: 38px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 12.0pt;'>
						<span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">${sessionScope.userInfo.studentVO.academicVO.acaMajor }(과)</span>
					</p>
				</td>
				<td colspan="2" valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 57px; height: 38px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 12.0pt;'>
						<span
							style='position: relative; font-size: 9.0pt; font-family: "바탕체"'>학년</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td colspan="2" valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 55px; height: 38px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 12.0pt;'>
						<span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">${sessionScope.userInfo.studentVO.academicVO.acaGrade }</span>
					</p>
				</td>
				<td valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 74px; height: 38px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 12.0pt;'>
						<span
							style='position: relative; font-size: 9.0pt; font-family: "바탕체"'>학번</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td colspan="2" valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 99px; height: 38px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 12.0pt;'>
						<span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">${userInfo.userId }</span>
					</p>
				</td>
				<td valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 74px; height: 38px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 12.0pt;'>
						<span
							style='position: relative; font-size: 9.0pt; font-family: "바탕체"'>성명</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 99px; height: 38px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 12.0pt;'>
						<span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">${sessionScope.userInfo.studentVO.stuNameKo }</span>
					</p>
				</td>
			</tr>
			<tr>
				<td valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 74px; height: 8px; border-left: #000000 0.425250pt none; border-right: #000000 0.425250pt none; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 11.0pt;'>
						<span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td colspan="3" valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 168px; height: 8px; border-left: #000000 0.425250pt none; border-right: #000000 0.425250pt none; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 11.0pt;'>
						<span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td colspan="2" valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 57px; height: 8px; border-left: #000000 0.425250pt none; border-right: #000000 0.425250pt none; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 11.0pt;'>
						<span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td colspan="2" valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 55px; height: 8px; border-left: #000000 0.425250pt none; border-right: #000000 0.425250pt none; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 11.0pt;'>
						<span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 74px; height: 8px; border-left: #000000 0.425250pt none; border-right: #000000 0.425250pt none; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 11.0pt;'>
						<span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td colspan="2" valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 99px; height: 8px; border-left: #000000 0.425250pt none; border-right: #000000 0.425250pt none; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 11.0pt;'>
						<span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 74px; height: 8px; border-left: #000000 0.425250pt none; border-right: #000000 0.425250pt none; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 11.0pt;'>
						<span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 99px; height: 8px; border-left: #000000 0.425250pt none; border-right: #000000 0.425250pt none; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 11.0pt;'>
						<span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
			</tr>
			<tr>
				<td colspan="13" valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 700px; height: 57px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 18.0pt;'>
						<span
							style='position: relative; font-size: 15.0pt; font-family: "바탕체"; font-weight: bold'>납
							부 확 인 서</span><span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
			</tr>
			<input type="hidden" value="${tuitionVO.tlNo }">
			<tr>
				<td colspan="3" valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 233px; height: 40px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 12.0pt;'>
						<span
							style='position: relative; font-size: 9.0pt; font-family: "바탕체"'>납부
							가상 계좌번호(${sessionScope.userInfo.studentVO.stuBank })</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td colspan="10" valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 466px; height: 40px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 12.0pt;'>
						<span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">110-510-659970&nbsp;</span>
					</p>
				</td>
			</tr>
			<tr>
				<td colspan="2" valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 117px; height: 40px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 12.0pt;'>
						<span
							style='position: relative; font-size: 9.0pt; font-family: "바탕체"'>등록학기</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td colspan="5" valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 233px; height: 40px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 12.0pt;'>
						<span
							style='position: relative; font-size: 9.0pt; font-family: "바탕체"'>${tuitionVO.tlYear }학년도
							${tuitionVO.tlSemester }학기</span><span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td colspan="3" valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 117px; height: 40px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 12.0pt;'>
						<span
							style='position: relative; font-size: 9.0pt; font-family: "바탕체"'>입금일자</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td colspan="3" valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 232px; height: 40px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 12.0pt;'>
						<span
							style='position: relative; font-size: 9.0pt; font-family: "바탕체"'>${tuitionVO.tlDueDate }</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
			</tr>
			<tr>
				<td colspan="2" valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 117px; height: 40px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 12.0pt;'>
						<span
							style='position: relative; font-size: 9.0pt; font-family: "바탕체"'>납부내역</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td colspan="5" valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 233px; height: 40px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 12.0pt;'>
						<span
							style='position: relative; font-size: 9.0pt; font-family: "바탕체"'>납부금액</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td colspan="3" valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 117px; height: 40px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 12.0pt;'>
						<span
							style='position: relative; font-size: 9.0pt; font-family: "바탕체"'>감면내역</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td colspan="3" valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 232px; height: 40px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 12.0pt;'>
						<span
							style='position: relative; font-size: 9.0pt; font-family: "바탕체"'>감면금액</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
			</tr>
			<tr>
				<td colspan="2" valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 117px; height: 40px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 12.0pt;'>
						<span
							style='position: relative; font-size: 9.0pt; font-family: "바탕체"'>입학금</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td colspan="5" valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 233px; height: 40px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 12.0pt;'>
						<span
							style='position: relative; font-size: 9.0pt; font-family: "바탕체"'>0</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td colspan="3" valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 117px; height: 40px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 12.0pt;'>
						<span
							style='position: relative; font-size: 9.0pt; font-family: "바탕체"'>휴학대체</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td colspan="3" valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 232px; height: 40px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 12.0pt;'>
						<span
							style='position: relative; font-size: 9.0pt; font-family: "바탕체"'>0</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
			</tr>
			<tr>
				<td colspan="2" valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 117px; height: 40px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 12.0pt;'>
						<span
							style='position: relative; font-size: 9.0pt; font-family: "바탕체"'>수업료</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td colspan="5" valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 233px; height: 40px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 12.0pt;'>
						<span
							style='position: relative; font-size: 9.0pt; font-family: "바탕체"'><fmt:formatNumber
								type="number" maxFractionDigits="3"
								value="${tuitionVO.tlTuition }" /></span><span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td colspan="3" valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 117px; height: 40px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 9.0pt;'>
						<span
							style='position: relative; font-size: 9.0pt; font-family: "바탕체"'>장학금액</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td colspan="3" valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 232px; height: 40px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 12.0pt;'>
						<span
							style='position: relative; font-size: 9.0pt; font-family: "바탕체"'><fmt:formatNumber
								type="number" maxFractionDigits="3"
								value="${tuitionVO.tlSchlr }" /></span><span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
			</tr>
			<tr>
				<td colspan="2" valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 117px; height: 40px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 12.0pt;'>
						<span
							style='position: relative; font-size: 9.0pt; font-family: "바탕체"'>납입총액</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td colspan="5" valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 233px; height: 40px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 12.0pt;'>
						<span
							style='position: relative; font-size: 9.0pt; font-family: "바탕체"'><fmt:formatNumber
								type="number" maxFractionDigits="3"
								value="${tuitionVO.tlPayment }" /></span><span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td colspan="3" valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 117px; height: 40px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 13.0pt;'>
						<span
							style='position: relative; font-size: 9.0pt; font-family: "바탕체"'>환불금액</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td colspan="3" valign="middle" bgcolor="#ffffff"
					style='overflow: hidden; width: 232px; height: 40px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 13.0pt;'>
						<span style='position: relative; font-family: "바탕체"'>0</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
			</tr>
			<tr>
				<td colspan="5" valign="middle" bgcolor="#efefef"
					style='overflow: hidden; width: 252px; height: 40px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 14.0pt;'>
						<span
							style='position: relative; font-size: 11.0pt; font-family: "바탕체"; font-weight: bold'>실납부금액</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td colspan="8" valign="middle" bgcolor="#efefef"
					style='overflow: hidden; width: 448px; height: 40px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 14.0pt;'>
						<span
							style='position: relative; font-size: 11.0pt; font-family: "바탕체"; font-weight: bold'><fmt:formatNumber
								type="number" maxFractionDigits="3"
								value="${tuitionVO.tlPayment }" /></span><span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
			</tr>
			<tr>
				<td colspan="13" valign="middle"
					style='overflow: hidden; width: 700px; height: 62px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt none; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 12.0pt;'>
						<span
							style='position: relative; font-size: 9.0pt; font-family: "바탕체"'>위와
							같이 등록금을 납부하여 등록되었음을 확인합니다.</span><span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
			</tr>
			<tr>
				<td colspan="13" valign="middle"
					style='overflow: hidden; width: 700px; height: 34px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt none; border-bottom: #000000 0.425250pt none; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 12.0pt;'>
						<span
							style='position: relative; font-size: 9.0pt; font-family: "바탕체"'>2023년
							05월 12일</span><span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
			</tr>
			<tr>
				<td colspan="13" valign="middle"
					style='overflow: hidden; width: 700px; height: 55px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt none; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0
						style='margin-left: 2.0pt; margin-right: 2.0pt; text-align: center; line-height: 16.0pt;'>
						<span
							style='position: relative; font-size: 13.0pt; font-family: "바탕체"; font-weight: bold'>대
							원 대 학 교&nbsp;&nbsp; 세입징수자</span><span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
			</tr>
		</table>
		<p class=HStyle0>
			<span class="hnc_page_break"
				style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
		</p>
	</div>

<!-- 	<button type="button" onclick="saveImage()">PDF Download</button> -->

</body>

<script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
<script type="text/javascript"
	src="http://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>

<script type="text/javascript">
	function saveImage() {
		const element = document.getElementById("pdfArea");
		const options = {
			allowsTaint : true, //cross-origin allow
			useCORS : true, //CORS 사용한 서버로부터 이미지 로드할 것인지 여부
			scale : 2, //기본 해상도 2배
			//이 부분 이용해서 화면 캡쳐할 크기 지정
			width : 1000,
			height : 800
		};

		html2canvas(element, options).then(
				function(canvas) {

					const pdf = new jsPDF("p", "mm", "a4"); //'p'는 포트레이트, 'mm'은 밀리미터 단위, 'a4'는 용지 크기를 의미
					//만약 다른 용지 크기를 사용하려면, 위 코드에서 'a4'를 원하는 용지 크기로 변경하면 됨

					let imgWidth = 210; //이미지 가로길이(mm)
					let pageHeight = 295; // 출력페이지 세로길이 
					let imgHeight = canvas.height * imgWidth / canvas.width;
					let heightLeft = imgHeight;

					// 이미지의 x,y축 위치 옮기기
					let xposition = 20;
					let yposition = 10;
					//addImage(imageData, format, x, y, width, height, alias, compression, rotation) 
					pdf.addImage(canvas, 'JPEG', xposition, yposition,
							imgWidth, imgHeight);
					heightLeft -= pageHeight;

					//이미지가 페이지보다 길어질 경우 잘리지 않도록 while문 사용 
					while (heightLeft >= 0) {
						position = heightLeft - imgHeight;
						pdf.addPage();
						pdf.addImage(canvas, 'JPEG', xposition, yposition,
								imgWidth, imgHeight);
						heightLeft -= pageHeight;
					}
					//아래 이름으로PDF 파일을 다운로드한다.
					pdf.save("납부확인서.pdf");
				});
	}
</script>
</html>
