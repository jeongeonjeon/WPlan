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
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script type="text/javascript">
	jssor_1_slider_init = function() {

		var jssor_1_SlideshowTransitions = [ {
			$Duration : 800,
			x : 0.3,
			$During : {
				$Left : [ 0.3, 0.7 ]
			},
			$Easing : {
				$Left : $Jease$.$InCubic,
				$Opacity : $Jease$.$Linear
			},
			$Opacity : 2
		}, {
			$Duration : 800,
			x : -0.3,
			$SlideOut : true,
			$Easing : {
				$Left : $Jease$.$InCubic,
				$Opacity : $Jease$.$Linear
			},
			$Opacity : 2
		}, {
			$Duration : 800,
			x : -0.3,
			$During : {
				$Left : [ 0.3, 0.7 ]
			},
			$Easing : {
				$Left : $Jease$.$InCubic,
				$Opacity : $Jease$.$Linear
			},
			$Opacity : 2
		}, {
			$Duration : 800,
			x : 0.3,
			$SlideOut : true,
			$Easing : {
				$Left : $Jease$.$InCubic,
				$Opacity : $Jease$.$Linear
			},
			$Opacity : 2
		}, {
			$Duration : 800,
			y : 0.3,
			$During : {
				$Top : [ 0.3, 0.7 ]
			},
			$Easing : {
				$Top : $Jease$.$InCubic,
				$Opacity : $Jease$.$Linear
			},
			$Opacity : 2
		}, {
			$Duration : 800,
			y : -0.3,
			$SlideOut : true,
			$Easing : {
				$Top : $Jease$.$InCubic,
				$Opacity : $Jease$.$Linear
			},
			$Opacity : 2
		}, {
			$Duration : 800,
			y : -0.3,
			$During : {
				$Top : [ 0.3, 0.7 ]
			},
			$Easing : {
				$Top : $Jease$.$InCubic,
				$Opacity : $Jease$.$Linear
			},
			$Opacity : 2
		}, {
			$Duration : 800,
			y : 0.3,
			$SlideOut : true,
			$Easing : {
				$Top : $Jease$.$InCubic,
				$Opacity : $Jease$.$Linear
			},
			$Opacity : 2
		}, {
			$Duration : 800,
			x : 0.3,
			$Cols : 2,
			$During : {
				$Left : [ 0.3, 0.7 ]
			},
			$ChessMode : {
				$Column : 3
			},
			$Easing : {
				$Left : $Jease$.$InCubic,
				$Opacity : $Jease$.$Linear
			},
			$Opacity : 2
		}, {
			$Duration : 800,
			x : 0.3,
			$Cols : 2,
			$SlideOut : true,
			$ChessMode : {
				$Column : 3
			},
			$Easing : {
				$Left : $Jease$.$InCubic,
				$Opacity : $Jease$.$Linear
			},
			$Opacity : 2
		}, {
			$Duration : 800,
			y : 0.3,
			$Rows : 2,
			$During : {
				$Top : [ 0.3, 0.7 ]
			},
			$ChessMode : {
				$Row : 12
			},
			$Easing : {
				$Top : $Jease$.$InCubic,
				$Opacity : $Jease$.$Linear
			},
			$Opacity : 2
		}, {
			$Duration : 800,
			y : 0.3,
			$Rows : 2,
			$SlideOut : true,
			$ChessMode : {
				$Row : 12
			},
			$Easing : {
				$Top : $Jease$.$InCubic,
				$Opacity : $Jease$.$Linear
			},
			$Opacity : 2
		}, {
			$Duration : 800,
			y : 0.3,
			$Cols : 2,
			$During : {
				$Top : [ 0.3, 0.7 ]
			},
			$ChessMode : {
				$Column : 12
			},
			$Easing : {
				$Top : $Jease$.$InCubic,
				$Opacity : $Jease$.$Linear
			},
			$Opacity : 2
		}, {
			$Duration : 800,
			y : -0.3,
			$Cols : 2,
			$SlideOut : true,
			$ChessMode : {
				$Column : 12
			},
			$Easing : {
				$Top : $Jease$.$InCubic,
				$Opacity : $Jease$.$Linear
			},
			$Opacity : 2
		}, {
			$Duration : 800,
			x : 0.3,
			$Rows : 2,
			$During : {
				$Left : [ 0.3, 0.7 ]
			},
			$ChessMode : {
				$Row : 3
			},
			$Easing : {
				$Left : $Jease$.$InCubic,
				$Opacity : $Jease$.$Linear
			},
			$Opacity : 2
		}, {
			$Duration : 800,
			x : -0.3,
			$Rows : 2,
			$SlideOut : true,
			$ChessMode : {
				$Row : 3
			},
			$Easing : {
				$Left : $Jease$.$InCubic,
				$Opacity : $Jease$.$Linear
			},
			$Opacity : 2
		}, {
			$Duration : 800,
			x : 0.3,
			y : 0.3,
			$Cols : 2,
			$Rows : 2,
			$During : {
				$Left : [ 0.3, 0.7 ],
				$Top : [ 0.3, 0.7 ]
			},
			$ChessMode : {
				$Column : 3,
				$Row : 12
			},
			$Easing : {
				$Left : $Jease$.$InCubic,
				$Top : $Jease$.$InCubic,
				$Opacity : $Jease$.$Linear
			},
			$Opacity : 2
		}, {
			$Duration : 800,
			x : 0.3,
			y : 0.3,
			$Cols : 2,
			$Rows : 2,
			$During : {
				$Left : [ 0.3, 0.7 ],
				$Top : [ 0.3, 0.7 ]
			},
			$SlideOut : true,
			$ChessMode : {
				$Column : 3,
				$Row : 12
			},
			$Easing : {
				$Left : $Jease$.$InCubic,
				$Top : $Jease$.$InCubic,
				$Opacity : $Jease$.$Linear
			},
			$Opacity : 2
		}, {
			$Duration : 800,
			$Delay : 20,
			$Clip : 3,
			$Assembly : 260,
			$Easing : {
				$Clip : $Jease$.$InCubic,
				$Opacity : $Jease$.$Linear
			},
			$Opacity : 2
		}, {
			$Duration : 800,
			$Delay : 20,
			$Clip : 3,
			$SlideOut : true,
			$Assembly : 260,
			$Easing : {
				$Clip : $Jease$.$OutCubic,
				$Opacity : $Jease$.$Linear
			},
			$Opacity : 2
		}, {
			$Duration : 800,
			$Delay : 20,
			$Clip : 12,
			$Assembly : 260,
			$Easing : {
				$Clip : $Jease$.$InCubic,
				$Opacity : $Jease$.$Linear
			},
			$Opacity : 2
		}, {
			$Duration : 800,
			$Delay : 20,
			$Clip : 12,
			$SlideOut : true,
			$Assembly : 260,
			$Easing : {
				$Clip : $Jease$.$OutCubic,
				$Opacity : $Jease$.$Linear
			},
			$Opacity : 2
		} ];

		var jssor_1_options = {
			$AutoPlay : 1,
			$SlideshowOptions : {
				$Class : $JssorSlideshowRunner$,
				$Transitions : jssor_1_SlideshowTransitions,
				$TransitionsOrder : 1
			},
			$ArrowNavigatorOptions : {
				$Class : $JssorArrowNavigator$
			},
			$ThumbnailNavigatorOptions : {
				$Class : $JssorThumbnailNavigator$,
				$SpacingX : 5,
				$SpacingY : 5
			}
		};

		var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

		/*#region responsive code begin*/

		var MAX_WIDTH = 980;

		function ScaleSlider() {
			var containerElement = jssor_1_slider.$Elmt.parentNode;
			var containerWidth = containerElement.clientWidth;

			if (containerWidth) {

				var expectedWidth = Math.min(MAX_WIDTH || containerWidth,
						containerWidth);

				jssor_1_slider.$ScaleWidth(expectedWidth);
			} else {
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
<script>
	$(document).ready(function() {
		$('.review.tab_content').css('display', 'none');
		$('.q_a.tab_content').css('display', 'none');
		$('.storeInfo.tab_content').css('display', 'block');
		$('.detailMenu .tab').click(function() {
			$('.detailMenu .tab').css("background-color", "#474a48");
			$(this).css("background-color", "#FFB9B2");

			if ($(this).hasClass('storeInfo')) {
				$('.review.tab_content').css('display', 'none');
				$('.q_a.tab_content').css('display', 'none');
				$('.storeInfo.tab_content').css('display', 'block');
			} else if ($(this).hasClass('review')) {
				$('.storeInfo.tab_content').css('display', 'none');
				$('.q_a.tab_content').css('display', 'none');
				$('.review.tab_content').css('display', 'block');
			} else if ($(this).hasClass('q_a')) {
				$('.storeInfo.tab_content').css('display', 'none');
				$('.review.tab_content').css('display', 'none');
				$('.q_a.tab_content').css('display', 'block');
			}

		});
		
		$('.shop_btn.scrap').click(function(){
			location.href="${ pageContext.request.contextPath }/wish";
		});
		
	});
	
	
</script>
<style>
.detail .jssort101 .t {
	width: 193px !important;
	height: 100px !important;
}

.container.section-2 {
	padding: 0px;
	margin: 5px auto;
	background: #FAFAFD;
	width: 95%;
}

.container.section-2 .box {
	padding: 10px calc(( 100% - 1000px) / 2 + 10px);
}

.container.section-2 .box .shopInfo {
	padding: 0 30px;
}

.detailMenu {
	padding: 0;
	margin: 0;
	overflow: hidden;
}

.detailMenu .tab {
	float: left;
	width: 33.33%;
	background-color: #474a48;
}

.detailMenu .tab.storeInfo {
	background-color: #FFB9B2;
}

.detailMenu .tab p {
	text-align: center;
	margin: 8px 0;
	font-weight: bolder;
	color: #FFF;
}

.box .tab_content {
	height: 300px;
}

.contentWrap, .contentWrap .tab_content {
	min-height: 300px;
	height: auto;
	text-align: left;
	padding: 20px;
}

.contentWrap .storeInfo .title {
	font-weight: bold;
	margin-bottom: 0.5rem;
}

.contentWrap .storeInfo .property-features.ptnr_policy {
	padding: 0;
}

.contentWrap .storeInfo .policy_title {
	font-weight: bold;
}

.contentWrap .tab_content textarea {
	width: 100%;
	height: 80px;
	padding: 7px;
	border-left: none;
	border-right: none;
	font-size: 13px;
	box-sizing: border-box;
	resize: none;
}

.contentWrap .tab_content .submit_btn {
	width: 100%;
	height: 40px;
	line-height: 40px;
	margin-top: 10px;
	padding: 0;
	border: none;
	font-size: 18px;
	cursor: pointer;
	box-sizing: border-box;
}

.contentWrap .tab_content .reply_contents_wrap {
	padding: 10px;
	border-bottom: 1px solid #ddd;
	font-size: 15px;
}

.contentWrap .tab_content .reply_contents_wrap:first-child {
	border-top: 1px solid #ddd;
}

.contentWrap .tab_content .reply_contents_wrap .content {
	text-align: left;
}
.option.shopping{
	border-top: 1px solid #ddd;
	border-bottom: 1px solid #ddd;
	margin : 20px 0;
	padding: 30px 0;
	text-align: center;
}
.option.shopping table{
	width:80%;
	margin: 0 10% 20px 10%;
	font-size: 13px;
}

.option.shopping tr{
	height: 30px;
}
.option.shopping th{
	width: 30%;
}
.option.shopping .btn_area{
	text-align: center;
}
.option.shopping .shop_btn{
	width:100px;
	height:35px;
	border : 2px solid #ffb9b2;
	font-size:  13px;
}
.option.shopping .shop_btn.scrap{
	background-color: #ffb9b2;
	font-weight: bold;
	color:#FFF;
}
.option.shopping .shop_btn.scrap:hover{
	background-color: #FFF;
	font-weight: normal;
	color:black;
}
.option.shopping .shop_btn.reserve{
	background-color: #FFF;
}
.option.shopping .shop_btn.reserve:hover{
	background-color: #ffb9b2;
	font-weight: bold;
	color: #FFF;
}
</style>

<jsp:include page="/WEB-INF/jsp/include/head.jsp" />

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

		<div class="container detail section-2">
			<div class="box">
				<div class="shopInfo">
					<h3>WOON</h3>
					<p>서울 강남구 역삼동</p>
					
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
					<script type="text/javascript">
						jssor_1_slider_init();
					</script>
					<!-- #endregion Jssor Slider End -->
				</div>
				<div class="option shopping">
					<table border="0">
						<tbody>
							<tr class="">
								<th scope="row">상품명</th>
								<td>
									<b> rom#109</b>
								</td>
							</tr>
							<tr class="">
								<th scope="row"></th>
								<td>
									<b>| 대여 : 90,000 | 구매 : 168,000 |</b>
								</td>
							</tr>
							<tr class="displaynone">
								<th scope="row">상품가</th>
								<td></td>
							</tr>
							<tr class="">
								<th scope="row">*</th>
								<td>깜짝할인 이벤트 168000-&gt;129000</td>
							</tr>
							<tr class="displaynone">
								<th scope="row">공급사</th>
								<td></td>
							</tr>
							<tr class="">
								<th scope="row">*</th>
								<td>할인판매가 129000</td>
							</tr>
						</tbody>
						<tbody>
							<tr>
								<th>구매/대여</th>
								<td><select>
										<option value="*">- [필수] 옵션을 선택해 주세요 -</option>
										<option value="**">-------------------</option>
										<option value="구매 (무료배송)">구매 (무료배송)</option>
										<option value="대여 (+보증금 7만원 현금 별도 입금)">대여(+보증금 7만원
											현금 별도 입금)</option>
								</select></td>
							</tr>
							<tr>
								<th>사이즈</th>
								<td><select>
										<option value="*">- [필수] 옵션을 선택해 주세요 -</option>
										<option value="**">-------------------</option>
								</select></td>
							</tr>
						</tbody>
					</table>
					<div class="btn_area">
						<button class="shop_btn scrap">스크랩북</button>
						<button class="shop_btn reserve">예약</button>
					</div>

				</div>
				<ul class="detailMenu">
					<li class="storeInfo tab">
						<p>상세정보</p>
					</li>
					<li class="review tab">
						<p>후기</p>
					</li>
					<li class="q_a tab">
						<p>Q&A</p>
					</li>
				</ul>
				<div class="contentWrap">
					<div class="storeInfo tab_content">
						<h4>상세설명</h4>
						<p class="title">나만의 맞춤형 웨딩드레스</p>
						<p>이태리 로마와 밀라노 IED 디자인 스쿨에서 오랜 기간동안 공부한 윤서정, 윤수진 디자이너가 운영하는
							드레스코드 더블유는 내 몸에 꼭 맞는 맞춤형 웨딩드레스를 구매하거나 대여해 드립니다. 사이즈별로 입는 드레스가 아닌,
							디자이너와의 상담을 거쳐 내가 원하는 디자인과 내 몸에 꼭 맞는 웨딩드레스를 입었을 때, 신부는 가장 아름답게
							빛납니다.</p>
						<p class="title">꼭 맞는 드레스이자 합리적인 가격</p>
						<p>드레스코드 더블유 샵은 이대, 아현 웨딩의 거리에 위치해 있습니다. 웨딩드레스 제작 그 자체보다 부수적인
							운영 비용이 훨씬 많이 드는 청담이 아닌 곳을 선택한 덕분에, 드레스코드 더블유는 온전히 웨딩드레스 제작에 더욱
							집중할 수 있었고, 그로 인하여 디자이너 메이드 맞춤 드레스이지만 매우 합리적인 가격에 이용이 가능해졌습니다.</p>
						<p class="title">누구보다 빠르게 유행에 맞추고 선도해 나가는 드레스코드 더블유</p>
						<p>드레스코드 더블유의 윤서정, 윤수진 디자이너는 매년 스페인, 일본, 이탈리아에서 열리는 드레스 박람회에
							매년 참가하고 공부를 게을리 하지 않습니다. 그래서 일본, 중국 심지어 유럽에서도 드레스 구입이 이어지고 있으며,
							높은 퀄리티에 합리적인 가격으로 고객들을 만족시키고 있습니다. 지금 바로 드레스코드 더블유를 방문해보세요!</p>
						<h4>운영정책</h4>
						<div class="show-more body_small visible">
							<ul class="property-features ptnr_policy margin-top-0">
								<li><i class="wd wd-clock"></i> <span class="policy_title">이용시간</span>
									<p>
										메이다이닝 시크릿가든 - 11:00 ~ 15:00<br>메이다이닝 시크릿가든 - 17:00 ~
										21:00
									</p></li>
								<li><i class="wd wd-catering"></i> <span
									class="policy_title">식사</span>
									<p>
										<span class="policy_o">제공</span><br>뷔페(30여가지 계절메뉴) + 스테이크
										메인
									</p></li>
								<li><i class="wd wd-sound"></i> <span class="policy_title">음향</span>
									<p>
										<span class="policy_o">제공</span>, 마이크수량 - 2개, 스피커수량 - 2개<br>유료
										제공 (장소에 문의)
									</p></li>
								<li><i class="wd wd-glass"></i> <span class="policy_title">주류</span>
									<p>
										<span class="policy_o">제공</span> / 주류가격정책 - 유료제공<br>와인,
										맥주, 소프트드링크(콜라/사이다)
									</p></li>
								<li><i class="wd wd-parking"></i> <span
									class="policy_title">주차</span>
									<p>
										<span class="policy_o">가능</span> / 주차비용 - 무료, 주차가능대수 - 50대
									</p></li>
								<li><i class="wd wd-chair"></i> <span class="policy_title">의자/테이블</span>
									<p>
										<span class="policy_x">미제공</span><br>식사를 하는 곳에는 의자/테이블이
										있으나, 결혼식을 하는 공간인 시크릿 가든에는 의자를 별도로 준비해오셔야 합니다.
									</p></li>
								<li><i class="wd wd-others"></i> <span class="policy_title">기타</span>
									<p>
										빔프로젝터<br>저녁 예식의 경우 빔프로젝터 렌탈 가능
									</p></li>
							</ul>
							<div id="map" style="width:100%;height:350px;"></div>
							
							<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1584c42b9181fdd1bc71aebde10ee750&libraries=services"></script>
							<script>
							var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
							    mapOption = {
							        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
							        level: 3 // 지도의 확대 레벨
							    };  
							
							// 지도를 생성합니다    
							var map = new daum.maps.Map(mapContainer, mapOption); 
							
							// 주소-좌표 변환 객체를 생성합니다
							var geocoder = new daum.maps.services.Geocoder();
							
							// 주소로 좌표를 검색합니다
							geocoder.addressSearch('서울시강남구역삼동', function(result, status) {
							
							    // 정상적으로 검색이 완료됐으면 
							     if (status === daum.maps.services.Status.OK) {
							
							        var coords = new daum.maps.LatLng(result[0].y, result[0].x);
							
							        // 결과값으로 받은 위치를 마커로 표시합니다
							        var marker = new daum.maps.Marker({
							            map: map,
							            position: coords
							        });
							
							        // 인포윈도우로 장소에 대한 설명을 표시합니다
							        var infowindow = new daum.maps.InfoWindow({
							            content: '<div style="width:150px;text-align:center;padding:6px 0;">WOON</div>'
							        });
							        infowindow.open(map, marker);
							
							        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
							        map.setCenter(coords);
							    } 
							});    
							</script>
							
							
							
						</div>
					</div>
					<div class="review tab_content">
						<div class="reply_contents_wrap">
							<div class="reply_content">
								<p class="id">
									kimmmme<span class="time"> </span>
								</p>
								<p class="grade">
									평점 <span> 3점 </span>
								</p>
								<p class="content">우왕</p>
							</div>
						</div>
					</div>
					<div class="q_a tab_content">
						<div>
							<textarea class="input" placeholder="Q&A를 입력하세요."></textarea>
							<input class="submit_btn basic_btn" type="button"
								id="comment_btn" value="등록">
						</div>
						<!-- QnA -->
						<div class="reply_contents_wrap">
							<div class="reply_content">
								<p class="id">
									아이디 <span class="time"> ${ review.writeDate } </span>
								</p>
								<p class="content">질문있습니다.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<section class="section-7">
			<!-- Footer -->
			<footer class="page-footer font-small stylish-color-dark">
				<%@ include file="/WEB-INF/jsp/include/footer.jsp"%>
			</footer>
			<!-- Footer -->
		</section>
	</div>
	<%@ include file="/WEB-INF/jsp/include/sideSlider.jsp"%>
</body>

</html>
