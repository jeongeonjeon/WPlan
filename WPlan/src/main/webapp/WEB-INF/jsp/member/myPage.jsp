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
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/css/member.css">
<jsp:include page="/WEB-INF/jsp/include/head.jsp" />

<style type="text/css">
	.container.section-2{
		padding:0;.
	}
	
</style>
</head>

<body>
	<div id="wrapper">
		<c:import url="/login" />
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
				`
			</div>
		</aside>
		<div class="container section-2">
			<section class="mSection box">
				<br>
				<h4>내 정보</h4>
				<br>
				<div class="myInfoName">
					<span class="title">이름 </span><span>홍길동</span>
				</div>
				<div class="myInfoID">
					<span class="title">아이디 </span><span>GDong</span>
				</div>
				<div class="myInfoEmail">
					<span class="title">이메일 </span><span>GDhong@gmail.com</span>
				</div>
				<div class="myInfoTel">
					<span class="title">전화번호</span><span>010-1111-2222</span>
				</div>
				<div class="mBtn">
					<button class="fBtn myInfo" id="update">수정</button>
				</div>
			</section>
			<section class="section-7">
				<%@ include file="/WEB-INF/jsp/include/footer.jsp"%>
			</section>
		</div>
	</div>
	<%@ include file="/WEB-INF/jsp/include/sideSlider.jsp"%>

</body>

</html>
