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
<jsp:include page="/WEB-INF/jsp/include/head.jsp" />

</head>
<body>
	<div id="wrapper">
		<jsp:include page="/WEB-INF/jsp/login/loginForm.jsp" />
		<header class="header bg">
			<jsp:include page="/WEB-INF/jsp/include/topLogo.jsp" />
		</header>
		<span class="position-absolute trigger"> <!-- hidden trigger to apply 'stuck' styles -->
		</span>
		<nav class="navbar navbar-expand-sm sticky-top navbar-dark">
			<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
		</nav>
		<!--Section-1-->
		<section class="section-1 product">
			<div class="jumbotron d-flex align-items-center">
				<div class="gradient"></div>
				<div class="container-fluid content">
					<h1 data-aos="fade-right" data-aos-delay="300">Welcome to
						W:PLAN</h1>
					<h2 data-aos="fade-left" data-aos-delay="300">together with me</h2>
				</div>
				<!--container-fluid end-->
			</div>
		</section>

		<!-- Contact section Start -->
		<div id="contact">
			<div class="container">
				<h3>회원가입</h3>
			</div>
			<div class="container py-5 joinForm">
				<div class="row" data-aos="fade-up" data-aos-delay="300">
					<div class="col-md-12">
						<form>
							<div class="form-group row"></div>

							<div class="row">
								<label class="title"><h4>아이디</h4></label> <input type="text"
									class="inputArea" placeholder="이름을 입력해주세요" required>
								<button class="fBtn">중복확인</button>
							</div>
							<div class="row">
								<label class="title"><h4>비밀번호</h4></label> <input type="text"
									class="inputArea" placeholder="비밀번호를 입력해주세요" required>

							</div>
							<div class="row">

								<input type="text" class="inputArea pws"
									placeholder="비밀번호를 확인해주세요" required>

							</div>
							<div class="row">
								<label class="title"><h4>업체명</h4></label> <input type="text"
									class="inputArea" placeholder="이름을 입력해주세요" required>
							</div>
							<div class="row">
								<label class="title"><h4>전화번호</h4></label> <input type="text"
									class="inputArea" placeholder="010-xxxx-xxxx" required>
							</div>
							<div class="row">
								<label class="title"><h4>이메일</h4></label> <input type="email"
									class="inputArea" placeholder="이메일형식으로 입력해주세요" required>
							</div>
							<button class="fBtn submit">가입하기</button>



						</form>
					</div>
				</div>
			</div>
		</div>

		<!-- Contact section Ended -->

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
