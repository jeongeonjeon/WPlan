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
p{
	margin:0;
}

.select_area{
	width:300px;
	height: calc(100vh - 163px);
	position : relative;
	overflow-y : auto;
	padding: 10px 50px;
	float:left;
}
.select_area::-webkit-scrollbar {
    width: 10px;
    background: transparent;
}
.select_area img{
	width:180px;
	max-height: 200px;
	padding : 10px;
}

.section-1.product{
	width: calc( 100% - 300px );
	height: calc(100vh - 163px);
	overflow: hidden;
	float:right;
}
.product .making{
	border: 3px solid #eee;
	width:720px;
	height:490px;
	position: relative;
	top : 30px;
	left: 10%;
}
.product .making img{
	max-width: 100%;
    max-height: 100%;
    margin:auto;
}

.section-7{
	clear:both;
}

@media(max-width:1024px) {
	.select_area{
		height: calc(100vh - 112px);
	}
	.section-1.product{
		height: calc(100vh - 112px);
	}
}
@media(max-width:576px) {
	.select_area{
		height: calc(100vh - 47px);
	}
	.section-1.product{
		height: calc(100vh - 47px);
	}
}

</style>
<script>
	$(document).ready(function(){

		$('.select_area img').dblclick(function(){
			var src = $(this).attr('src');
			var html = "<img src='"+src+"'>";
			
			$('.making').append(html);
			
		});
	});	
</script>
</head>
<body>
	<div id="wrapper">
		<jsp:include page="/WEB-INF/jsp/login/loginForm.jsp" />
<!-- 		<header class="header bg"> -->
<%-- 			<jsp:include page="/WEB-INF/jsp/include/topLogo.jsp" /> --%>
<!-- 		</header> -->
		<nav class="navbar navbar-expand-sm sticky-top navbar-dark">
			<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
		</nav>
		<!--Section-1-->
		<aside class="select_area">
			<div class="wrap dress">
				<p>DRESS</p>
				<img src="../resources/images/dress1.jpg"/>
				<img src="../resources/images/dress2.jpg"/>
				<img src="../resources/images/dress3.jpg" />
				<img src="../resources/images/dress1.jpg" />
				<img src="../resources/images/dress2.jpg" />
			</div>
			<div class="wrap toxedo">
				<p>TOXEDO</p>
				<img src="../resources/images/dress1.jpg"/>
				<img src="../resources/images/dress2.jpg"/>
				<img src="../resources/images/dress3.jpg" />
				<img src="../resources/images/dress1.jpg" />
				<img src="../resources/images/dress2.jpg" />
			</div>
			<div class="wrap location">
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
			<div class="making">
				
			</div>
			<button></button>
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
