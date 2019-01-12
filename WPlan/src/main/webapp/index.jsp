<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport"	content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<jsp:include page="/WEB-INF/jsp/include/head.jsp" />
	<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css">
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.js"></script>
<script>
$(document).ready(function(){
		if($('.loginMenu').children('.login').length === 1 && document.cookie.split('=')[1] != '' &&  document.cookie.split('=')[0] != 'remember_id'){
			window.onload = function getCookie(name) {
			    var cookieData = document.cookie;
// 			    alert(cookieData);
			    
			    var jbString = cookieData;
			    var jbSplit = jbString.split('=');
			    
			    for ( var i in jbSplit ) {
			      jbSplit[i];
			    }
			    var id = jbSplit[0];
			    var password = jbSplit[1];
			    
			$.ajax({
				url:"${pageContext.request.contextPath}/login",
				type: "POST",
				data : {
					id : id,
					password : password
				},
				success : function(result){
					console.log(result);
					if(result != "fail"){
						location.reload();
					}else{
						alert('로그인에 실패하였습니다.');
					}
				}
			});
		}
	}
});
</script>
</head>
<body>
	<div id="wrapper">
		<c:import url="/login" />
		
		<header class="header bg">
			<jsp:include page="/WEB-INF/jsp/include/topLogo.jsp" />
		</header>
		<span class="position-absolute trigger">
			<!-- hidden trigger to apply 'stuck' styles -->
		</span>
		<nav class="navbar navbar-expand-sm sticky-top navbar-dark">
			<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
		</nav>
		<!--Section-1-->
		<section class="section-1">
			<div class="jumbotron d-flex align-items-center"> 
			</div>
		</section>
		
		<!--Section-2-->
		<section class="section-2">
		
				<div class="mainText">
					<h4>W:PLAN과 함께 하나뿐인 당신의 결혼식을 만들어보세요</h4>
					<p> 스몰 웨딩 플랜 W:PLAN과 함께라면 어렵지 않습니다. <br>
					다양한 선택지와 시뮬레이션으로 그 자리에서 직접 당신의 결혼식을 미리 보여드립니다.</p>
				</div>
		
		<div class="container main" id="dress">
			<a href="${ pageContext.request.contextPath }/product/dress">
			<img class="mainDress" src="${ pageContext.request.contextPath }/resources/images/main-dress.png" >
				<h4>드레스 타입별 카테고리로 당신의 드레스를 쉽게 골라보세요</h4>
			</a>
			</div>
		</section>
		<section class="section-7">
			<!-- Footer -->
			<footer class="page-footer font-small stylish-color-dark">
				<%@ include file="/WEB-INF/jsp/include/footer.jsp" %>
			</footer>
			<!-- Footer -->
		</section>
 	</div>
	<%@ include file="/WEB-INF/jsp/include/sideSlider.jsp" %>


</body>

</html>