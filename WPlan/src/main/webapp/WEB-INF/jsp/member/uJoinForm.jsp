<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
					<h2 data-aos="fade-left" data-aos-delay="300">please together
						with me</h2>
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
						<form:form method="post" commandName="umemberVO" >
							<div class="form-group row"></div>

							<div class="row">
								<label class="title">
								<h4>아이디</h4>
								</label> 
								<form:input path="id" class="inputArea" name="id" />
								<form:errors path="id"/>
								<button class="fBtn">중복확인</button>
							</div>
							<div class="row">
								<label class="title"><h4>비밀번호</h4></label> 
								<form:input path="password" class="inputArea" name="password"/>
								<form:errors path="password"/>

							</div>
							<div class="row">
								<label class="title"><h4>비밀번호 확인</h4></label> 
								<form:input path="password" class="inputArea" name="password2" placeholder="비밀번호를 확인해주세요"/>
								<form:errors path="password" />

							</div>
							<div class="row">
								<label class="title"><h4>이름</h4></label> 
								<form:input path="name" class="inputArea" name="name"/>
								<form:errors path="name"/>
							</div>
							<div class="row">
								<label class="title"><h4>전화번호</h4></label> 
								<form:input path="tel" class="inputArea" name="tel" placeholder="010-xxxx-xxxx" />
								<form:errors path="tel"/>
							</div>
							<div class="row">
								<label class="title"><h4>이메일</h4></label> 
								<form:input path="email" class="inputArea" name="email" placeholder="이메일형식으로 입력해주세요" />
								<form:errors path="email"/>
							</div>
							 <a href="${ pageContext.request.contextPath }/">
								<button class="fBtn submit">가입하기</button>
							</a>
						</form:form>
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
