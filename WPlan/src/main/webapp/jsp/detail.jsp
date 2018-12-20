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
<!-- #region Jssor Slider Begin -->
<!-- Generator: Jssor Slider Maker -->
<!-- Source: https://www.jssor.com -->
<script
	src="${ pageContext.request.contextPath }/resources/js/jssor.slider-27.5.0.min.js"
	type="text/javascript"></script>
<script type="text/javascript">
       jssor_1_slider_init = function() {

           var jssor_1_SlideshowTransitions = [
             {$Duration:800,x:0.3,$During:{$Left:[0.3,0.7]},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
             {$Duration:800,x:-0.3,$SlideOut:true,$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
             {$Duration:800,x:-0.3,$During:{$Left:[0.3,0.7]},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
             {$Duration:800,x:0.3,$SlideOut:true,$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
             {$Duration:800,y:0.3,$During:{$Top:[0.3,0.7]},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
             {$Duration:800,y:-0.3,$SlideOut:true,$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
             {$Duration:800,y:-0.3,$During:{$Top:[0.3,0.7]},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
             {$Duration:800,y:0.3,$SlideOut:true,$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
             {$Duration:800,x:0.3,$Cols:2,$During:{$Left:[0.3,0.7]},$ChessMode:{$Column:3},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
             {$Duration:800,x:0.3,$Cols:2,$SlideOut:true,$ChessMode:{$Column:3},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
             {$Duration:800,y:0.3,$Rows:2,$During:{$Top:[0.3,0.7]},$ChessMode:{$Row:12},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
             {$Duration:800,y:0.3,$Rows:2,$SlideOut:true,$ChessMode:{$Row:12},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
             {$Duration:800,y:0.3,$Cols:2,$During:{$Top:[0.3,0.7]},$ChessMode:{$Column:12},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
             {$Duration:800,y:-0.3,$Cols:2,$SlideOut:true,$ChessMode:{$Column:12},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
             {$Duration:800,x:0.3,$Rows:2,$During:{$Left:[0.3,0.7]},$ChessMode:{$Row:3},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
             {$Duration:800,x:-0.3,$Rows:2,$SlideOut:true,$ChessMode:{$Row:3},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
             {$Duration:800,x:0.3,y:0.3,$Cols:2,$Rows:2,$During:{$Left:[0.3,0.7],$Top:[0.3,0.7]},$ChessMode:{$Column:3,$Row:12},$Easing:{$Left:$Jease$.$InCubic,$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
             {$Duration:800,x:0.3,y:0.3,$Cols:2,$Rows:2,$During:{$Left:[0.3,0.7],$Top:[0.3,0.7]},$SlideOut:true,$ChessMode:{$Column:3,$Row:12},$Easing:{$Left:$Jease$.$InCubic,$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
             {$Duration:800,$Delay:20,$Clip:3,$Assembly:260,$Easing:{$Clip:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
             {$Duration:800,$Delay:20,$Clip:3,$SlideOut:true,$Assembly:260,$Easing:{$Clip:$Jease$.$OutCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
             {$Duration:800,$Delay:20,$Clip:12,$Assembly:260,$Easing:{$Clip:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
             {$Duration:800,$Delay:20,$Clip:12,$SlideOut:true,$Assembly:260,$Easing:{$Clip:$Jease$.$OutCubic,$Opacity:$Jease$.$Linear},$Opacity:2}
           ];

           var jssor_1_options = {
             $AutoPlay: 1,
             $SlideshowOptions: {
               $Class: $JssorSlideshowRunner$,
               $Transitions: jssor_1_SlideshowTransitions,
               $TransitionsOrder: 1
             },
             $ArrowNavigatorOptions: {
               $Class: $JssorArrowNavigator$
             },
             $ThumbnailNavigatorOptions: {
               $Class: $JssorThumbnailNavigator$,
               $SpacingX: 5,
               $SpacingY: 5
             }
           };

           var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

           /*#region responsive code begin*/

           var MAX_WIDTH = 980;

           function ScaleSlider() {
               var containerElement = jssor_1_slider.$Elmt.parentNode;
               var containerWidth = containerElement.clientWidth;

               if (containerWidth) {

                   var expectedWidth = Math.min(MAX_WIDTH || containerWidth, containerWidth);

                   jssor_1_slider.$ScaleWidth(expectedWidth);
               }
               else {
                   window.setTimeout(ScaleSlider, 30);
               }
           }

           ScaleSlider();

           $Jssor$.$AddEvent(window, "load", ScaleSlider);
           $Jssor$.$AddEvent(window, "resize", ScaleSlider);
           $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
           /*#endregion responsive code end*/
       };
   </script>
<style>
.detail .jssort101 .t {
	width: 193px !important;
	height: 100px !important;
}
.container.section-2{
	padding:0px;
	margin : 5px auto;
	background: #FFFFFF;
	width : 95%;
}
.container.section-2 .box{
	padding: 10px calc((100% - 1000px)/2 + 10px);
}
.container.section-2 .box .shopInfo{
	padding: 0 30px;
}

</style>

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

		<div class="container detail section-2">
			<div class="box">
				<div class="innerBox">
					<div class="shopInfo">
						<h3>WOON</h3>
						<p>주소 : 서울 강남구 역삼동 </p>
						
					</div>
					
					<div class="slider">
						<div id="jssor_1"
							style="position: relative; margin: 0px auto 50 auto; top: 0px; left: 0px; width: 950px; height: 535px; overflow: hidden; visibility: hidden;">
							<!-- Loading Screen -->
							<div data-u="loading" class="jssorl-009-spin"
								style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; text-align: center; background-color: rgba(0, 0, 0, 0.7);">
								<img
									style="margin-top: -19px; position: relative; top: 50%; width: 38px; height: 38px;"
									src="${ pageContext.request.contextPath }/resources/images/spin.svg" />
							</div>
							<div data-u="slides"
								style="cursor: default; position: relative; top: 0px; left: 0px; width: 950px; height: 430px; overflow: hidden;">
								<div>
									<img data-u="image"
										src="${ pageContext.request.contextPath }/resources/images/deco1.jpg" />
									<img data-u="thumb"
										src="${ pageContext.request.contextPath }/resources/images/deco1.jpg">
								</div>
								<div>
									<img data-u="image"
										src="${ pageContext.request.contextPath }/resources/images/deco2.jpg" />
									<img data-u="thumb"
										src="${ pageContext.request.contextPath }/resources/images/deco2.jpg" />
								</div>
								<div>
									<img data-u="image"
										src="${ pageContext.request.contextPath }/resources/images/deco3.jpg" />
									<img data-u="thumb"
										src="${ pageContext.request.contextPath }/resources/images/deco3.jpg" />
								</div>
								<div>
									<img data-u="image"
										src="${ pageContext.request.contextPath }/resources/images/deco4.jpg" />
									<img data-u="thumb"
										src="${ pageContext.request.contextPath }/resources/images/deco4.jpg" />
								</div>
								<div>
									<img data-u="image"
										src="${ pageContext.request.contextPath }/resources/images/food1.jpg" />
									<img data-u="thumb"
										src="${ pageContext.request.contextPath }/resources/images/food1.jpg" />
								</div>
								<div>
									<img data-u="image"
										src="${ pageContext.request.contextPath }/resources/images/food2.jpg" />
									<img data-u="thumb"
										src="${ pageContext.request.contextPath }/resources/images/food2.jpg" />
								</div>
							</div>
							<!-- Thumbnail Navigator -->
							<div data-u="thumbnavigator" class="jssort101"
								style="position: absolute; left: 0px; bottom: 0px; width: 950px; height: 100px; background-color: #000;"
								data-autocenter="1" data-scale-bottom="0.75">
								<div data-u="slides">
									<div data-u="prototype" class="p"
										style="width: 185px; height: 100px;">
										<div data-u="thumbnailtemplate" class="t"></div>
										<svg viewbox="0 0 16000 16000" class="cv">
					                        <circle class="a" cx="8000" cy="8000"
												r="3238.1"></circle>
					                        <line class="a" x1="6190.5" y1="8000"
												x2="9809.5" y2="8000"></line>
					                        <line class="a" x1="8000" y1="9809.5"
												x2="8000" y2="6190.5"></line>
					                    </svg>
									</div>
								</div>
							</div>
						</div>
						<script type="text/javascript">jssor_1_slider_init();</script>
						<!-- #endregion Jssor Slider End -->
			
					</div>
				</div>
			</div>
		</div>

		<section class="section-7">
			<!-- Footer -->
			<footer class="page-footer font-small stylish-color-dark">
				<%@ include file="/jsp/include/footer.jsp"%>
			</footer>
			<!-- Footer -->
		</section>
	</div>
</body>

</html>
