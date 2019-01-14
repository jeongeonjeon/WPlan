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

#wrapper{
	overflow: hidden;
}

.container.section-2 {
	width:60%;
	float : left;
	padding-top :50px; 
}
.container.section-2 .todoForm{
	margin : 0 20px;
}
.container.section-2 .todo{
	max-width: 730px;
	border : 2px solid rgba(0,0,0,.04);
	border-radius : 15px; 
	margin : 5px auto;
	padding : 5px 15px;
}

.container.section-2 .title {
	margin : 0 0 30px 0;
}

.section-2 .input-group .form-control {
	width : unset;
}

label.btn.btn-outline-secondary {
    margin: 0 0 2px 0;
}
label#label {
    margin-bottom: unset;
    margin: 2px 10px 1px 10px;
    padding : 0 3%;
    word-spacing: 2px;
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
#check{
	width:5%;
	padding-left: 30px;
}
#text{
	width:93%;
	padding-left: 30px;
}

hr{
	width:65%;
}

@import url(https://fonts.googleapis.com/css?family=BenchNine:700);

.todoBtn {
	width: 100px;
	margin : 40px auto 20px;
}
.snip1535 {
  background-color: #FFB9B2;
  border: none;
  color: #ffffff;
  cursor: pointer;
  display: inline-block;
  font-family: 'BenchNine', Arial, sans-serif;
  font-size: 16px;
  line-height: 1em;
  margin:0 10px;
  width:80px;
  outline: none;
  padding: 10px 20px;
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
  border-color: #FFB9B2;
  border-right-width: 2px;
  border-top-width: 2px;
  right: -5px;
  top: -5px;
}
.snip1535:after {
  border-bottom-width: 2px;
  border-color: #FFB9B2;
  border-left-width: 2px;
  bottom: -5px;
  left: -5px;
}
.snip1535:hover,
.snip1535.hover {
  background-color: #FFF;
  color : #6c757d;
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
	
	$('.container.section-2 .todo').click(function(){
		
		if($('.container.section-2 .todo').children().length == 0){
			$(this).remove();
		}
	})
	
	$('.btn-outline-secondary').click(function(){
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
					<li class="calendar"><a href="${ pageContext.request.contextPath }/calendar">캘린더</a></li>
<!-- 					<li class="rList"><a href="#">예약리스트</a></li> -->
					<li class="myInfo"><a href="${ pageContext.request.contextPath }/member/cmyPage">내 정보</a></li>
				</ul>
				
			</div>
		</aside>
			<section class="mSection box">
			<div class="container section-2">			
				<h1 class = 'title'>TO DO LIST</h1>
				<c:set var="i" value="0" />
				<form:form method="post" class="todoForm" commandName="guideVO">
					<c:forEach items="${ requestScope.todoList }" var="todo">
						<c:set var="i" value="${i+1}" />
							<c:choose>
								<c:when test="${todo eq 'true'}">
									<div class="todo">
										<td id="check"><label class="btn btn-outline-secondary active"><form:hidden path="${ todoListEng[i] }" checked="true"/><span class="glyphicon glyphicon-ok"></span></label></td>
										<td id="text"><label id="label">${todoListKor[i]} 준비</label></td>
									</div>
								</c:when>
								<c:when test="${todo eq 'false'}">
									<div class="todo">
										<td id="check"><label class="btn btn-outline-secondary"><form:hidden path="${ todoListEng[i] }" /><span class="glyphicon glyphicon-ok"></span></label></td>
										<td id="text"><label id="label">${todoListKor[i]} 준비</label></td>
									</div>
								</c:when>								
							</c:choose>
					</c:forEach>
				</form:form>
				<div class="todoBtn">
				<button class="snip1535">저장</button>
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
