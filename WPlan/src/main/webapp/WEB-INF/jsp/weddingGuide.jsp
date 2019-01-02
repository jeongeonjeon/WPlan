<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
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
	.
}
</style>
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
				`
			</div>
		</aside>
			<section class="mSection box">
			<div class="container section-2">
				<br>
				<h3>결혼가이드</h3>
				<br>
				<p>진행도를 체크해주시면 이용자님을 위한 TO DO LIST를 만들어드릴게요!</p>
				<br>
				<form:form method="post" commandName="guideVO">
					<div id="formStep">
						<div class="progress"></div>
						<div class="modal-form-list">
							<div data-id="001">
								<h4>1. 상견례는 하셨나요?</h4>
								<form:radiobutton path="premeet" value="yes" label="네"/><br>
								<form:radiobutton path="premeet" value="no" label="아니요"/><br>
								<form:radiobutton path="premeet" value="noneed" label="필요없어요"/><br>
								<form:errors pathe="premeet"/>
							</div>
						</div>
						<div class="modal-form-list">
							<div data-id="002">
								<h4>2. 스튜디오는 정하셨나요?</h4>
								<form:radiobutton path="studio" value="yes" label="네"/><br>
								<form:radiobutton path="studio" value="no" label="아니요"/><br>
								<form:radiobutton path="studio" value="noneed" label="필요없어요"/><br>
								<form:errors pathe="studio"/>
							</div>
						</div>
						<div class="modal-form-list">
							<div data-id="003">
								<h4>3. 드레스는 정하셨나요?</h4>
								<form:radiobutton path="dress" value="yes" label="네"/><br>
								<form:radiobutton path="dress" value="no" label="아니요"/><br>
								<form:radiobutton path="dress" value="noneed" label="필요없어요"/><br>
								<form:errors pathe="dress"/>
							</div>
						</div>
						<div>
							<button class="fBtn next">다음</button>
						</div>
					</div>
				<button type="submit">등록</button>
				</form:form>
			</div>
		</section>
		<section class="section-7">
			<%@ include file="/WEB-INF/jsp/include/footer.jsp"%>
		</section>
	</div>
	<%@ include file="/WEB-INF/jsp/include/sideSlider.jsp"%>

</body>

</html>
