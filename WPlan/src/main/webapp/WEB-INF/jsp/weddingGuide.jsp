<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>more</title>
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/css/member.css">
<jsp:include page="/WEB-INF/jsp/include/head.jsp" />

<style type="text/css">
.container.section-2 {
	padding: 0;
	
}
</style>
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

		<aside class="rAside">
			<div>
				<ul class="rMenu">
					<li class="calendar"><a href="#">캘린더</a></li>
					<li class="rList"><a href="#">예약리스트</a></li>
					<li class="myInfo"><a href="#">내 정보</a></li>
				</ul>
				`
			</div>
		</aside>
			<section class="mSection box">
			<div class="container section-2">
				<br>
				<h3>결혼가이드</h3>
				<br>
				<p>진행도를 체크해주시면 이용자님을 위한 TO DO LIST를 만들어드릴게요!</p>
				<br>
				<form:form method="post" commandName="guideVO">
					<div id="formStep">
						<div class="progress"></div>
						<div class="modal-form-list">
							<div data-id="001">
								<h4>1. 상견례는 하셨나요?</h4>
								<form:radiobutton path="premeet" value="yes" label="네"/><br>
								<form:radiobutton path="premeet" value="no" label="아니요"/><br>
								<form:radiobutton path="premeet" value="noneed" label="필요없어요"/><br>
								<form:errors pathe="premeet"/>
							</div>
						</div>
						<div>
							<button class="fBtn next">다음</button>
						</div>
						<div class="modal-form-list">
							<div data-id="002">
								<h4>2. 스튜디오는 정하셨나요?</h4>
								<form:radiobutton path="studio" value="yes" label="네"/><br>
								<form:radiobutton path="studio" value="no" label="아니요"/><br>
								<form:radiobutton path="studio" value="noneed" label="필요없어요"/><br>
								<form:errors pathe="studio"/>
							</div>
						</div>
						<div>
							<button class="fBtn pre">이전</button>
							<button class="fBtn next">다음</button>
						</div>
						<div class="modal-form-list">
							<div data-id="003">
								<h4>3. 드레스는 정하셨나요?</h4>
								<form:radiobutton path="dress" value="yes" label="네"/><br>
								<form:radiobutton path="dress" value="no" label="아니요"/><br>
								<form:radiobutton path="dress" value="noneed" label="필요없어요"/><br>
								<form:errors pathe="dress"/>
							</div>
						</div>
						<div>
							<button class="fBtn pre">이전</button>
							<button class="fBtn next">다음</button>
						</div>
						<div class="modal-form-list">
							<div data-id="004">
								<h4>4. 턱시도는 정하셨나요?</h4>
								<form:radiobutton path="tuxedo" value="yes" label="네"/><br>
								<form:radiobutton path="tuxedo" value="no" label="아니요"/><br>
								<form:radiobutton path="tuxedo" value="noneed" label="필요없어요"/><br>
								<form:errors pathe="tuxedo"/>
							</div>
						</div>
						<div>
							<button class="fBtn pre">이전</button>
							<button class="fBtn next">다음</button>
						</div>
						<div class="modal-form-list">
							<div data-id="005">
								<h4>5. 메이크업 할 곳은 정하셨나요?</h4>
								<form:radiobutton path="makeup" value="yes" label="네"/><br>
								<form:radiobutton path="makeup" value="no" label="아니요"/><br>
								<form:radiobutton path="makeup" value="noneed" label="필요없어요"/><br>
								<form:errors pathe="makeup"/>
							</div>
						</div>
						<div>
							<button class="fBtn pre">이전</button>
							<button class="fBtn next">다음</button>
						</div>
						<div class="modal-form-list">
							<div data-id="006">
								<h4>6. 부케는 정하셨나요?</h4>
								<form:radiobutton path="bouquet" value="yes" label="네"/><br>
								<form:radiobutton path="bouquet" value="no" label="아니요"/><br>
								<form:radiobutton path="bouquet" value="noneed" label="필요없어요"/><br>
								<form:errors pathe="bouquet"/>
							</div>
						</div>
						<div>
							<button class="fBtn pre">이전</button>
							<button class="fBtn next">다음</button>
						</div>
						<div class="modal-form-list">
							<div data-id="007">
								<h4>7. 결혼식 장소는 정해지셨나요?</h4>
								<form:radiobutton path="location" value="yes" label="네"/><br>
								<form:radiobutton path="location" value="no" label="아니요"/><br>
								<form:radiobutton path="location" value="noneed" label="필요없어요"/><br>
								<form:errors pathe="location"/>
							</div>
						</div>
						<div>
							<button class="fBtn pre">이전</button>
							<button class="fBtn next">다음</button>
						</div>
						<div class="modal-form-list">
							<div data-id="008">
								<h4>8. 식장을 어떻게 꾸밀지는 정하셨나요?</h4>
								<form:radiobutton path="deco" value="yes" label="네"/><br>
								<form:radiobutton path="deco" value="no" label="아니요"/><br>
								<form:radiobutton path="deco" value="noneed" label="필요없어요"/><br>
								<form:errors pathe="deco"/>
							</div>
						</div>
						<div>
							<button class="fBtn pre">이전</button>
							<button class="fBtn next">다음</button>
						</div>
						<div class="modal-form-list">
							<div data-id="009">
								<h4>9. 하객분들께 대접할 음식 준비는 되셨나요?</h4>
								<form:radiobutton path="food" value="yes" label="네"/><br>
								<form:radiobutton path="food" value="no" label="아니요"/><br>
								<form:radiobutton path="food" value="noneed" label="필요없어요"/><br>
								<form:errors pathe="food"/>
							</div>
						</div>
						<div>
							<button class="fBtn pre">이전</button>
							<button class="fBtn next">다음</button>
						</div>
						<div class="modal-form-list">
							<div data-id="010">
								<h4>10. 청첩장은 준비가 되셨나요?</h4>
								<form:radiobutton path="letter" value="yes" label="네"/><br>
								<form:radiobutton path="letter" value="no" label="아니요"/><br>
								<form:radiobutton path="letter" value="noneed" label="필요없어요"/><br>
								<form:errors pathe="letter"/>
							</div>
						</div>
						<div>
							<button class="fBtn pre">이전</button>
							<button class="fBtn next">다음</button>
						</div>
						<div class="modal-form-list">
							<div data-id="011">
								<h4>11. 사회자와 주례는 정해지셨나요?</h4>
								<form:radiobutton path="mc" value="yes" label="네"/><br>
								<form:radiobutton path="mc" value="no" label="아니요"/><br>
								<form:radiobutton path="mc" value="noneed" label="필요없어요"/><br>
								<form:errors pathe="mc"/>
							</div>
						</div>
						<div>
							<button class="fBtn pre">이전</button>
							<button class="fBtn next">다음</button>
						</div>
						<div class="modal-form-list">
							<div data-id="012">
								<h4>12. 예단과 예물은 준비되셨나요?</h4>
								<form:radiobutton path="present" value="yes" label="네"/><br>
								<form:radiobutton path="present" value="no" label="아니요"/><br>
								<form:radiobutton path="present" value="noneed" label="필요없어요"/><br>
								<form:errors pathe="present"/>
							</div>
						</div>
						<div>
							<button class="fBtn pre">이전</button>
							<button class="fBtn next">다음</button>
						</div>
						<div class="modal-form-list">
							<div data-id="013">
								<h4>13. 신혼여행은 어떻게 하실지 정하셨나요?</h4>
								<form:radiobutton path="honeymoon" value="yes" label="네"/><br>
								<form:radiobutton path="honeymoon" value="no" label="아니요"/><br>
								<form:radiobutton path="honeymoon" value="noneed" label="필요없어요"/><br>
								<form:errors pathe="honeymoon"/>
							</div>
						</div>
						<div>
							<button class="fBtn pre">이전</button>
							<button class="fBtn next">다음</button>
						</div>
						<div class="modal-form-list">
							<div data-id="014">
								<h4>14. 답례품은 준비하셨나요?</h4>
								<form:radiobutton path="represent" value="yes" label="네"/><br>
								<form:radiobutton path="represent" value="no" label="아니요"/><br>
								<form:radiobutton path="represent" value="noneed" label="필요없어요"/><br>
								<form:errors pathe="represent"/>
							</div>
						</div>
						<div>
							<button class="fBtn pre">이전</button>
							<button class="fBtn next">다음</button>
						</div>
						<div class="modal-form-list">
							<div data-id="015">
								<h4>15. 신혼집은 구하셨나요?</h4>
								<form:radiobutton path="home" value="yes" label="네"/><br>
								<form:radiobutton path="home" value="no" label="아니요"/><br>
								<form:radiobutton path="home" value="noneed" label="필요없어요"/><br>
								<form:errors pathe="home"/>
							</div>
						</div>
						<div>
							<button class="fBtn pre">이전</button>
							<button class="fBtn next" type="submit">등록</button>
						</div>
					</div>
				
				</form:form>
			</div>
		</section>
		<section class="section-7">
			<%@ include file="/WEB-INF/jsp/include/footer.jsp"%>
		</section>
	</div>
	<%@ include file="/WEB-INF/jsp/include/sideSlider.jsp"%>

</body>

</html>
