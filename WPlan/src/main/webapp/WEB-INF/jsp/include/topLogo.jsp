<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	.loginMenu span {
		color : black!important;
	}
</style>
<script>

	$(document).ready(function(){
		
		
		$('#logout').click(function(){
// 				alert('asdasd');
			    var cookieData = document.cookie;
// 			    alert(cookieData);
			    
			    var jbString = cookieData;
			    var jbSplit = jbString.split('=');
			    
			    for ( var i in jbSplit ) {
			      jbSplit[i];
			    }
			    var id = jbSplit[0];
			    var password = jbSplit[1];
			    
			    document.cookie = jbSplit[0] + '=' + ''+ ';expires=' + -1 + ';path=/';
// 			    setcookie(jbSplit[0], "", 0 , 0);
			    
			location.href="${pageContext.request.contextPath}/logout";
		});
		
	});


</script>
<div class="container text-white">
	<div class="row">
		<div class="col-sm-4 align-self-center text-left">
		</div>
		<div class="col-sm-4 col-12 align-self-center box-1 text-center">
			<a class="navbar-brand" href="${ pageContext.request.contextPath }/index.jsp">
				<img src="${ pageContext.request.contextPath }/resources/images/header-logo.png" width="320px" alt="logo">
			</a>
		</div>
		<div class="col-sm-4 align-self-center text-right">
			<div class="loginMenu">
				<c:choose>
					<c:when test="${empty userVO }">
						<span class="login">login</span>
					</c:when>
					<c:otherwise>
						<span class="logout" id="logout">logout</span>
					</c:otherwise> 
				</c:choose>
			</div>
		</div>
	</div>
	<!--/row--> 
</div>
