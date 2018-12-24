<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>more</title>
    <jsp:include page="/jsp/include/head.jsp" />

</head>
<body>
	<div id="wrapper">
		<jsp:include page="/jsp/login/loginForm.jsp" />
	    <header class="header bg">
	        <jsp:include page="/jsp/include/topLogo.jsp" />
	    </header>
	    <nav class="navbar navbar-expand-sm sticky-top navbar-dark">
	       	<jsp:include page="/jsp/include/topMenu.jsp" />
	    </nav>
	    <section class="section-1 portfolio">
	    	<div class="container">
	        <h3>DRESS</h3>
		        <div class="wrap">
			        <img src="../resources/images/dress1.jpg"/>
			        <img src="../resources/images/dress2.jpg"/>
			        <img src="../resources/images/dress3.jpg" />
			        <img src="../resources/images/dress1.jpg" />
			        <img src="../resources/images/dress2.jpg" />
		    	</div>
	        </div>
	    </section>
	    <section class="section-2 portfolio">
	    	<div class="container">
	        <h3>TOXEDO</h3>
		        <div class="wrap">
			        <img src="../resources/images/dress1.jpg"/>
			        <img src="../resources/images/dress2.jpg"/>
			        <img src="../resources/images/dress3.jpg" />
			        <img src="../resources/images/dress1.jpg" />
			        <img src="../resources/images/dress2.jpg" />
		    	</div>
	        </div>
	    </section>
	    <section class="section-3 portfolio">
	    	<div class="container">
	        <h3>LOCATION</h3>
		        <div class="wrap">
			        <img src="../resources/images/food1.jpg"/>
			        <img src="../resources/images/food2.jpg"/>
			        <img src="../resources/images/food2.jpg" />
			        <img src="../resources/images/food1.jpg" />
		    	</div>
	        </div>
	    </section>
	    <section class="section-4 portfolio">
	    	<div class="container">
	        <h3>FOOD</h3>
		        <div class="wrap">
			        <img src="../resources/images/food1.jpg"/>
			        <img src="../resources/images/food2.jpg"/>
			        <img src="../resources/images/food2.jpg"/>
			        <img src="../resources/images/food1.jpg" />
		    	</div>
	        </div>
	    </section>
	    <section class="section-5 portfolio">
	    	<div class="container">
	        <h3>DECO</h3>
		        <div class="wrap">
			        <img src="../resources/images/deco1.jpg"/>
			        <img src="../resources/images/deco2.jpg"/>
			        <img src="../resources/images/deco3.jpg" />
			        <img src="../resources/images/deco4.jpg" />
			        <img src="../resources/images/deco1.jpg"/>
			        <img src="../resources/images/deco2.jpg"/>
			        <img src="../resources/images/deco3.jpg" />
			        <img src="../resources/images/deco4.jpg" />
		    	</div>
	        </div>
	    </section>
	   
	    <section class="section-7">
	        <!-- Footer -->
	        <footer class="page-footer font-small stylish-color-dark">
				<%@ include file="/jsp/include/footer.jsp" %>
	        </footer>
	        <!-- Footer -->
	    </section>
	</div>
	<%@ include file="/jsp/include/sideSlider.jsp" %>

</body>

</html>
