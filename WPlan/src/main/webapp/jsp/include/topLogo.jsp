<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container text-white">
	<div class="row">
		<div class="col-sm-4 align-self-center text-left">
		</div>
		<div class="col-sm-4 col-12 align-self-center box-1 text-center">
			<a class="navbar-brand" href="${ pageContext.request.contextPath }/index.jsp">
				<img src="${ pageContext.request.contextPath }/resources/images/header-logo.png" width="150px" alt="logo">
			</a>
		</div>
		<div class="col-sm-4 align-self-center text-right">
			<div class="loginMenu">
				<a href="#"><span class="login">login</span></a>
				<a href="#"><span class="logout">logout</span></a> 
				<a href="#"><span class="mypage">mypage</span></a>
			</div>
		</div>
	</div>
	<!--/row-->
</div>
