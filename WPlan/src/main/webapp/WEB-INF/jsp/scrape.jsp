<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>more</title>
    <jsp:include page="/WEB-INF/jsp/include/head.jsp" />
	<style>
	.portfolio .wrap{
		min-height: 180px;
	}
	</style>
</head>
<body>
	<div id="wrapper">
		<jsp:include page="/WEB-INF/jsp/login/loginForm.jsp" />
	    <header class="header bg">
	        <jsp:include page="/WEB-INF/jsp/include/topLogo.jsp" />
	    </header>
	    <nav class="navbar navbar-expand-sm sticky-top navbar-dark">
	       	<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
	    </nav>
	    <section class="section-1 portfolio">
	    	<div class="container">
	        <h3>DRESS</h3>
		        <div class="wrap">
		        	<c:forEach items="${requestScope.scrapeList}" var="scrape">
						<c:if test="${ scrape.getCategory() eq 'dress' }">
							<img src="/WPlan/resources/upload/${scrape.getfSaveName()}"/>
						</c:if>
						<c:if  test="${ empty scrape.getCategory() eq 'dress' }">
							
						</c:if>
					</c:forEach>
		    	</div>
	        </div>
	    </section>
	    <section class="section-1 portfolio">
	    	<div class="container">
	        <h3>TOXEDO</h3>
		        <div class="wrap">
		        	<c:forEach items="${requestScope.scrapeList}" var="scrape">
						<c:if test="${ scrape.getCategory() eq 'tuxedo' }">
							<img src="/WPlan/resources/upload/${scrape.getfSaveName()}"/>
						</c:if>
					</c:forEach>
		    	</div>
	        </div>
	    </section>
	    <section class="section-1 portfolio">
	    	<div class="container">
	        <h3>LOCATION</h3>
		        <div class="wrap">
		        	<c:forEach items="${requestScope.scrapeList}" var="scrape">
						<c:if test="${ scrape.getCategory() eq 'location' }">
							<img src="/WPlan/resources/upload/${scrape.getfSaveName()}"/>
						</c:if>
					</c:forEach>
		    	</div>
	        </div>
	    </section>
	    <section class="section-1 portfolio">
	    	<div class="container">
	        <h3>FOOD</h3>
		        <div class="wrap">
		        	<c:forEach items="${requestScope.scrapeList}" var="scrape">
						<c:if test="${ scrape.getCategory() eq 'food' }">
							<img src="/WPlan/resources/upload/${scrape.getfSaveName()}"/>
						</c:if>
					</c:forEach>
		    	</div>
	        </div>
	    </section>
	    <section class="section-1 portfolio">
	    	<div class="container">
	        <h3>DECO</h3>
		        <div class="wrap">
		        	<c:forEach items="${requestScope.scrapeList}" var="scrape">
						<c:if test="${ scrape.getCategory() eq 'deco' }">
							<img src="/WPlan/resources/upload/${scrape.getfSaveName()}"/>
						</c:if>
					</c:forEach>
		    	</div>
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
