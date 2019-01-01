<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>more</title>

<jsp:include page="${ pageContext.request.contextPath }/jsp/include/head.jsp" />

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
		<!--Section-1-->

		<div class="container">
			<div>
				<h2>업체등록</h2>
				<form id="form">
					<div>
						이미지 등록<br>
						<div>
							<img id="image_section"
								src="${ pageContext.request.contextPath }/resources/images/hall2.jpg" />
						</div>
					</div>
				<input type="checkbox">소음규제&nbsp;&nbsp;
				<input type="checkbox">주차&nbsp;&nbsp;
				<input type="checkbox">재봉&nbsp;&nbsp;
				<input type="checkbox">피팅사진촬영&nbsp;&nbsp; 
				<input type="checkbox">제공범위&nbsp;&nbsp; 
				<input type="checkbox">사전미팅<br> 
		
				<input type="checkbox">식사&nbsp;&nbsp;
				<input type="checkbox">음향&nbsp;&nbsp; 
				<input type="checkbox">주류&nbsp;&nbsp;
				<input type="checkbox">흡연&nbsp;&nbsp; 
				<input type="checkbox">숙박&nbsp;&nbsp;
				<input type="checkbox">주차 <br> 
			
				<input type="checkbox">발렛&nbsp;&nbsp;
				<input type="checkbox">주차안내&nbsp;&nbsp; 
				<input type="checkbox">버스진입&nbsp;&nbsp;
				<input type="checkbox">WIFI&nbsp;&nbsp; 
				<input type="checkbox">의자/테이블&nbsp;&nbsp;
				<input type="checkbox">웨딩진행인력 <br>
	
	
				<input type="checkbox">판매방식<input type="text"><br>
				<input type="checkbox">피팅시간<input type="text"><br>
				<input type="checkbox">피팅 가능 개수<input type="text"><br>
				<input type="checkbox">제공/대여소품<input type="text"><br>
				<input type="checkbox">타입<input type="text"><br>
				<input type="checkbox">이용시간<input type="text"><br>
				<input type="checkbox">기타<input type="text"><br>
					<br>

					<div class="input_wrap">
						<span class="cell cell1">주소검색</span>
						<div class="cell cell2">
							<input type="button" name="addr_search" value="주소검색" id="input_addr_search"> <input type="hidden" name="start_place_name" id="start_place_name" class="input_place_name">
						</div>
					</div>
				</form>

					<br> <input type="button" value="등록">&nbsp;&nbsp; <input
						type="button" value="취소">
			</div>
		</div>
		

		<section class="section-7">
			<!-- Footer -->
			<footer class="page-footer font-small stylish-color-dark">
				<%@ include file="/WEB-INF/jsp/include/footer.jsp"%>
			</footer>
			<!-- Footer -->
		</section>
	</div>
	<%@ include file="/WEB-INF/jsp/include/sideSlider.jsp"%>
</body>
</html>
