<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>more</title>
    <jsp:include page="/jsp/include/head.jsp" />
    <style>
    	.jumbotron {width: 100%;height: 250px;}
        .jumbotron h2 {padding-bottom: 0;}
    </style>
    
    
<style media="screen">
   .wrap{
	    width:70%; 
	    height:40%;
	    white-space:nowrap; 
	    overflow-x:scroll; 
	    margin:0 auto;
   }
    @media (max-width: 425px) {
      .wrap{
	    width:95%; 
	    height:40%;
	    white-space:nowrap; 
	    overflow-x:scroll; 
	    margin:0 auto;
   }
   }
   .wrap img{
       width:33.3%;
       height:100%;
   }
    @media (max-width: 425px) {
      .wrap img{
        width: 100%;
 		height: 100%;
   	}
   }
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
    
    
    <!--Section-5-->
    <section class="portfolio">
          <h3>portfolios</h3>
        <hr>
    </section>
        <div class="wrap">
        <div>
	        <img src="../resources/images/blog-2.jpg"/>
	        <img src="../resources/images/blog-2.jpg"/>
	        <img src="../resources/images/blog-3.jpg" />
	        <img src="../resources/images/blog-3.jpg" />
	        <img src="../resources/images/blog-3.jpg" />
	        <img src="../resources/images/blog-3.jpg" />
	        <img src="../resources/images/blog-3.jpg" />
	        <img src="../resources/images/blog-3.jpg" />
	        <img src="../resources/images/blog-3.jpg" />
        </div>
        </div>
        
    <section class="portfolio">
          <h3>portfolios</h3>
        <hr>
    </section>
        <div class="wrap">
        <div>
	        <img src="../resources/images/blog-2.jpg"/>
	        <img src="../resources/images/blog-2.jpg"/>
	        <img src="../resources/images/blog-3.jpg" />
	        <img src="../resources/images/blog-3.jpg" />
	        <img src="../resources/images/blog-3.jpg" />
	        <img src="../resources/images/blog-3.jpg" />
	        <img src="../resources/images/blog-3.jpg" />
	        <img src="../resources/images/blog-3.jpg" />
	        <img src="../resources/images/blog-3.jpg" />
        </div>
        </div>
        
    <section class="portfolio">
          <h3>portfolios</h3>
        <hr>
    </section>
        <div class="wrap">
        <div>
	        <img src="../resources/images/blog-2.jpg"/>
	        <img src="../resources/images/blog-2.jpg"/>
	        <img src="../resources/images/blog-3.jpg" />
	        <img src="../resources/images/blog-3.jpg" />
	        <img src="../resources/images/blog-3.jpg" />
	        <img src="../resources/images/blog-3.jpg" />
	        <img src="../resources/images/blog-3.jpg" />
	        <img src="../resources/images/blog-3.jpg" />
	        <img src="../resources/images/blog-3.jpg" />
        </div>
        </div>
   
    <section class="section-7">
        <!-- Footer -->
        <footer class="page-footer font-small stylish-color-dark">
			<%@ include file="/jsp/include/footer.jsp" %>
        </footer>
        <!-- Footer -->
    </section>


</body>

</html>
