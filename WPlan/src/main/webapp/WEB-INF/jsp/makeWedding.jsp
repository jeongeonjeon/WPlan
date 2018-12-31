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
<style>

.select_area{
	width:300px;
	height: -webkit-fill-available;
	position : relative;
	overflow-y : scroll;
	padding: 10px 50px;
	float:left;
	
}
.select_area img{
	width:200px;
}

.section-1.product{
	width: calc( 100% - 300px );
	height: -webkit-fill-available;
	overflow: hidden;
	float:right;
	
}
.section-7{
	clear:both;
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
		<!--Section-1-->
		<aside class="select_area">
			<div class="wrap">
				<p>DRESS</p>
				<img src="../resources/images/dress1.jpg"/>
				<img src="../resources/images/dress2.jpg"/>
				<img src="../resources/images/dress3.jpg" />
				<img src="../resources/images/dress1.jpg" />
				<img src="../resources/images/dress2.jpg" />
			</div>
			<div class="wrap">
				<p>TOXEDO</p>
				<img src="../resources/images/dress1.jpg"/>
				<img src="../resources/images/dress2.jpg"/>
				<img src="../resources/images/dress3.jpg" />
				<img src="../resources/images/dress1.jpg" />
				<img src="../resources/images/dress2.jpg" />
			</div>
			<div class="wrap">
				<p>LOCATION</p>
				<img src="../resources/images/dress1.jpg"/>
				<img src="../resources/images/dress2.jpg"/>
				<img src="../resources/images/dress3.jpg" />
				<img src="../resources/images/dress1.jpg" />
				<img src="../resources/images/dress2.jpg" />
			</div>
			<div class="wrap">
				<p>DECO</p>
				<img src="../resources/images/dress1.jpg"/>
				<img src="../resources/images/dress2.jpg"/>
				<img src="../resources/images/dress3.jpg" />
				<img src="../resources/images/dress1.jpg" />
				<img src="../resources/images/dress2.jpg" />
			</div>
		
		
		</aside>
		<section class="section-1 product">

	
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
