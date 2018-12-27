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
		<!--Section-1-->
		<section class="section-1  product">
			<div class="jumbotron d-flex align-items-center">
				<div class="gradient"></div>
				<div class="container-fluid content">
					<h1 data-aos="fade-right" data-aos-delay="300">DRESS</h1>
					<h2 data-aos="fade-left" data-aos-delay="300">You can get
						everything you want</h2>
				</div>
				<!--container-fluid end-->
			</div>
		</section>

		<!--Section-2-->
		<section class="section-2">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-sm-12 col-12 dressType box-1">
						<div class="row box" data-aos="fade-left" data-aos-delay="300">
							<div class="imgBox">
								<img
									src="${ pageContext.request.contextPath }/resources/images/dressType1.png"
									class="figure-img img-fluid" alt="blog">
							</div>
							<div class="textBox">
								<h4>Mermaid</h4>
								<p>상체부터 무릎까지 핏이 되어 인어공주를 연상케하는 드레스입니다.
								키가 크고 볼륨감 있는 체형의 장점을 살려줄 수 있는 드레스 타입으로 우아함을 돋보여줍니다.</p>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-sm-12 col-12 dressType box-2">
						<div class="row box" data-aos="fade-left" data-aos-delay="300">
							<div>
								<img
									src="${ pageContext.request.contextPath }/resources/images/dressType2.png"
									class="figure-img img-fluid" alt="blog">
							</div>
							<div class="textBox">
								<h4>A Line</h4>
								<p>보편적으로 누구에게나 잘 어울리는 스타일의 드레스입니다. 특히 키가 작고 아담한 체형이시라면
								아래로 갈 수록 넓어지는 A라인 드레스가 다리를 길어보이게 하여 작은 체형을 보완해줄 수 있습니다. </p>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-sm-12 col-12 dressType box-3">
						<div class="row box" data-aos="fade-left" data-aos-delay="300">
							<div>
								<img
									src="${ pageContext.request.contextPath }/resources/images/dressType3.png"
									class="figure-img img-fluid" alt="blog">
							</div>
							<div class="textBox">
								<h4>Short</h4>
								<p>스커트 길이가 짧아 귀여움을 줄 수 있는 타입의 드레스입니다. 캐쥬얼한 식을 원하시거나
								피로연시에 입을 세컨드 드레스를 찾는다면 추천되는 드레스입니다.</p>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-sm-12 col-12 dressType box-4">
						<div class="row box" data-aos="fade-left" data-aos-delay="300">
							<div>
								<img
									src="${ pageContext.request.contextPath }/resources/images/dressType4.png"
									class="figure-img img-fluid" alt="blog">
							</div>
							<div class="textBox">
								<h4>Empire Line</h4>
								<p>허리 선이 높게 잡힌 엠파이어 드레스는 다리 길이가 길어보이기 때문에 작은 키가를 보완해줄 수 있는 타입의 드레스입니다.
								</p>
							</div>
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
