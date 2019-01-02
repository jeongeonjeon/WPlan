<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>more</title>
    <link rel="stylesheet"  href="${ pageContext.request.contextPath }/resources/css/member.css">
    <jsp:include page="/WEB-INF/jsp/include/head.jsp" />

    
</head>

<body>
	<div id="wrapper">
		<jsp:include page="/WEB-INF/jsp/login/loginForm.jsp" />
	    <header class="header bg">
	        <jsp:include page="/WEB-INF/jsp/include/topLogo.jsp" />
	    </header>
	    <span class="position-absolute trigger"><!-- hidden trigger to apply 'stuck' styles --></span>
	    <nav class="navbar navbar-expand-sm sticky-top navbar-dark">
	       	<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
	    </nav>	
	    
	   <aside class="rAside">
	   	<div>
	   		<ul class= "rMenu">
	   			<li class="calendar"><a href="#">캘린더</a></li>
	   			<li class="rList"   ><a href="#">예약리스트</a></li>
	   			<li class="myInfo"  ><a href="#">내 정보</a></li>
	   		</ul>
	   	</div>
	   </aside>
	   <section class="rSection">
	   <br>
	   <h4>예약정보</h4>
	   <br>
			<div class="rDetail">
				<div class="rDetailTitle"><p>EON</p></div>
				<div class="rDetailImgSec">
					<img class="rDetailImg" src="${ pageContext.request.contextPath }/resources/images/dress1.jpg">
				</div>
				<div class="rDetailInfo">
					<p>예약내역  eon style dress</p>
					<p>예약날짜  2018.12.20</p>
					<p>결혼날짜  2018.12.24</p>
					<p>비용  	  500,000원</p>
				</div>
				<br>
			</div>
				<div class="rDetailBtn">
					<div class="Btn">
					<button class="fBtn" id ="cancel">예약취소</button>
					<button class="fBtn" id="update">예약수정</button>
					</div>
				</div>
	   </section>
	    <section class="section-7">
				<%@ include file="/WEB-INF/jsp/include/footer.jsp" %>
	    </section>
     	</div>
	<%@ include file="/WEB-INF/jsp/include/sideSlider.jsp" %>

</body>

</html>
