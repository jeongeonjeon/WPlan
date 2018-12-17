<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css">
	<link rel="stylesheet"	href="${ pageContext.request.contextPath }/resources/css/animate.css">
	<link rel="stylesheet"	href="${ pageContext.request.contextPath }/resources/css/main.css">

    <title>more</title>
    <style>
    .jumbotron {width: 100%;height: 250px;}
        .jumbotron h2 {padding-bottom: 0;}
    </style>
    
       <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.js"></script>
	<script	src="${ pageContext.request.contextPath }/resources/js/animate.js"></script>
	<script	src="${ pageContext.request.contextPath }/resources/js/custom.js"></script>
    <script>
        $(document).on('click', '[data-toggle="lightbox"]', function(event) {
            event.preventDefault();
            $(this).ekkoLightbox();
        });

    </script>
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
    
    <!--Section-5-->
    <section class="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-12">
                    <h3>portfolios</h3>
                </div>
            </div>
        </div>
        <hr>
        <div class="container-fluid">
            <div class="row" data-aos="fade-up" data-aos-delay="300">
                <a href="${ pageContext.request.contextPath }/resources/images/portfolio-2.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-3 box">
                  <img src="${ pageContext.request.contextPath }/resources/images/portfolio-2.jpg" class="img-fluid">
                  <div class="overlay">
                  <img src="${ pageContext.request.contextPath }/resources/images/plus-img.png" alt="plus-icon">
                  <div class="inner-text"><h4>beautiful beach <span>top view</span></h4></div>
                  </div>
                </a>
                <a href="${ pageContext.request.contextPath }/resources/images/portfolio-3.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-3 box">
                  <img src="${ pageContext.request.contextPath }/resources/images/portfolio-3.jpg" class="img-fluid">
                  <div class="overlay">
                  <img src="${ pageContext.request.contextPath }/resources/images/plus-img.png" alt="plus-icon">
                  <div class="inner-text"><h4>beautiful beach <span>top view</span></h4></div>
                  </div>
                </a>
                <a href="${ pageContext.request.contextPath }/resources/images/portfolio-4.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-3 box">
                  <img src="${ pageContext.request.contextPath }/resources/images/portfolio-4.jpg" class="img-fluid">
                  <div class="overlay">
                  <img src="${ pageContext.request.contextPath }/resources/images/plus-img.png" alt="plus-icon">
                  <div class="inner-text"><h4>beautiful beach <span>top view</span></h4></div>
                  </div>
                </a>
                <a href="${ pageContext.request.contextPath }/resources/images/portfolio-5.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-3 box">
                  <img src="${ pageContext.request.contextPath }/resources/images/portfolio-5.jpg" class="img-fluid">
                  <div class="overlay">
                  <img src="${ pageContext.request.contextPath }/resources/images/plus-img.png" alt="plus-icon">
                  <div class="inner-text"><h4>beautiful beach <span>top view</span></h4></div>
                  </div>
                </a>
            </div>
            <!--/row-->
            <div class="row" data-aos="fade-up" data-aos-delay="300">
                <a href="${ pageContext.request.contextPath }/resources/images/portfolio-2.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-3 box">
                  <img src="${ pageContext.request.contextPath }/resources/images/portfolio-2.jpg" class="img-fluid">
                  <div class="overlay">
                  <img src="${ pageContext.request.contextPath }/resources/images/plus-img.png" alt="plus-icon">
                  <div class="inner-text"><h4>beautiful beach <span>top view</span></h4></div>
                  </div>
                </a>
                <a href="${ pageContext.request.contextPath }/resources/images/portfolio-3.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-3 box">
                  <img src="${ pageContext.request.contextPath }/resources/images/portfolio-3.jpg" class="img-fluid">
                  <div class="overlay">
                  <img src="${ pageContext.request.contextPath }/resources/images/plus-img.png" alt="plus-icon">
                  <div class="inner-text"><h4>beautiful beach <span>top view</span></h4></div>
                  </div>
                </a>
                <a href="${ pageContext.request.contextPath }/resources/images/portfolio-4.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-3 box">
                  <img src="${ pageContext.request.contextPath }/resources/images/portfolio-4.jpg" class="img-fluid">
                  <div class="overlay">
                  <img src="${ pageContext.request.contextPath }/resources/images/plus-img.png" alt="plus-icon">
                  <div class="inner-text"><h4>beautiful beach <span>top view</span></h4></div>
                  </div>
                </a>
                <a href="${ pageContext.request.contextPath }/resources/images/portfolio-5.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-3 box">
                  <img src="${ pageContext.request.contextPath }/resources/images/portfolio-5.jpg" class="img-fluid">
                  <div class="overlay">
                  <img src="${ pageContext.request.contextPath }/resources/images/plus-img.png" alt="plus-icon">
                  <div class="inner-text"><h4>beautiful beach <span>top view</span></h4></div>
                  </div>
                </a>
            </div>
            <!--/row-->
            <div class="row" data-aos="fade-up" data-aos-delay="300">
                <a href="${ pageContext.request.contextPath }/resources/images/portfolio-2.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-3 box">
                  <img src="${ pageContext.request.contextPath }/resources/images/portfolio-2.jpg" class="img-fluid">
                  <div class="overlay">
                  <img src="${ pageContext.request.contextPath }/resources/images/plus-img.png" alt="plus-icon">
                  <div class="inner-text"><h4>beautiful beach <span>top view</span></h4></div>
                  </div>
                </a>
                <a href="${ pageContext.request.contextPath }/resources/images/portfolio-3.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-3 box">
                  <img src="${ pageContext.request.contextPath }/resources/images/portfolio-3.jpg" class="img-fluid">
                  <div class="overlay">
                  <img src="${ pageContext.request.contextPath }/resources/images/plus-img.png" alt="plus-icon">
                  <div class="inner-text"><h4>beautiful beach <span>top view</span></h4></div>
                  </div>
                </a>
                <a href="${ pageContext.request.contextPath }/resources/images/portfolio-4.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-3 box">
                  <img src="${ pageContext.request.contextPath }/resources/images/portfolio-4.jpg" class="img-fluid">
                  <div class="overlay">
                  <img src="${ pageContext.request.contextPath }/resources/images/plus-img.png" alt="plus-icon">
                  <div class="inner-text"><h4>beautiful beach <span>top view</span></h4></div>
                  </div>
                </a>
                <a href="${ pageContext.request.contextPath }/resources/images/portfolio-5.jpg" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-3 box">
                  <img src="${ pageContext.request.contextPath }/resources/images/portfolio-5.jpg" class="img-fluid">
                  <div class="overlay">
                  <img src="${ pageContext.request.contextPath }/resources/images/plus-img.png" alt="plus-icon">
                  <div class="inner-text"><h4>beautiful beach <span>top view</span></h4></div>
                  </div>
                </a>
            </div>
            <!--/row-->
            <div class="load-more">
                <button type="button" class="btn btn-secondary">load more</button>
            </div>
        </div>
        <!--container-->
    </section>
   
    <section class="section-7">
        <!-- Footer -->
        <footer class="page-footer font-small stylish-color-dark">
			<%@ include file="/jsp/include/footer.jsp" %>
        </footer>
        <!-- Footer -->
    </section>


</body>

</html>
