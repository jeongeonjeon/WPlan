<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

.floating-menu span {
	color :#6d6d6d;
	font-weight: bold;
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
	width: calc(95% - 350px);
	overflow: hidden;
	float: right;
	margin: 1% 5% 3% 0;
}
.product .imgs {
	border: 3px solid #eee;
	width: 720px;
	height: 140px;
	position: relative;
	margin : 20px auto 5px;
	padding : 0 10px;
}
.product .imgs img{
	height : 130px;
	margin : 2px 4px;
}

.product .making {
	border: 3px solid #eee;
	width: 720px;
	height: 490px;
	position: relative;
	margin : 0 auto;
}

.section-1.product button{
	width : 110px;
	height: 35px;
	float : right;
	margin: 20px 0;
	border : 2px solid #FFB9B2;
	font-weight: bold;
	color: #fff;
	background-color: #FFB9B2;
	border-radius: 3px;

}
	
.section-1.product .simulBtn{
	margin : 20px 10px;
	color :#6d6d6d;
	background-color: #FFF; 
}
.section-1 .add{
	overflow: hidden;
    width: 720px;
    margin: 0 auto;
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
		jQuery.ajaxSettings.traditional = true;

		var imgArr = new Array();
		
		$('.select_area img').dblclick(function() {
			var src = $(this).attr('src');
			var category = $(this).attr('name');
			if(category == "location"){
				imgArr[0] = src;
			}else if(category == "dress") {
				imgArr[1] = src;
			}else if(category == "tuxedo") {
				imgArr[2] = src;
			}
			var html = "<img src='"+src+"' name='"+category+"'>";

			$('.imgs').append(html);

		});
		
		$('.black_bg .cancelBtn').click(function(){
			var bool = confirm('My wedding이 저장되지 않았습니다.\n정말로 나가시겠습니까?');
			if(bool){
				alert('메인페이지로 이동합니다.');
				location.href = "${ pageContext.request.contextPath }";
			}
		});

		$('.simulBtn').click(function(){
			
			console.log(imgArr);
			
			var simul = {
					"imgArr" : imgArr
			};
	
			 $.ajax({
				url : "${ pageContext.request.contextPath }/makeWedding",
				type: "post",
				data : simul,
				success : function() {
					alert('시뮬레이션 성공!');
				}
			});  
		});
	});
	
</script>
</head>
<body>
	<div class="wrapper_make" >
		<div class="black_bg">
			<a href="javascript:;">
				<img class="cancelBtn" src="${ pageContext.request.contextPath }/resources/images/cancel.png" >
			</a>
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
		        	<c:forEach items="${requestScope.scrapeList}" var="scrape">
						<c:if test="${ scrape.getCategory() eq 'dress' }">
							<img src="/WPlan/resources/upload/${scrape.getfSaveName()}" name="${ scrape.getCategory() }"/>
						</c:if>
					</c:forEach>
				</div>
				<div class="wrap scroll" id="section-02">
					<p>TOXEDO</p>
		        	<c:forEach items="${requestScope.scrapeList}" var="scrape">
						<c:if test="${ scrape.getCategory() eq 'tuxedo' }">
							<img src="/WPlan/resources/upload/${scrape.getfSaveName()}" name="${ scrape.getCategory() }"/>
						</c:if>
					</c:forEach>
				</div>
				<div class="wrap scroll" id="section-03">
					<p>LOCATION</p>
		        	<c:forEach items="${requestScope.scrapeList}" var="scrape">
						<c:if test="${ scrape.getCategory() eq 'location' }">
							<img src="/WPlan/resources/upload/${scrape.getfSaveName()}"  name="${ scrape.getCategory() }"/>
						</c:if>
					</c:forEach>
				</div>
				<div class="wrap scroll" id="section-04">
					<p>DECO</p>
		        	<c:forEach items="${requestScope.scrapeList}" var="scrape">
						<c:if test="${ scrape.getCategory() eq 'deco' }">
							<img src="/WPlan/resources/upload/${scrape.getfSaveName()}"  name="${ scrape.getCategory() }"/>
						</c:if>
					</c:forEach>
				</div>
			</aside>
			<section class="section-1 product">
			
				<div class="imgs">
				</div>
				<div class="making">
				</div>
				<div class="add">
					<button class="addBtn">이미지 저장</button>
					<button class="simulBtn">시뮬레이션</button>
				</div>
	
			</section>
	
		</div>
	</div>

</body>

</html>
