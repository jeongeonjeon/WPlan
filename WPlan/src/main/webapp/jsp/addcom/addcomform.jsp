<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	function readURL(input) {

		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#image_section').attr('src', e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
		}
	}
	

	$(document).ready(function() {
		$("#imgInput").change(function() {
			readURL(this);
		});
	});
</script>
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
	<div>
		이미지 등록<br>
		<form id="form">
			<div>
				<img id="image_section" src="${ pageContext.request.contextPath }/resources/images/hall2.jpg" />
			</div>
			<br> 
			<input type='file' id="imgInput" />
		</form>
		<br> 
		업체명<br> <input type="text" size="40%"><br>
		업체설명<br>
		<textarea style="height: 70px; width: 500px;"></textarea>
		<br> 
		운영정책<br> 
		<input type="checkbox">소음규제&nbsp;&nbsp;
		<input type="checkbox">주차&nbsp;&nbsp;
		<input type="checkbox">재봉&nbsp;&nbsp;
		<input type="checkbox">피팅사진촬영&nbsp;&nbsp; 
		<input type="checkbox">제공범위&nbsp;&nbsp; 
		<input type="checkbox">사전미팅<br> 
		
		<input type="checkbox">식사&nbsp;&nbsp;
		<input type="checkbox">음향&nbsp;&nbsp; 
		<input type="checkbox">주류&nbsp;&nbsp;
		<input type="checkbox">흡연&nbsp;&nbsp; 
		<input type="checkbox">숙박&nbsp;&nbsp;
		<input type="checkbox">주차 <br> 
		
		<input type="checkbox">발렛&nbsp;&nbsp;
		<input type="checkbox">주차안내&nbsp;&nbsp; 
		<input type="checkbox">버스진입&nbsp;&nbsp;
		<input type="checkbox">WIFI&nbsp;&nbsp; 
		<input type="checkbox">의자/테이블&nbsp;&nbsp;
		<input type="checkbox">웨딩진행인력 <br>


		<input type="checkbox">판매방식<input type="text"><br>
		<input type="checkbox">피팅시간<input type="text"><br>
		<input type="checkbox">피팅 가능 개수<input type="text"><br>
		<input type="checkbox">제공/대여소품<input type="text"><br>
		<input type="checkbox">타입<input type="text"><br>
		<input type="checkbox">이용시간<input type="text"><br>
		<input type="checkbox">기타<input type="text"><br>

		<br> 
		문의사항<br> 
		<input type="text" size="60%"><br>
		후기<br>
		<textarea style="height: 70px; width: 500px;"></textarea>
		<br>
	</div>
	위치(지도)
	<br>
	<div id="map" style="width: 500px; height: 400px;"></div>
		</div>
	<%@ include file="/jsp/include/sideSlider.jsp"%>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d6b5849297b66eb073f197fef410d84a"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center : new daum.maps.LatLng(37.499395, 127.028982),
			level : 3
		};
		var map = new daum.maps.Map(container, options);
	</script>
</body>
</html>
