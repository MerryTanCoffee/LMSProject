<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:formatDate var="now" value="<%=new Date()%>"
	pattern="yyyy년 MM월 dd일" />
<html lang="en">
<head>
<meta name="Generator" content="Hancom HWP 12.0.0.3037">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>성적증명서</title>
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
	font-family: 한양신명조;
	letter-spacing: 0;
	font-weight: normal;
	font-style: normal;
	color: #000000;
}

.HStyle1 {
	style-name: "본문";
	margin-left: 17.5pt;
	margin-right: 17.5pt;
	margin-top: 4.2pt;
	margin-bottom: 4.2pt;
	text-align: justify;
	text-indent: 0.0pt;
	line-height: 165%;
	font-size: 10.0pt;
	font-family: 한양신명조;
	letter-spacing: -5%;
	font-weight: normal;
	font-style: normal;
	color: #000000;
}

.HStyle2 {
	style-name: "개요 1";
	margin-left: 7.4pt;
	margin-top: 0.0pt;
	margin-bottom: 0.0pt;
	text-align: justify;
	text-indent: -7.4pt;
	line-height: 160%;
	font-size: 10.0pt;
	font-family: 한양신명조;
	letter-spacing: 0;
	font-weight: normal;
	font-style: normal;
	color: #000000;
}

.HStyle3 {
	style-name: "개요 2";
	margin-left: 17.4pt;
	margin-top: 0.0pt;
	margin-bottom: 0.0pt;
	text-align: justify;
	text-indent: -7.4pt;
	line-height: 160%;
	font-size: 10.0pt;
	font-family: 한양신명조;
	letter-spacing: 0;
	font-weight: normal;
	font-style: normal;
	color: #000000;
}

.HStyle4 {
	style-name: "개요 3";
	margin-left: 27.4pt;
	margin-top: 0.0pt;
	margin-bottom: 0.0pt;
	text-align: justify;
	text-indent: -7.4pt;
	line-height: 160%;
	font-size: 10.0pt;
	font-family: 한양신명조;
	letter-spacing: 0;
	font-weight: normal;
	font-style: normal;
	color: #000000;
}

.HStyle5 {
	style-name: "개요 4";
	margin-left: 37.4pt;
	margin-top: 0.0pt;
	margin-bottom: 0.0pt;
	text-align: justify;
	text-indent: -7.4pt;
	line-height: 160%;
	font-size: 10.0pt;
	font-family: 한양신명조;
	letter-spacing: 0;
	font-weight: normal;
	font-style: normal;
	color: #000000;
}

.HStyle6 {
	style-name: "개요 5";
	margin-left: 47.4pt;
	margin-top: 0.0pt;
	margin-bottom: 0.0pt;
	text-align: justify;
	text-indent: -7.4pt;
	line-height: 160%;
	font-size: 10.0pt;
	font-family: 한양신명조;
	letter-spacing: 0;
	font-weight: normal;
	font-style: normal;
	color: #000000;
}

.HStyle7 {
	style-name: "개요 6";
	margin-left: 57.4pt;
	margin-top: 0.0pt;
	margin-bottom: 0.0pt;
	text-align: justify;
	text-indent: -7.4pt;
	line-height: 160%;
	font-size: 10.0pt;
	font-family: 한양신명조;
	letter-spacing: 0;
	font-weight: normal;
	font-style: normal;
	color: #000000;
}

.HStyle8 {
	style-name: "개요 7";
	margin-left: 67.4pt;
	margin-top: 0.0pt;
	margin-bottom: 0.0pt;
	text-align: justify;
	text-indent: -7.4pt;
	line-height: 160%;
	font-size: 10.0pt;
	font-family: 한양신명조;
	letter-spacing: 0;
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
	font-family: 한양견고딕;
	letter-spacing: 0;
	font-weight: normal;
	font-style: normal;
	color: #000000;
}

.HStyle10 {
	style-name: "머리말";
	margin-right: 10.0pt;
	margin-top: 3.6pt;
	margin-bottom: 0.0pt;
	text-align: right;
	text-indent: 0.0pt;
	line-height: 150%;
	font-size: 9.0pt;
	font-family: 한양중고딕;
	letter-spacing: 0;
	font-weight: normal;
	font-style: normal;
	color: #000000;
}

.HStyle11 {
	style-name: "각주";
	margin-left: 13.2pt;
	margin-top: 0.0pt;
	margin-bottom: 0.0pt;
	text-align: justify;
	text-indent: -13.2pt;
	line-height: 130%;
	font-size: 9.5pt;
	font-family: 한양신명조;
	letter-spacing: 0;
	font-weight: normal;
	font-style: normal;
	color: #000000;
}

.HStyle12 {
	style-name: "그림캡션";
	margin-top: 0.0pt;
	margin-bottom: 0.0pt;
	text-align: justify;
	text-indent: 0.0pt;
	line-height: 160%;
	font-size: 9.0pt;
	font-family: 한양중고딕;
	letter-spacing: 0;
	font-weight: normal;
	font-style: normal;
	color: #000000;
}

.HStyle13 {
	style-name: "표캡션";
	margin-top: 0.0pt;
	margin-bottom: 0.0pt;
	text-align: justify;
	text-indent: 0.0pt;
	line-height: 160%;
	font-size: 9.0pt;
	font-family: 한양중고딕;
	letter-spacing: 0;
	font-weight: normal;
	font-style: normal;
	color: #000000;
}

.HStyle14 {
	style-name: "수식캡션";
	margin-top: 0.0pt;
	margin-bottom: 0.0pt;
	text-align: justify;
	text-indent: 0.0pt;
	line-height: 160%;
	font-size: 9.0pt;
	font-family: 한양중고딕;
	letter-spacing: 0;
	font-weight: normal;
	font-style: normal;
	color: #000000;
}

.HStyle15 {
	style-name: "찾아보기";
	margin-top: 0.0pt;
	margin-bottom: 0.0pt;
	text-align: justify;
	text-indent: 0.0pt;
	line-height: 160%;
	font-size: 9.0pt;
	font-family: 한양신명조;
	letter-spacing: 0;
	font-weight: normal;
	font-style: normal;
	color: #000000;
}

.HStyle16 {
	style-name: "예스폼";
	margin-top: 0.0pt;
	margin-bottom: 0.0pt;
	text-align: justify;
	text-indent: 0.0pt;
	line-height: 160%;
	font-size: 9.0pt;
	font-family: 맑은 고딕;
	letter-spacing: 0;
	font-weight: normal;
	font-style: normal;
	color: #000000;
}

.HStyle17 {
	style-name: "별첨";
	margin-left: 10.0pt;
	margin-top: 0.0pt;
	margin-bottom: 0.0pt;
	text-align: justify;
	text-indent: 0.0pt;
	line-height: 17.0pt;
	font-size: 9.2pt;
	font-family: 한양신명조;
	letter-spacing: -3%;
	font-weight: normal;
	font-style: normal;
	color: #000000;
}

.HStyle18 {
	style-name: "표 내용(그래픽)";
	margin-top: 0.0pt;
	margin-bottom: 0.0pt;
	text-align: justify;
	text-indent: 0.0pt;
	line-height: 160%;
	font-size: 10.0pt;
	font-family: 한양그래픽;
	letter-spacing: -5%;
	font-weight: normal;
	font-style: normal;
	color: #000000;
}

.HStyle19 {
	style-name: "문화돋움16급";
	margin-left: 20.0pt;
	margin-top: 0.0pt;
	margin-bottom: 8.5pt;
	text-align: center;
	text-indent: 0.0pt;
	line-height: 17.0pt;
	font-size: 11.3pt;
	font-family: 문화돋움;
	letter-spacing: -3%;
	font-weight: normal;
	font-style: normal;
	color: #000000;
}

.HStyle20 {
	style-name: "머리말(신명조9)";
	margin-top: 0.0pt;
	margin-bottom: 0.0pt;
	text-align: justify;
	text-indent: 0.0pt;
	line-height: 150%;
	font-size: 9.0pt;
	font-family: 한양신명조;
	letter-spacing: 0;
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
	<div id="pdfArea">
		<p class=HStyle0>
		<table cellspacing="0" cellpadding="0"
			style='border-collapse: collapse; border: none; table-layout: fixed;'>
			<tr>
				<td valign="middle"
					style='overflow: hidden; width: 707px; height: 46px; border-left: #000000 0.425250pt none; border-right: #000000 0.708750pt none; border-top: #000000 0.425250pt none; border-bottom: #000000 0.708750pt none; padding: 1.4pt 1.4pt 1.4pt 1.4pt'>
					<p class=HStyle1 style='text-align: center;'>
						<a target="_self"> <span
							style='position: relative; font-size: 20.0pt; font-family: "굴림"; letter-spacing: -0.050000em; font-weight: bold; text-decoration: none; color: #000000; line-height: 165%'>성
								적 증 명 서</span></a> <span
							style='position: relative; font-size: 20.0pt; font-family: "굴림"; letter-spacing: -0.050000em; font-weight: bold; line-height: 165%'>
							<span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
						</span>
					</p>
				</td>
			</tr>

		</table>
		</p>
		<p class=HStyle0>
			<span class="hnc_page_break"
				style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
		</p>

		<p class=HStyle0>
		<div style="float: left">
			<a name="예스폼"></a>
		</div>
		<table cellspacing="0" cellpadding="0"
			style='border-collapse: collapse; border: none; table-layout: fixed;'>
			<tr>
				<td valign="middle"
					style='overflow: hidden; width: 147px; height: 17px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0 style='text-align: center;'>
						<span style='position: relative'>학번(주민등록번호)</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td valign="middle"
					style='overflow: hidden; width: 185px; height: 17px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0>
						<span style='position: relative'>${sessionScope.userInfo.studentVO.stuId }(${sessionScope.userInfo.studentVO.stuReg1 }-${sessionScope.userInfo.studentVO.stuReg2 })</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td valign="middle"
					style='overflow: hidden; width: 144px; height: 17px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0 style='text-align: center;'>
						<span style='position: relative'>성&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							명</span><span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td valign="middle"
					style='overflow: hidden; width: 233px; height: 17px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0>
						<span style='position: relative'>${sessionScope.userInfo.studentVO.stuNameKo }</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
			</tr>
			<tr>
				<td valign="middle"
					style='overflow: hidden; width: 147px; height: 17px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0 style='text-align: center;'>
						<span style='position: relative'>전&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							공</span><span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td valign="middle"
					style='overflow: hidden; width: 185px; height: 17px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0>
						<span style='position: relative'>${sessionScope.userInfo.studentVO.academicVO.acaMajor }</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td valign="middle"
					style='overflow: hidden; width: 144px; height: 17px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0 style='text-align: center;'>
						<span style='position: relative'>학&nbsp;&nbsp;
							위&nbsp;&nbsp; 종&nbsp;&nbsp; 류</span><span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td valign="middle"
					style='overflow: hidden; width: 233px; height: 17px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0>
						<span style='position: relative'>${sessionScope.userInfo.studentVO.academicVO.acaMajor }사</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
			</tr>
		</table>
		</p>
		<p class=HStyle0>
			<span class="hnc_page_break"
				style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
		</p>

		<p class=HStyle0>
		<table cellspacing="0" cellpadding="0"
			style='border-collapse: collapse; border: none; table-layout: fixed;'>
			<tr>
				<td rowspan="10" valign="middle"
					style='overflow: hidden; width: 234px; height: 573px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0>
						<span
							style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%'>*******[&nbsp;
							전공필수&nbsp; 학습과목&nbsp; 이수&nbsp; ]*******</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
					<table border=0
						style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%; text-align: center;'>
						<thead>
							<tr>
								<td>구분</td>
								<td>&nbsp;학습과목명</td>
								<td>&nbsp;성적</td>
								<td>&nbsp;학점</td>
								<td>&nbsp;이수학기</td>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${sListJP}" var="studentScore">
							<c:set var="grade" value="${studentScore.grade}"/>
								<tr>
									<td>${fn:substring(studentScore.subSort, 0, 1)}${fn:substring(studentScore.subType, 0, 1)}</td>
									<td>&nbsp;${studentScore.subName}</td>
									<td>
										<c:choose>
							                <c:when test="${grade == 4.5}">A+</c:when>
							                <c:when test="${grade == 4.0}">A</c:when>
							                <c:when test="${grade == 3.5}">B+</c:when>
							                <c:when test="${grade == 3.0}">B</c:when>
							                <c:when test="${grade == 2.5}">C+</c:when>
							                <c:when test="${grade == 2.0}">C</c:when>
							                <c:when test="${grade == 1.5}">D</c:when>
						                	<c:otherwise>F</c:otherwise>
						            	</c:choose>
						            </td>
									<td>&nbsp;${studentScore.subCredit}</td>
									<td>&nbsp;&nbsp;${studentScore.lecOpenYear}-${studentScore.lecOpenSemester}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table> <!-- <p class=HStyle0>
					<span
							style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%'>일선&nbsp;
						아동수 · 과학지도 81&nbsp;&nbsp; 3&nbsp;&nbsp;&nbsp; 2013-06</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
				</p> --> <br>
					<p class=HStyle0>
						<span
							style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%'>교육훈련기관:
							대원대학교(글로벌)</span><span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
					<p class=HStyle0>
						<span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
					<p class=HStyle0>
						<span
							style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%'>*******[&nbsp;
							전공선택&nbsp; 학습과목&nbsp; 이수&nbsp; ]*******</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
					<table border=0
						style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%; text-align: center;'>
						<thead>
							<tr>
								<td>구분</td>
								<td>&nbsp;학습과목명</td>
								<td>&nbsp;성적</td>
								<td>&nbsp;학점</td>
								<td>&nbsp;이수학기</td>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${sListJS}" var="studentScore">
							<c:set var="grade" value="${studentScore.grade}"/>
								<tr>
									<td>${fn:substring(studentScore.subSort, 0, 1)}${fn:substring(studentScore.subType, 0, 1)}</td>
									<td>&nbsp;${studentScore.subName}</td>
									<td>
										<c:choose>
							                <c:when test="${grade == 4.5}">A+</c:when>
							                <c:when test="${grade == 4.0}">A</c:when>
							                <c:when test="${grade == 3.5}">B+</c:when>
							                <c:when test="${grade == 3.0}">B</c:when>
							                <c:when test="${grade == 2.5}">C+</c:when>
							                <c:when test="${grade == 2.0}">C</c:when>
							                <c:when test="${grade == 1.5}">D</c:when>
						                	<c:otherwise>F</c:otherwise>
						            	</c:choose>
						            </td>
									<td>&nbsp;${studentScore.subCredit}</td>
									<td>&nbsp;&nbsp;${studentScore.lecOpenYear}-${studentScore.lecOpenSemester}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table> <!-- <p class=HStyle0>
					<span
							style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%'>일선&nbsp;
						아동수 · 과학지도 81&nbsp;&nbsp; 3&nbsp;&nbsp;&nbsp; 2013-06</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
				</p> --> <br>
					<p class=HStyle0>
						<span
							style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%'>교육훈련기관:
							대원대학교(글로벌)</span><span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td rowspan="10" valign="middle"
					style='overflow: hidden; width: 230px; height: 573px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0>
						<span
							style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%'>*******[&nbsp;
							교양필수&nbsp;&nbsp; 학습과목&nbsp; 이수&nbsp; ]*******</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
					<table border=0
						style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%; text-align: center;'>
						<thead>
							<tr>
								<td>구분</td>
								<td>&nbsp;&nbsp;&nbsp;학습과목명</td>
								<td>&nbsp;&nbsp;성적</td>
								<td>&nbsp;&nbsp;학점</td>
								<td>&nbsp;&nbsp;이수학기</td>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${sListGP}" var="studentScore">
							<c:set var="grade" value="${studentScore.grade}"/>
								<tr>
									<td>${fn:substring(studentScore.subSort, 0, 1)}${fn:substring(studentScore.subType, 0, 1)}</td>
									<td>&nbsp;&nbsp;&nbsp;${studentScore.subName}</td>
									<td>
										<c:choose>
							                <c:when test="${grade == 4.5}">A+</c:when>
							                <c:when test="${grade == 4.0}">A</c:when>
							                <c:when test="${grade == 3.5}">B+</c:when>
							                <c:when test="${grade == 3.0}">B</c:when>
							                <c:when test="${grade == 2.5}">C+</c:when>
							                <c:when test="${grade == 2.0}">C</c:when>
							                <c:when test="${grade == 1.5}">D</c:when>
						                	<c:otherwise>F</c:otherwise>
						            	</c:choose>
						            </td>
									<td>&nbsp;&nbsp;${studentScore.subCredit}</td>
									<td>&nbsp;&nbsp;${studentScore.lecOpenYear}-${studentScore.lecOpenSemester}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table> <br>
					<p class=HStyle0>
						<span
							style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%'>&nbsp;이수기관
							: 대원대학교(서울캠퍼스)</span><span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>

					<p class=HStyle0>
						<span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
					<p class=HStyle0>
						<span
							style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%'>*******[&nbsp;
							교양선택&nbsp;&nbsp; 학습과목&nbsp; 이수&nbsp; ]*******</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
					<table border=0
						style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%; text-align: center;'>
						<thead>
							<tr>
								<td>구분</td>
								<td>&nbsp;&nbsp;&nbsp;학습과목명</td>
								<td>&nbsp;&nbsp;성적</td>
								<td>&nbsp;&nbsp;학점</td>
								<td>&nbsp;&nbsp;이수학기</td>
								
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${sListGS}" var="studentScore">
							<c:set var="grade" value="${studentScore.grade}"/>
								<tr>
									<td>${fn:substring(studentScore.subSort, 0, 1)}${fn:substring(studentScore.subType, 0, 1)}</td>
									<td>&nbsp;&nbsp;&nbsp;${studentScore.subName}</td>
									<td>
										<c:choose>
							                <c:when test="${grade == 4.5}">A+</c:when>
							                <c:when test="${grade == 4.0}">A</c:when>
							                <c:when test="${grade == 3.5}">B+</c:when>
							                <c:when test="${grade == 3.0}">B</c:when>
							                <c:when test="${grade == 2.5}">C+</c:when>
							                <c:when test="${grade == 2.0}">C</c:when>
							                <c:when test="${grade == 1.5}">D</c:when>
						                	<c:otherwise>F</c:otherwise>
						            	</c:choose>
						            </td>
									<td>&nbsp;&nbsp;${studentScore.subCredit}</td>
									<td>&nbsp;&nbsp;${studentScore.lecOpenYear}-${studentScore.lecOpenSemester}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table> <br>
					<p class=HStyle0>
						<span
							style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%'>&nbsp;이수기관
							: 대원대학교(서울캠퍼스)</span><span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>


				</td>
				<td colspan="5" valign="middle"
					style='overflow: hidden; width: 245px; height: 224px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<!-- <p class=HStyle0>
					<span
							style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%'>******[&nbsp;
						중요무형문화재 학습과목 이수 ]******</span><span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
				</p>
				<p class=HStyle0>
					<span
							style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%'>구분&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						종목명&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 학점&nbsp; 이수년월</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
				</p> -->
					<p class=HStyle0>
						<span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>

					<p class=HStyle0>
						<span
							style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%'>&nbsp;**************&nbsp;
							이&nbsp; 하&nbsp; 여&nbsp; 백&nbsp; **************</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
					<p class=HStyle0>
						<span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
					<p class=HStyle0>
						<span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
					<p class=HStyle0>
						<span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
					<p class=HStyle0>
						<span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
					<p class=HStyle0>
						<span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
					<p class=HStyle0>
						<span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
			</tr>
			<tr>
				<td colspan="5" valign="middle"
					style='overflow: hidden; width: 245px; height: 21px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0 style='text-align: center;'>
						<span
							style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%'>인정학점</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
			</tr>
			<tr>
				<td valign="middle"
					style='overflow: hidden; width: 65px; height: 21px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0 style='text-align: center;'>
						<span
							style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%'>전공필수</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td valign="middle"
					style='overflow: hidden; width: 68px; height: 21px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0 style='text-align: center;'>
						<span
							style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%'>전공선택</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td colspan="2" valign="middle"
					style='overflow: hidden; width: 56px; height: 21px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0 style='text-align: center;'>
						<span
							style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%'>교양필수</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td valign="middle"
					style='overflow: hidden; width: 57px; height: 21px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0 style='text-align: center;'>
						<span
							style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%'>교양선택</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
			</tr>
			<tr>
				<td valign="middle"
					style='overflow: hidden; width: 65px; height: 21px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0 style='text-align: center;'>
						<span
							style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%'>
							<c:set var="totalCredits" value="0" /> 
							<c:forEach
								items="${sListJP}" var="studentScore">
								<c:set var="totalCredits"
									value="${totalCredits + studentScore.subCredit}" />
							</c:forEach> <!-- 전공필수의 학점 총합 출력 -->
							${totalCredits}
						</span><span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td valign="middle"
					style='overflow: hidden; width: 68px; height: 21px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0 style='text-align: center;'>
						<span
							style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%'>
							<c:set var="totalCredits" value="0" /> 
							<c:forEach
								items="${sListJS}" var="studentScore">
								<c:set var="totalCredits"
									value="${totalCredits + studentScore.subCredit}" />
							</c:forEach> <!-- 전공선택의 학점 총합 출력 -->
							${totalCredits}
						</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td colspan="2" valign="middle"
					style='overflow: hidden; width: 56px; height: 21px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0 style='text-align: center;'>
						<span
							style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%'>
							<c:set var="totalCredits" value="0" /> 
							<c:forEach items="${sListGP}" var="studentScore">
								<c:set var="totalCredits" value="${totalCredits + studentScore.subCredit}" />
							</c:forEach> <!-- 교양필수의 학점 총합 출력 -->
							${totalCredits}
						</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td valign="middle"
					style='overflow: hidden; width: 57px; height: 21px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0 style='text-align: center;'>
						<span
							style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%'>
							<c:set var="totalCredits" value="0" /> 
							<c:forEach items="${sListGS}" var="studentScore">
								<c:set var="totalCredits" value="${totalCredits + studentScore.subCredit}" />
							</c:forEach> <!-- 교양필수의 학점 총합 출력 -->
							${totalCredits}	
						</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
			</tr>
			<tr>
				<td colspan="2" valign="middle"
					style='overflow: hidden; width: 133px; height: 38px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0 style='text-align: center;'>
						<span
							style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%'>인정학점총계</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td colspan="3" valign="middle"
					style='overflow: hidden; width: 112px; height: 38px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0 style='text-align: center;'>
						<span
							style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%'>
							<c:set var="totalCreditsJP" value="0" /> 
							<c:forEach items="${sListJP}" var="studentScore">
								<c:set var="totalCreditsJP" value="${totalCreditsJP + studentScore.subCredit}" />
							</c:forEach>
							<c:set var="totalCreditsJS" value="0" /> 
							<c:forEach items="${sListJS}" var="studentScore">
								<c:set var="totalCreditsJS" value="${totalCreditsJS + studentScore.subCredit}" />
							</c:forEach>
							<c:set var="totalCreditsGP" value="0" /> 
							<c:forEach items="${sListGP}" var="studentScore">
								<c:set var="totalCreditsGP" value="${totalCreditsGP + studentScore.subCredit}" />
							</c:forEach>
							<c:set var="totalCreditsGS" value="0" /> 
							<c:forEach items="${sListGS}" var="studentScore">
								<c:set var="totalCreditsGS" value="${totalCreditsGS + studentScore.subCredit}" />
							</c:forEach>
							${totalCreditsJP+totalCreditsJS+totalCreditsGP+totalCreditsGS}
							
							</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
			</tr>
			<tr>
				<td colspan="2" valign="middle"
					style='overflow: hidden; width: 133px; height: 21px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0 style='text-align: center;'>
						<span
							style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%'>평점환산</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td colspan="3" valign="middle"
					style='overflow: hidden; width: 112px; height: 21px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0 style='text-align: center;'>
						<span
							style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%'>
							<c:set var="totalGrade" value="0" /> 
							<c:set var="numCourses" value="0" />
							<c:forEach items="${sList}" var="studentScore">
							    <c:set var="totalGrade" value="${totalGrade + studentScore.grade}" />
							    <c:set var="numCourses" value="${numCourses + 1}" />
							</c:forEach>
							${totalGrade / numCourses*(100/4.5)}
							/100.0</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
			</tr>
			<tr>
				<td colspan="2" valign="middle"
					style='overflow: hidden; width: 133px; height: 21px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0 style='text-align: center;'>
						<span
							style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%'>평점평균</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td colspan="3" valign="middle"
					style='overflow: hidden; width: 112px; height: 21px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0 style='text-align: center;'>
						<span
							style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%'>
							<c:set var="totalGrade" value="0" /> 
							<c:set var="numCourses" value="0" />
							<c:forEach items="${sList}" var="studentScore">
							    <c:set var="totalGrade" value="${totalGrade + studentScore.grade}" />
							    <c:set var="numCourses" value="${numCourses + 1}" />
							</c:forEach>
							${totalGrade / numCourses} 
							/4.5</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
			</tr>
			<tr>
				<td colspan="5" valign="middle"
					style='overflow: hidden; width: 245px; height: 124px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0>
						<span
							style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%'>학점인정
							등에 관한 법률 시행규칙 제 12조의 규정에 의하여 상기인의 학습과목별 성적을 위와 같이 증명함.</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
					<p class=HStyle0 style='text-align: center;'>
						<span
							style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%'>
						${now }
						</span><span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
					<p class=HStyle0>
						<span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
					<p class=HStyle0>
						<span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
			</tr>
			<tr>
				<td rowspan="2" colspan="3" valign="middle"
					style='overflow: hidden; width: 174px; height: 83px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #ffffff 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0 style='text-align: center;'>
						<span
							style='position: relative; font-size: 12.0pt; font-family: "맑은 고딕"; line-height: 160%'>대원대학교총장</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
					<p class=HStyle0 style='text-align: center;'>
						<span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
					<p class=HStyle0 style='text-align: center;'>
						<span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
					<p class=HStyle0 style='text-align: center;'>
						<span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
				<td colspan="2" valign="middle"
					style='overflow: hidden; width: 71px; height: 17px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0 style='text-align: center;'>
						<span
							style='position: relative; font-size: 8.0pt; font-family: "맑은 고딕"; line-height: 160%'>담당자</span><span
							class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;</span>
					</p>
				</td>
			</tr>
			<tr>
				<td colspan="2" valign="middle"
					style='overflow: hidden; width: 71px; height: 66px; border-left: #000000 0.425250pt solid; border-right: #000000 0.425250pt solid; border-top: #000000 0.425250pt solid; border-bottom: #000000 0.425250pt solid; padding: 1.4pt 5.1pt 1.4pt 5.1pt'>
					<p class=HStyle0 style='text-align: center;'>
						<span class="hnc_page_break"
							style="display: relative; word-spacing: -0.5em;">&nbsp;<img
							src="${pageContext.request.contextPath}/resources/images/dojang.png"
							alt="#" style="width: 100px; height: 100px;"></span>
					</p>
				</td>
			</tr>
		</table>
		</p>
		<p class=HStyle0>
			<span class="hnc_page_break"
				style="display: relative; word-spacing: -0.5em;"></span>
		</p>
	</div>
	<button type="button" class="btn btn-outline-primary btn-md" onclick="saveImage()">성적증명서 다운로드</button>

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
			width : 900,
			height : 1000
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
					pdf.save("성적증명서.pdf");
				});
	}
</script>

</html>
