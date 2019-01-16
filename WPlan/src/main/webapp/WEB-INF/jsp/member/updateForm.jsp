<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>more</title>
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/css/member.css">
<jsp:include page="/WEB-INF/jsp/include/head.jsp" />

<style type="text/css">
	.container.section-33{
	    width: 60%;
	    height: auto;
	    padding-bottom: 100px;
    	border-bottom: 1px solid #e5e5e5;
	}
	.section-33 .box {
	    box-shadow: 0 0 25px rgba(0, 0, 0, .15) !important;
	    padding: 10px 10px;
	}
	
	.sub{
		display:inline-block;
	    font-family: 'Montserrat', sans-serif;
	    color: #545454;
		font-size: 15px;
		width:40%;
	}
	
	.title{
		display:inline-block;
	    color: #545454;
	    font-family: 'Montserrat', sans-serif;
	    font-size: 15px;	
	    width:15%;
	    padding: 2%;
	}
	.todo{
		max-width: 730px;
	    border: 2px solid rgba(0,0,0,.04);
	    border-radius: 15px;
	    margin: 5px auto;
	    padding: 5px 15px;
    }
    .ttt{
    font-weight: bold ;
    font-style: italic;
    }
    
    .sub{
    	@import url(http://fonts.googleapis.com/earlyaccess/nanumpenscript.css);
	
font-family: 'Nanum Pen Script', serif;
    }
	


</style>
<script>

$(document).ready(function(){
	$('#updateBtn').click(function(){
		location.href="${ pageContext.request.contextPath }/member/update";
	});
});

</script>
</head>

<body>
	<div id="wrapper">
		<c:import url="/loginForm" />
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
					<li class="myInfo"><a href="${ pageContext.request.contextPath }/member/myPage">내 정보</a></li>
					<li class="addcom"><a href="${ pageContext.request.contextPath }/addcom/addcomForm">업체 등록</a></li>
					<li class="addproductform"><a href="${ pageContext.request.contextPath }/product/addProductForm">제품 등록</a></li>
				</ul>
			</div>
		</aside>
		<div class="container section-33">
			<section class="mSection box">
				<br>
				<h4>내 정보</h4>
				<br>
				<div class="myInfoName todo">
					<span class="title ttt">이름 </span><span class="sub">${member.name }</span>
				</div>
				<div class="myInfoID todo">
					<span class="title ttt">아이디 </span><span class="sub">${member.id }</span>
				</div>
				<div class="myInfoEmail todo">
					<span class="title ttt">이메일 </span><span class="sub">${member.email }</span>
				</div>
				<div class="myInfoTel todo">
					<span class="title ttt">전화번호</span><span class="sub">${member.tel }</span>
				</div>
				
				<c:if test="${cuserVO != null}">
					<div class="myInfoCname todo">
						<span class="title ttt">업체명</span><span class="sub">${member.cName }</span>
					</div>
					<div class="myInfoCno todo">
						<span class="title ttt">사업자번호</span><span class="sub">${member.cNO}</span>
					</div>
					<div class="myInfoCaddress todo">
						<span class="title ttt">주소</span><span class="sub">${member.cAddress }</span>
					</div>
				
				</c:if>
					<div class="myInfoRegDate todo">
						<span class="title ttt">가입날짜</span><span class="sub">${member.regDate }</span>
					</div>
				
				<div class="mBtn" style="padding-left:15px; margin-top: 40px;">
					<button class="fBtn myInfo" id="updateBtn" style="width:20%;" >수정</button>
					<button class="fBtn myInfo" id="deleteBtn" style="margin-left:20px; width:20%;">회원탈퇴</button>
				</div>
			</section>
			<section class="section-7">
				<%@ include file="/WEB-INF/jsp/include/footer.jsp"%>
			</section>
		</div>
	</div>
	<%@ include file="/WEB-INF/jsp/include/sideSlider.jsp"%>

</body>

</html>
