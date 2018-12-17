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
 	<script	src="${ pageContext.request.contextPath }/resources/js/animate.js"></script>
	<script	src="${ pageContext.request.contextPath }/resources/js/custom.js"></script>
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
    
<!-- Contact section Start -->
<div id="contact">
  <div class="container">
  <h3>Contact Us</h3>
  <div class="row" data-aos="fade-up" data-aos-delay="300">
      <div class="col-md-12 text-left">
          <p>Lorem Ipsum is simply dummy text of the printing and scrambled it to make a type specimen book. It has survived not only fiveLorem Ipsum is simply dummy text of the printing and scrambled it to make a type specimen book. It has survived not only fiveLorem Ipsum is simply dummy text of the printing and scrambled it to make a type specimen book. I</p>
      </div>
  </div>
    </div>
     <div class="container py-5">
      <div class="row" data-aos="fade-up" data-aos-delay="300">
          <div class="col-md-12">
              <form>
                  <div class="form-group row">
                      <div class="col-sm-6">
                          <input type="text" class="form-control" placeholder="Your Name" required>
                      </div>
                          <div class="col-sm-6">
                          <input type="text" class="form-control" placeholder="Your Email" required>
                      </div>
                      <div class="col-sm-12">
                          <input type="number" class="form-control" placeholder="Your Phont Number" required>
                      </div>
                  </div>
                  <div class="form-group row">
                      <div class="col-xs-12 col-md-12">
                          <textarea type="text" class="form-control" placeholder="Your Message" rows="6" required></textarea>
                      </div>
                  </div>
                  <button type="submit" class="btn btn-primary">Alright Submit it</button>
              </form>
          </div>
      </div>
     </div>
</div>

<!-- Contact section Ended -->
   
    <section class="section-7">
        <!-- Footer -->
        <footer class="page-footer font-small stylish-color-dark">
			<%@ include file="/jsp/include/footer.jsp" %>
        </footer>
        <!-- Footer -->
    </section>

</body>

</html>
