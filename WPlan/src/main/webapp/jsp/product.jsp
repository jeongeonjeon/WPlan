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
    
    <section class="blog">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-12">
                    <h3>Read Blog</h3>
                </div>
            </div>
        </div>    
        <hr>
        <div class="container">
            <!--/row-->
            <div class="row">
                <div class="col-lg-4 col-sm-12 col-12 box-1"  data-aos="fade-right" data-aos-delay="300">
                    <figure class="figure">
                        <a href="${ pageContext.request.contextPath }/jsp/blog_single.jsp"><img src="${ pageContext.request.contextPath }/resources/images/blog-1.jpg" class="figure-img img-fluid" alt="blog"></a>
                        <figcaption class="figure-caption">
                            <h2><a href="${ pageContext.request.contextPath }/jsp/blog_single.jsp">Beautiful girl holding her camera in neck for a photo shoot</a></h2>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five</p>
                            <a href="${ pageContext.request.contextPath }/jsp/blog_single.jsp" class="btn btn-success">+ more</a>
                        </figcaption>
                    </figure>
                </div>
                <div class="col-lg-8 col-sm-12 col-12"  data-aos="fade-left" data-aos-delay="300">
                    <div class="row">
                        <div class="col-sm-6 col-12 box-2">
                            <figure class="figure">
                                <a href="${ pageContext.request.contextPath }/jsp/blog_single.jsp"><img src="${ pageContext.request.contextPath }/resources/images/blog-2.jpg" class="figure-img img-fluid" alt="blog"></a>
                            </figure>
                        </div>
                        <div class="col-sm-6 col-12 box-3">
                            <h4><a href="${ pageContext.request.contextPath }/jsp/blog_single.jsp">Girl working seriously on laptop in office hours</a></h4>
                            <h5>Lorem Ipsum is simply dummy text of the printing and typesetting industry. specimen book. It has survived not only five</h5>
                            <a href="${ pageContext.request.contextPath }/jsp/blog_single.jsp" class="btn btn-success">+ more</a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-12 box-4">
                            <figure class="figure">
                                <a href="${ pageContext.request.contextPath }/jsp/blog_single.jsp"><img src="${ pageContext.request.contextPath }/resources/images/blog-3.jpg" class="figure-img img-fluid" alt="blog"></a>
                            </figure>
                        </div>
                        <div class="col-sm-6 col-12 box-5">
                            <h4><a href="${ pageContext.request.contextPath }/jsp/blog_single.jsp">Girl working seriously on laptop in office hours</a></h4>
                            <h5>Lorem Ipsum is simply dummy text of the printing and typesetting industry. specimen book. It has survived not only five</h5>
                            <a href="${ pageContext.request.contextPath }/jsp/blog_single.jsp" class="btn btn-success">+ more</a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-12 box-6">
                            <figure class="figure">
                                <a href="${ pageContext.request.contextPath }/jsp/blog_single.jsp"><img src="${ pageContext.request.contextPath }/resources/images/blog-1.jpg" class="figure-img img-fluid" alt="blog"></a>
                            </figure>
                        </div>
                        <div class="col-sm-6 col-12 box-7">
                            <h4><a href="${ pageContext.request.contextPath }/jsp/blog_single.jsp">Girl working seriously on laptop in office hours</a></h4>
                            <h5>Lorem Ipsum is simply dummy text of the printing and typesetting industry. specimen book. It has survived not only five</h5>
                            <a href="${ pageContext.request.contextPath }/jsp/blog_single.jsp" class="btn btn-success">+ more</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row bt">
                <div class="col-sm-12">
                    <ul>
                        <li><a class="active" href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                    </ul>
                </div>
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
