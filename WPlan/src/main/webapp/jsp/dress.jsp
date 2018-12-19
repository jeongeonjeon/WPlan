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
<jsp:include page="/jsp/include/head.jsp" />
<style>
.jumbotron {
	width: 100%;
	height: 250px;
}

.jumbotron h2 {
	padding-bottom: 0;
}
</style>

</head>
<body>
	<header class="header bg">
		<jsp:include page="/jsp/include/topLogo.jsp" />
	</header>
	<span class="position-absolute trigger"> <!-- hidden trigger to apply 'stuck' styles -->
	</span>
	<nav class="navbar navbar-expand-sm sticky-top navbar-dark">
		<jsp:include page="/jsp/include/topMenu.jsp" />
	</nav>
	<!--Section-1-->
	<section class="section-1">
		<div class="jumbotron d-flex align-items-center">
			<div class="gradient"></div>
			<div class="container-fluid content">
				<h1 data-aos="fade-right" data-aos-delay="300">DRESS</h1>
				<h2 data-aos="fade-left" data-aos-delay="300">You can get everything you want</h2>
			</div>
			<!--container-fluid end-->
		</div>
	</section>

	<!--Section-2-->
	<section class="section-2">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-sm-12 col-12 box-1">
					<div class="row box" data-aos="fade-left" data-aos-delay="300">

						<a href="${pageContext.request.contextPath }"> <img
							src="${ pageContext.request.contextPath }/resources/images/dress1.jpg"
							class="figure-img img-fluid" alt="blog">
						</a>
						<div class="col-lg-10 col-sm-12">
							<h4>
								<a href="${ pageContext.request.contextPath }/jsp/services.jsp">design.</a>
							</h4>

						</div>
					</div>
				</div>
				<div class="col-lg-4 col-sm-12 col-12 box-2">
					<div class="row box" data-aos="fade-left" data-aos-delay="500">
						<a href="${pageContext.request.contextPath }"> <img
							src="${ pageContext.request.contextPath }/resources/images/dress1.jpg"
							class="figure-img img-fluid" alt="blog">
						</a>
						<div class="col-lg-10 col-sm-12">
							<h4>
								<a href="${ pageContext.request.contextPath }/jsp/services.jsp">design.</a>
							</h4>

						</div>
					</div>
				</div>
				<div class="col-lg-4 col-sm-12 col-12 box-3">
					<div class="row box" data-aos="fade-left" data-aos-delay="700">
						<a href="${pageContext.request.contextPath }"> <img
							src="${ pageContext.request.contextPath }/resources/images/dress1.jpg"
							class="figure-img img-fluid" alt="blog">
						</a>
						<div class="col-lg-10 col-sm-12">
							<h4>
								<a href="${ pageContext.request.contextPath }/jsp/services.jsp">design.</a>
							</h4>

						</div>
					</div>
				</div>
				<div class="col-lg-4 col-sm-12 col-12 box-1">
					<div class="row box" data-aos="fade-left" data-aos-delay="700">
						<a href="${pageContext.request.contextPath }"> <img
							src="${ pageContext.request.contextPath }/resources/images/dress1.jpg"
							class="figure-img img-fluid" alt="blog">
						</a>
						<div class="col-lg-10 col-sm-12">
							<h4>
								<a href="${ pageContext.request.contextPath }/jsp/services.jsp">design.</a>
							</h4>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>
	<section class="blog">

		<div class="row bt">
			<div class="col-sm-12">
				<ul>
					<li><a class="active" href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
				</ul>
			</div>
		</div>

	</section>

	<section class="section-7">
		<!-- Footer -->
		<footer class="page-footer font-small stylish-color-dark">
			<%@ include file="/jsp/include/footer.jsp"%>
		</footer>
		<!-- Footer -->
	</section>

</body>

</html>
