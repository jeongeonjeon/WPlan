<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<title>more</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/member.css">
<jsp:include page="/WEB-INF/jsp/include/head.jsp" />

<style type="text/css">
.container.section-2 {
	padding: 0;
	
}
.btn span.glyphicon {    			
	opacity: 0;				
}
.btn.active span.glyphicon {				
	opacity: 1;				
}
</style>
</head>
<script>
$(document).ready(function(){
	
	$('.btn-info').click(function(){
	
		if($(this).hasClass("active") === false){
			$(this).addClass('active');
			$(this).children('input:hidden').attr('checked', 'checked');
		}else{
			$(this).removeClass('active');
			$(this).children('input:hidden').removeAttr('checked');
		}
	});

})

</script>
<body>
	<div id="wrapper">
		<jsp:include page="/WEB-INF/jsp/login/loginForm.jsp" />
		<header class="header bg">
			<jsp:include page="/WEB-INF/jsp/include/topLogo.jsp" />
		</header>
		<nav class="navbar navbar-expand-sm sticky-top navbar-dark">
			<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
		</nav>

		<aside class="rAside">
			<div>
				<ul class="rMenu">
					<li class="calendar"><a href="#">캘린더</a></li>
					<li class="rList"><a href="#">예약리스트</a></li>
					<li class="myInfo"><a href="#">내 정보</a></li>
				</ul>
				
			</div>
		</aside>
			<section class="mSection box">
			<div class="container section-2">			
				<br>
				<h3>결혼가이드</h3>
<%-- 				${ todoList[0] } --%>
				<br>
				<p>TO DO LIST</p>
				<c:set var="i" value="0" />
				<form:form method="post" commandName="guideVO">
					<c:forEach items="${ requestScope.todoList }" var="todo">
						<c:set var="i" value="${i+1}" />
						<div>
							<c:choose>
								<c:when test="${todo eq 'true'}">
									<label class="btn btn-info active"><form:hidden path="${ todoListEng[i] }" checked="true"/><span class="glyphicon glyphicon-ok"></span></label><label style="background-color: rgba(0,0,0,.05);">${todoListKor[i]}</label>
								</c:when>
								<c:when test="${todo eq 'false'}">
									<label class="btn btn-info"><form:hidden path="${ todoListEng[i] }" /><span class="glyphicon glyphicon-ok"></span></label><label style="background-color: rgba(0,0,0,.05);">${todoListKor[i]}</label>
								</c:when>								
							</c:choose>
						</div>
					</c:forEach>
				</form:form>
				<button>저장</button>
			</div>
			
		</section>
		<section class="section-7">
			<%@ include file="/WEB-INF/jsp/include/footer.jsp"%>
		</section>
	</div>
	<%@ include file="/WEB-INF/jsp/include/sideSlider.jsp"%>

</body>

</html>
