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
		<jsp:include page="${ pageContext.request.contextPath }/jsp/login/loginForm.jsp" />
		<header class="header bg">
			<jsp:include page="${ pageContext.request.contextPath }/jsp/include/topLogo.jsp" />
		</header>
		<nav class="navbar navbar-expand-sm sticky-top navbar-dark">
			<jsp:include page="${ pageContext.request.contextPath }/jsp/include/topMenu.jsp" />
		</nav>
		<!-- Section-1 -->
		<section class="section-1 product">
			<div class="jumbotron d-flex align-items-center">
				<div class="gradient"></div>
				<div class="container-fluid content"></div>
			</div>
		</section>

		<!-- section-2 -->

		<div class="row-out">
			<h4>예시1</h4>
			<div class="row-in">
			<div class="row-div" >
				<img src="${ pageContext.request.contextPath }/resources/images/dress1.jpg"
					class="img-fluid-3" alt="blog">
				</div>
			</div>
		</div>
		<section class="section-2">
			<div class="container">
				<h4>상세보기</h4>
				<div class="row">
					<div class="col-lg-4 col-sm-12 col-12 box-1 cart">
						<div class="row box" data-aos="fade-left" data-aos-delay="300">
						<div class="col-lg-10 col-sm-12">
								<h4>
									<a href="${ pageContext.request.contextPath }">드레스</a>
								</h4>
							</div>
							<img src="${ pageContext.request.contextPath }/resources/images/dress1.jpg"
								class="figure-img img-fluid" alt="blog">
						</div>
					</div>

					<div class="col-lg-4 col-sm-12 col-12 box-2 cart">
						<div class="row box" data-aos="fade-left" data-aos-delay="300">
							<div class="col-lg-10 col-sm-12">
								<h4>
									<a href="${ pageContext.request.contextPath }">턱시도</a>
								</h4>
							</div>
							<img src="${ pageContext.request.contextPath }/resources/images/dress1.jpg"
								class="figure-img img-fluid" alt="blog">
						</div>
					</div>

					<div class="col-lg-4 col-sm-12 col-12 box-3 cart">
						<div class="row box" data-aos="fade-left" data-aos-delay="300">
							<div class="col-lg-10 col-sm-12">
								<h4>
									<a href="${ pageContext.request.contextPath }">장소</a>
								</h4>
							</div>
							<img src="${ pageContext.request.contextPath }/resources/images/dress1.jpg"
								class="figure-img img-fluid" alt="blog">
						</div>
					</div>

					<div class="col-lg-4 col-sm-12 col-12 box-4 cart">
						<div class="row box" data-aos="fade-left" data-aos-delay="300">
							<div class="col-lg-10 col-sm-12">
								<h4>
									<a href="${ pageContext.request.contextPath }">테마</a>
								</h4>
							</div>
							<img src="${ pageContext.request.contextPath }/resources/images/dress1.jpg"
								class="figure-img img-fluid" alt="blog">
						</div>
					</div>
					
					<div class="col-lg-4 col-sm-12 col-12 box-5 cart">
						<div class="row box" data-aos="fade-left" data-aos-delay="300">
							<div class="col-lg-10 col-sm-12">
								<h4>
									<a href="${ pageContext.request.contextPath }">음식</a>
								</h4>
							</div>
							<img src="${ pageContext.request.contextPath }/resources/images/dress1.jpg"
								class="figure-img img-fluid" alt="blog">
						</div>
					</div>
					
				</div>
			</div>
		</section>
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
