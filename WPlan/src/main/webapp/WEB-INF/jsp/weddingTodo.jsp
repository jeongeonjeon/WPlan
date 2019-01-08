<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>more</title>
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/css/member.css">
<jsp:include page="/WEB-INF/jsp/include/head.jsp" />

<style type="text/css">
.container.section-2 {
	padding: 0;
	
}
</style>

<script>

	$(document).ready(function() {

		$('.submitBtn').on('click', function() {
			$.ajax({
				url : "${pageContext.request.contextPath}/weddingTodo",
				type : "PUT",
				data : $('#guideForm').serialize()
			
			});
		});
	});
</script>
</head>

<body>
	<div id="wrapper">
		<jsp:include page="/WEB-INF/jsp/login/loginForm.jsp" />
		<header class="header bg">
			<jsp:include page="/WEB-INF/jsp/include/topLogo.jsp" />
		</header>
		<nav class="navbar navbar-expand-sm sticky-top navbar-dark">
			<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
		</nav>

		<aside class="rAside">
			<div>
				<ul class="rMenu">
					<li class="calendar"><a href="#">캘린더</a></li>
					<li class="rList"><a href="#">예약리스트</a></li>
					<li class="myInfo"><a href="#">내 정보</a></li>
				</ul>
				
			</div>
		</aside>
			<section class="mSection box">
			<div class="container section-2">
				<br>
				<h3>결혼가이드</h3>
				<br>
				<p>TO DO LIST</p>
				<form id="guideForm">
				<div>
					<c:choose>
						<c:when test="${guideVO.premeet eq 'true'}">
							<input type="radio" class="premeet" name="premeet" checked="true" />상견례<br>
						</c:when>
						<c:when test="${guideVO.premeet eq 'false'}">
							<input type="radio" name="premeet"  />상견례<br>
						</c:when>
					</c:choose>
							
					<%-- <c:choose>
						<c:when test="${guideVO.studio eq 'true'}">
							<input type="radio" name="studio" checked="checked" value=""/>스튜디오<br>
						</c:when>
						<c:when test="${guideVO.studio eq 'false'}">
							<input type="radio" name="studio" value="" />스튜디오<br>
						</c:when>
					</c:choose>		
						
					<c:choose>
						<c:when test="${guideVO.dress eq 'true'}">
							<input type="radio" name="dress" checked="checked" value=""/>드레스<br>
						</c:when>
						<c:when test="${guideVO.dress eq 'false'}">
							<input type="radio" name="dress" value="" />드레스<br>
						</c:when>
					</c:choose>
							
					<c:choose>
						<c:when test="${guideVO.tuxedo eq 'true'}">
							<input type="radio" name="tuxedo" checked="checked" value=""/>턱시도<br>
						</c:when>
						<c:when test="${guideVO.tuxedo eq 'false'}">
							<input type="radio" name="tuxedo" value="" />턱시도<br>
						</c:when>
					</c:choose>	
							
					<c:choose>
						<c:when test="${guideVO.makeup eq 'true'}">
							<input type="radio" name="makeup" checked="checked" value=""/>메이크업 예약<br>
						</c:when>
						<c:when test="${guideVO.makeup eq 'false'}">
							<input type="radio" name="makeup" value=""/>메이크업 예약<br>
						</c:when>
					</c:choose>

					<c:choose>
						<c:when test="${guideVO.bouquet eq 'true'}">
							<input type="radio" name="bouquet" checked="checked"/>부케 예약<br>
						</c:when>
						<c:when test="${guideVO.bouquet eq 'false'}">
							<input type="radio" name="bouquet"/>부케 예약<br>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${guideVO.location eq 'true'}">
							<input type="radio" name="location" checked="checked"/>식장 예약<br>
						</c:when>
						<c:when test="${guideVO.location eq 'false'}">
							<input type="radio" name="location"/>식장 예약<br>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${guideVO.deco eq 'true'}">
							<input type="radio" name="deco" checked="checked"/>식장 데코 예약<br>
						</c:when>
						<c:when test="${guideVO.deco eq 'false'}">
							<input type="radio" name="deco"/>식장 데코 예약<br>
						</c:when>
					</c:choose>
								
					<c:choose>
						<c:when test="${guideVO.food eq 'true'}">
							<input type="radio" name="food" checked="checked"/>음식 예약<br>
						</c:when>
						<c:when test="${guideVO.food eq 'false'}">
							<input type="radio" name="food"/>음식 예약<br>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${guideVO.letter eq 'true'}">
							<input type="radio" name="letter" checked="checked"/>청첩장 예약<br>
						</c:when>
						<c:when test="${guideVO.letter eq 'false'}">
							<input type="radio" name="letter"/>청첩장 예약<br>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${guideVO.mc eq 'true'}">
							<input type="radio" name="mc" checked="checked"/>주례, 사회자 예약<br>
						</c:when>
						<c:when test="${guideVO.mc eq 'false'}">
							<input type="radio" name="mc"/>주례, 사회자 예약<br>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${guideVO.present eq 'true'}">
							<input type="radio" name="present" checked="checked"/>예단 예약<br>
						</c:when>
						<c:when test="${guideVO.present eq 'false'}">
							<input type="radio" name="present"/>예단 예약<br>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${guideVO.honeymoon eq 'true'}">
							<input type="radio" name="honeymoon" checked="checked"/>신혼여행 예약<br>
						</c:when>
						<c:when test="${guideVO.honeymoon eq 'false'}">
							<input type="radio" name="honeymoon"/>신혼여행 예약<br>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${guideVO.represent eq 'true'}">
							<input type="radio" name="represent" checked="checked"/>답례품 예약<br>
						</c:when>
						<c:when test="${guideVO.represent eq 'false'}">
							<input type="radio" name="represent"/>답례품 예약<br>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${guideVO.home eq 'true'}">
							<input type="radio" name="home" checked="checked"/>답례품 예약<br>
						</c:when>
						<c:when test="${guideVO.home eq 'false'}">
							<input type="radio" name="home"/>답례품 예약<br>
						</c:when>
					</c:choose>
							 --%>
				</div>
				<button type="button" class="submitBtn">저장</button>
				</form>
				<br>
				
			</div>
		</section>
		<section class="section-7">
			<%@ include file="/WEB-INF/jsp/include/footer.jsp"%>
		</section>
	</div>
	<%@ include file="/WEB-INF/jsp/include/sideSlider.jsp"%>

</body>

</html>
