<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<c:import url="/login" />
		<header class="header bg">
			<jsp:include page="/WEB-INF/jsp/include/topLogo.jsp" />
		</header>
		<nav class="navbar navbar-expand-sm sticky-top navbar-dark">
			<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
		</nav>
		<!--Section-1-->
		<section class="section-1  product">
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
							<a href="${ pageContext.request.contextPath }/detail">
							<img src="${ pageContext.request.contextPath }/resources/images/dress1.jpg" class="figure-img img-fluid" alt="blog">
							</a>
							<div class="col-lg-10 col-sm-12">
								<h4>
									<a href="${ pageContext.request.contextPath }/detail">eon</a>
								</h4>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-sm-12 col-12 box-2">
						<div class="row box" data-aos="fade-left" data-aos-delay="300">
	
							<a href="${ pageContext.request.contextPath }/detail">
							<img src="${ pageContext.request.contextPath }/resources/images/dress2.jpg" class="figure-img img-fluid" alt="blog">
							</a>
							<div class="col-lg-10 col-sm-12">
								<h4>
									<a href="${ pageContext.request.contextPath }/detail">woon</a>
								</h4>
	
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-sm-12 col-12 box-3">
						<div class="row box" data-aos="fade-left" data-aos-delay="300">
	
							<a href="${ pageContext.request.contextPath }/detail">
							<img src="${ pageContext.request.contextPath }/resources/images/dress3.jpg" class="figure-img img-fluid" alt="blog">
							</a>
							<div class="col-lg-10 col-sm-12">
								<h4>
									<a href="${ pageContext.request.contextPath }/detail">JH SHOP</a>
								</h4>
	
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-sm-12 col-12 box-4">
						<div class="row box" data-aos="fade-left" data-aos-delay="300">
							<a href="${ pageContext.request.contextPath }/detail">
							<img src="${ pageContext.request.contextPath }/resources/images/dress1.jpg" class="figure-img img-fluid" alt="blog">
							</a>
							<div class="col-lg-10 col-sm-12">
								<h4>
									<a href="${ pageContext.request.contextPath }/detail">JEE</a>
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
				<%@ include file="/WEB-INF/jsp/include/footer.jsp"%>
			</footer>
			<!-- Footer -->
		</section>
	</div>
	<%@ include file="/WEB-INF/jsp/include/sideSlider.jsp" %>
</body>
</html>
