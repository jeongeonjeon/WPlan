<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>more</title>
    <link rel="stylesheet"  href="${ pageContext.request.contextPath }/resources/css/reservation.css">
    <jsp:include page="/jsp/include/head.jsp" />
    <style>
    .jumbotron {width: 100%;height: 250px;}
        .jumbotron h2 {padding-bottom: 0;}
       
    </style>
    
</head>

<body>
    <header class="header bg">
        <jsp:include page="/jsp/include/topLogo.jsp" />
    </header>
    <span class="position-absolute trigger"><!-- hidden trigger to apply 'stuck' styles --></span>
    <nav class="navbar navbar-expand-sm sticky-top navbar-dark">
       	<jsp:include page="/jsp/include/topMenu.jsp" />
    </nav>	
    
   <aside class="rAside">
   	<div>
   		<ul class= "rMenu">
   			<li><a href="#">캘린더</a></li>
   			<li><a href="#">예약리스트</a></li>
   			<li></li>
   			<li></li>
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
			<div class="rBtn">
				<button class="fBtn">예약취소</button>
				<button class="fBtn">예약수정</button>
			</div>
		</div>
   </section>
    <section class="section-7">
			<%@ include file="/jsp/include/footer.jsp" %>
    </section>

</body>

</html>
