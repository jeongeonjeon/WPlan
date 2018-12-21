<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>more</title>
    <link rel="stylesheet"  href="${ pageContext.request.contextPath }/resources/css/member.css">
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
   			<li><a href="#">내 정보</a></li>
   		</ul>
   	</div>
   </aside>
   <section class="mSection">
   <br>
   <h4>내 정보</h4>
   <br>
   <div class="myInfoName">
   		<span class="title">이름 </span><span>홍길동</span>
   </div>
   <div class="myInfoID">
 	  	<span class="title">아이디 </span><span>GDong</span>
   </div>
   <div class="myInfoEmail">
	   	<span class="title">이메일 </span><span>GDhong@gmail.com</span>
   </div>
   <div class="myInfoTel">
  	 	<span class="title">전화번호</span><span>010-1111-2222</span>
   </div>
   <div class="mBtn">
   <button class="fBtn myInfo" id="update">수정</button>
	</div>	
   </section>
    <section class="section-7">
			<%@ include file="/jsp/include/footer.jsp" %>
    </section>

</body>

</html>
