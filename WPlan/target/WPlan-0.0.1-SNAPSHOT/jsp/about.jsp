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
</head>

<body>
    <header class="header bg">
        <jsp:include page="/jsp/include/topLogo.jsp" />
    </header>
    <span class="position-absolute trigger"><!-- hidden trigger to apply 'stuck' styles --></span>
    <nav class="navbar navbar-expand-sm sticky-top navbar-dark">
       	<jsp:include page="/jsp/include/topMenu.jsp" />
    </nav>
    <!--Section-1-->
    <section class="section-1">
        <div class="jumbotron d-flex align-items-center">
            <div class="gradient"></div>
            <div class="container-fluid content">
                <h1 data-aos="fade-right" data-aos-delay="300">Welcome to more.</h1>
                <h2 data-aos="fade-left" data-aos-delay="300">the multipurpose psd wordrpess theme</h2>
            </div>
            <!--container-fluid end-->
        </div>
    </section>
    
    <!-- About Section Start -->
    <div id="about-us">
        <div class="container">
           <h3>About us</h3>
            <div class="row" style="margin-right: 0; margin-left: 0;" data-aos="fade-up" data-aos-delay="300">
                <div>
                 <img src="${ pageContext.request.contextPath }/resources/images/about.jpg" alt="about-bg" class="thumbnail image">
                  <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem industry. Lorem Ipsum has been dummy text of the printing and typesetting industry. Lorem Ipsum has been thdummy text of the e industry's...e industry' Lorem Ipsum is simply du <br><br>
                
                  Text of the printing and typesetting industry. Lorem industry. Lorem Ipsum has been dummy text of the printing and typesetting industry. Lorem Ipsum has been thdummy text of the e industry's...e industry's...Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem industry. Lorem Ipsum has been dummy text of the printing and typesetting industry. Lorem Ipsum has been thdummy text of the e industry's...e industry's... <br><br>
                  
                  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem industry. Lorem Ipsum has been dummy text of the printing and typesetting industry. Lorem Ipsum has been thdummy text of the e industry's...e industry'. <br><br>
                  
                  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem industry. Lorem Ipsum has been dummy text of the printing and typesetting industry. Lorem Ipsum has been thdummy text of the e industry's...e industry's...Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem industry. Lorem Ipsum has been dummy text of the printing typesetting typesetting typesetting typesetting typesetting industry. Lorem Ipsum has been thdummy text of the e industry's...e industry's... <br><br>
                  
                  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem industry. Lorem Ipsum has been dummy text of the printing and typesetting industry. Lorem Ipsum has been thdummy text of the e typesetting ...e industry's...Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem industry. Lorem Ipsum has been dummy text of the printing and typesetting industry. Lorem Ipsum has been thdummy text of the e industry's...e industry' Lorem Ipsum is simply du <br><br>
                  
                  mmy text of the printing and typesetting industry. Lorem industry. Lorem Ipsum has been dummy text of the printing and typesetting industry. Lorem Ipsum has been thdummy text of the e industry's...e industry's...Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem industry. Lorem Ipsum has been dummy text of the printing typesetting typesetting typesetting typesetting typesetting industry. Lorem Ipsum has been thdummy text of the e industry's...e industry's...
                   </p>
                </div>
             </div>
        </div>
    </div>
    <!-- About Section End -->
   
    <section class="section-7">
        <!-- Footer -->
        <footer class="page-footer font-small stylish-color-dark">
			<%@ include file="/jsp/include/footer.jsp" %>
        </footer>
        <!-- Footer -->
    </section>
</body>

</html>
