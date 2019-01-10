<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>more</title>
<jsp:include page="/WEB-INF/jsp/include/head.jsp" />
<style>
p,ul,li{
	margin:0;
	padding:0;
}

.black_bg{
	position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: black;
    opacity: 0.5;
    z-index: 9990;
}

.black_bg img{
	position:fixed;
	right:10px;
	top:10px;
	width:20px;
	
}
.wrapper{
	width:90%;
	height: 90vh;    
	position: fixed;
    left: 5%;
    top: 5vh;
    background: #fff;
	z-index: 9999;
	overflow: hidden;
}

.section-01, .section-02, .section-03 {
	position: relative;
}

/* floating menu */
.floating-menu {
	position: relative;
	float: left;
	z-index: 100;
	width: 50px;
	height:100%;
	background-color: #d4cecf;; /*background: url("") 0 0 no-repeat;*/
}

.floating-menu li {
	margin: 0;
	*float: left;
}

.floating-menu a {
	display: block;
	width: 50px;
	height: 25%;
	padding: 10px 0;
	color: #fff;
	text-align: center;
	text-decoration: none;
	writing-mode:tb-rl;
}


.floating-menu li.on a {
	background-color: #333;
	color: #fff; /*background: url("") 0 0 no-repeat;*/
}

.floating-menu li.on a.menu-01 { 
	/* background-position: -131px 0;*/
}

.floating-menu li.on a.menu-02 {
	/* background-position: -131px -104px;*/
}

.floating-menu li.on a.menu-03 { 
	/*background-position: -131px -219px;*/
}


.floating-menu li.on a.menu-03 { 
	/*background-position: -131px -334px;*/
}

.select_area {
	width: 300px;
	height: 100%;
	position: relative;
	overflow-y: scroll;
	padding: 10px 50px;
	float: left;
}

.select_area::-webkit-scrollbar {
	width: 10px;
	background: transparent;
}

.select_area img {
	width: 180px;
	max-height: 200px;
	padding: 10px;
}

.section-1.product {
	width: calc(80% - 350px);
	overflow: hidden;
	float: right;
	margin: 7% 10%;
}

.product .making {
	border: 3px solid #eee;
	width: 720px;
	height: 490px;
	position: relative;
}

.product .making img {
	max-width: 100%;
	max-height: 100%;
	margin: auto;
}
.section-1.product .addBtn{
	float : right;
	margin: 20px 0;
}

.section-7 {
	clear: both;
}

</style>
<script>
	(function (global, $) {
	
	    var $menu     = $('.floating-menu li.m'),
	        $contents = $('.scroll'),
	        $doc      = $('html, body');
	    $(function () {
	
	        $menu.on('click','a', function(e){
	            var $target = $(this).parent(),
	                idx     = $target.index(),
	                section = $contents.eq(idx),
	                offsetTop = section.offset().top;
	            $doc.stop()
	                    .animate({
	                        scrollTop :offsetTop
	                    }, 800);
	            return false;
	        });
	    });
	
	    $(window).scroll(function(){
	
	        var scltop = $(window).scrollTop();
	
	        $.each($contents, function(idx, item){
	            var $target   = $contents.eq(idx),
	                i         = $target.index(),
	                targetTop = $target.offset().top;
	
	            if (targetTop <= scltop) {
	                $menu.removeClass('on');
	                $menu.eq(idx).addClass('on');
	            }
	            if (!(200 <= scltop)) {
	                $menu.removeClass('on');
	            }
	        })
	
	    });
	
	    var btnTop = $('.btn-top');
	    btnTop.on('click','a', function(e){
	        e.preventDefault();
	        $doc.stop()
	                .animate({
	                    scrollTop : 0
	                },800)
	    });
	
	}(window, window.jQuery));
	$(document).ready(function() {
		$('.select_area img').dblclick(function() {
			var src = $(this).attr('src');
			var html = "<img src='"+src+"'>";

			$('.making').append(html);

		});
	});
</script>
</head>
<body>
	<div class="black_bg">
		<img src="${ pageContext.request.contextPath }/resources/images/cancel.png" >
	</div>
	<div class ="wrapper">
		<div class="floating-menu">
			<ul>
				<li class="m"><a href="#section-01" class="menu-01"><span>드레스</span></a></li>
				<li class="m"><a href="#section-02" class="menu-02"><span>턱시도</span></a></li>
				<li class="m"><a href="#section-03" class="menu-03"><span>장소</span></a></li>
				<li class="m"><a href="#section-04" class="menu-04"><span>데코</span></a></li>
			</ul>
		</div>
		<aside class="select_area">
			<div class="wrap scroll" id="section-01">
				<p>DRESS</p>
				<img src="${ pageContext.request.contextPath }/resources/images/dress1.jpg" /> 
				<img src="${ pageContext.request.contextPath }/resources/images/dress2.jpg" /> 
				<img src="${ pageContext.request.contextPath }/resources/images/dress3.jpg" /> 
				<img src="${ pageContext.request.contextPath }/resources/images/dress1.jpg" /> 
				<img src="${ pageContext.request.contextPath }/resources/images/dress2.jpg" />
			</div>
			<div class="wrap scroll" id="section-02">
				<p>TOXEDO</p>
				<img src="${ pageContext.request.contextPath }/resources/images/dress1.jpg" />
				<img src="${ pageContext.request.contextPath }/resources/images/dress2.jpg" /> 
				<img src="${ pageContext.request.contextPath }/resources/images/dress3.jpg" /> 
				<img src="${ pageContext.request.contextPath }/resources/images/dress1.jpg" /> 
				<img src="${ pageContext.request.contextPath }/resources/images/dress2.jpg" />
			</div>
			<div class="wrap scroll" id="section-03">
				<p>LOCATION</p>
				<img src="${ pageContext.request.contextPath }/resources/images/dress1.jpg" /> 
				<img src="${ pageContext.request.contextPath }/resources/images/dress2.jpg" /> 
				<img src="${ pageContext.request.contextPath }/resources/images/dress3.jpg" /> 
				<img src="${ pageContext.request.contextPath }/resources/images/dress1.jpg" /> 
				<img src="${ pageContext.request.contextPath }/resources/images/dress2.jpg" />
			</div>
			<div class="wrap scroll" id="section-04">
				<p>DECO</p>
				<img src="${ pageContext.request.contextPath }/resources/images/dress1.jpg" /> 
				<img src="${ pageContext.request.contextPath }/resources/images/dress2.jpg" /> 
				<img src="${ pageContext.request.contextPath }/resources/images/dress3.jpg" /> 
				<img src="${ pageContext.request.contextPath }/resources/images/dress1.jpg" /> 
				<img src="${ pageContext.request.contextPath }/resources/images/dress2.jpg" />
			</div>
		</aside>
		<section class="section-1 product">
		
			<div class="making">
			</div>
			<div>
				<button class="addBtn">My wedding 추가</button>
			</div>

		</section>

	</div>

</body>

</html>
