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
table {
  border-collapse: separate;
  border-spacing: 0 5px;
}
#text{
	width:93%;
	padding-left: 30px;
}
#check{
	width:5%;
	padding-left: 30px;
}

#label {
	width :35%;
}
hr{
	width:65%;
}
@import url(https://fonts.googleapis.com/css?family=BenchNine:700);
.snip1535 {
  background-color: #17a2b8;
  border: none;
  color: #ffffff;
  cursor: pointer;
  display: inline-block;
  font-family: 'BenchNine', Arial, sans-serif;
  font-size: 1em;
  font-size: 22px;
  line-height: 1em;
  margin: 15px 40px;
  outline: none;
  padding: 12px 40px 10px;
  position: relative;
  text-transform: uppercase;
  font-weight: 700;
}
.snip1535:before,
.snip1535:after {
  border-color: transparent;
  -webkit-transition: all 0.25s;
  transition: all 0.25s;
  border-style: solid;
  border-width: 0;
  content: "";
  height: 24px;
  position: absolute;
  width: 24px;
}
.snip1535:before {
  border-color: #0033FF;
  border-right-width: 2px;
  border-top-width: 2px;
  right: -5px;
  top: -5px;
}
.snip1535:after {
  border-bottom-width: 2px;
  border-color: #0033FF;
  border-left-width: 2px;
  bottom: -5px;
  left: -5px;
}
.snip1535:hover,
.snip1535.hover {
  background-color: #0033FF;
}
.snip1535:hover:before,
.snip1535.hover:before,
.snip1535:hover:after,
.snip1535.hover:after {
  height: 100%;
  width: 100%;
}
</style>
</head>
<script>
$(document).ready(function(){
	
	$('.btn-info').click(function(){
		var newColor = 'rgba(0,0,0,.05)';
		if($(this).hasClass("active") === false){
			$(this).addClass('active');
			$(this).children('input:hidden').attr('checked', 'checked');
			$(this).closest('#check').siblings('#text').children('#label').css('background-color', newColor);
// 			$(this).css('back', 'checked');
		}else{
			$(this).removeClass('active');
			$(this).children('input:hidden').removeAttr('checked');
			$(this).closest('#check').siblings('#text').children('#label').css('background-color', '');
		}
		
		
	});
	$(".hover").mouseleave(
	  function() {
	    $(this).removeClass("hover");
	  }
	);

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
				<div style="padding-left:18%; margin-bottom: -1%;"><h3>결혼가이드</h3></div>
<%-- 				${ todoList[0] } --%>
				<br>
					<div style="padding-left:18%;"><h1>TO DO LIST</h1></div>
					<hr/>
				
				<c:set var="i" value="0" />
				<form:form method="post" commandName="guideVO">
					<c:forEach items="${ requestScope.todoList }" var="todo">
						<c:set var="i" value="${i+1}" />
						<div>
						<table>
							<c:choose>
								<c:when test="${todo eq 'true'}">
									<tr>
										<td id="check"><label class="btn btn-info active"><form:hidden path="${ todoListEng[i] }" checked="true"/><span class="glyphicon glyphicon-ok"></span></label></td>
										<td id="text"><label id="label" style="background-color: rgba(0,0,0,.05);">${todoListKor[i]}</label></td>
									</tr>
								</c:when>
								<c:when test="${todo eq 'false'}">
									<tr>
										<td id="check"><label class="btn btn-info"><form:hidden path="${ todoListEng[i] }" /><span class="glyphicon glyphicon-ok"></span></label></td>
										<td id="text"><label id="label">${todoListKor[i]}</label></td>
									</tr>
								</c:when>
															
							</c:choose>
						</table>
						</div>
					</c:forEach>
				</form:form>
				<div style="margin-top:3%;">
				<button class="snip1535" style="margin-left:2%; width:15%;">저장</button>
				</div>
			</div>
			
		</section>
		<section class="section-7">
			<%@ include file="/WEB-INF/jsp/include/footer.jsp"%>
		</section>
	</div>
	<%@ include file="/WEB-INF/jsp/include/sideSlider.jsp"%>

</body>

</html>
