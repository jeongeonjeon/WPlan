<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<title>more</title>
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/css/member.css">

<jsp:include page="/WEB-INF/jsp/include/head.jsp" />

</head>
<style>
.section-22 {
	padding: 0px;
	margin: 5px auto;
	background: #FAFAFD;
	width: 95%;
}

.section-22 .box {
	padding: 10px calc(( 100% - 1000px)/2+ 10px);
	box-shadow: 0 0 25px rgba(0, 0, 0, .15) !important;
	padding:2%;
}
</style>

<style>
table td {
	width: 150px;
	padding: 4%;
}

select{
	width: 76%;
}

button {
	font-family: "Playfair Display";
	font-weight: 600;
	border-radius: 0px;
	border-width: 1px;
	border-color: rgba(233, 196, 176, 0.5);
	border-style: solid;
	background: rgb(255, 255, 255);
	color: rgb(34, 34, 34);
	height: 40px;
}

input[type=file] {
	display: none;
}

.my_button {
	display: inline-block;
	width: 200px;
	text-align: center;
	padding: 10px;
	text-decoration: none;
	border-radius: 5px;
	font-family: "Playfair Display";
	font-weight: 600;
	border-radius: 0px;
	border-width: 1px;
	border-color: rgba(233, 196, 176, 0.5);
	border-style: solid;
	background: rgb(255, 255, 255);
	color: rgb(34, 34, 34);
	height: 40px;
}

.imgs_wrap {
	border: 2px solid #A8A8A8;
	margin-top: 30px;
	margin-bottom: 30px;
	padding-top: 10px;
	padding-bottom: 10px;
}

.imgs_wrap img {
	max-width: 150px;
	margin-left: 10px;
	margin-right: 10px;
}
textarea{
	resize:none;
}
</style>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<script>
	function sample6_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var addr = ''; // 주소 변수
						var extraAddr = ''; // 참고항목 변수

						//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							addr = data.roadAddress;
						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							addr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
						if (data.userSelectedType === 'R') {
							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (extraAddr !== '') {
								extraAddr = ' extraAddr ';
							}
							// 조합된 참고항목을 해당 필드에 넣는다.
							document.getElementById("sample6_extraAddress").value = extraAddr;

						} else {
							document.getElementById("sample6_extraAddress").value = '';
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample6_postcode').value = data.zonecode;
						document.getElementById("sample6_address").value = addr;
						// 커서를 상세주소 필드로 이동한다.
						document.getElementById("sample6_detailAddress")
								.focus();
					}
				}).open();
	}

	/* 파일 업로드  */

	var sel_files = [];

	$(document).ready(function() {
		$("#input_imgs").on("change", handleImgFileSelect);
	});

	function fileUploadAction() {
		console.log("fileUploadAction");
		$("#input_imgs").trigger('click');
	}

	function handleImgFileSelect(e) {

		sel_files = [];
		$(".imgs_wrap").empty();

		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);

		var index = 0;
		filesArr
				.forEach(function(f) {
					if (!f.type.match("image.*")) {
						alert("이미지파일만 업로드가능");
						return;
					}

					sel_files.push(f);

					var reader = new FileReader();
					reader.onload = function(e) {
						var html = "<a href=\"javascript:void(0);\" onclick=\"deleteImageAction("
								+ index
								+ ")\" id=\"img_id_"
								+ index
								+ "\"><img src=\"" + e.target.result + "\" data-file='"+f.name+"' class='selProductFile' title='Click to remove'></a>";
						$(".imgs_wrap").append(html);
						index++;

					}
					reader.readAsDataURL(f);

				});
	}

	function deleteImageAction(index) {
		console.log("index : " + index);
		console.log("sel length : " + sel_files.length);

		sel_files.splice(index, 1);

		var img_id = "#img_id_" + index;
		$(img_id).remove();
	}

	function fileUploadAction() {
		console.log("fileUploadAction");
		$("#input_imgs").trigger('click');
	}

	function submitAction() {
		console.log("누구냐넌: " + sel_files.length);
		var data = new FormData();

		for (var i = 0, len = sel_files.length; i < len; i++) {
			var name = "image_" + i;
			data.append(name, sel_files[i]);
		}
		data.append("image_count", sel_files.length);

		if (sel_files.length < 1) {
			alert("파일이 없습니다.");
			return;
		}

		var xhr = new XMLHttpRequest();
		xhr.open("POST", "./study01_af.php");
		xhr.onload = function(e) {
			if (this.status == 200) {
				console.log("Result : " + e.currentTarget.responseText);
			}
		}

		xhr.send(data);

	}
</script>
<body>
	<div id="wrapper">
		<jsp:include page="/WEB-INF/jsp/login/loginForm.jsp" />
		<header class="header bg">
			<jsp:include page="/WEB-INF/jsp/include/topLogo.jsp" />
		</header>
		<nav class="navbar navbar-expand-sm sticky-top navbar-dark">
			<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
		</nav>
		<!--Section-1-->
		<section class="section-1 product">
			<div class="jumbotron d-flex align-items-center">
				<div class="gradient"></div>
				<div class="container-fluid content">
					<h1 data-aos="fade-right" data-aos-delay="300">Welcome to
						W:PLAN</h1>
					<h2 data-aos="fade-left" data-aos-delay="300">please together
						with me</h2>
				</div>
				<!--container-fluid end-->
			</div>
		</section>


		<section class="mSection box">
		<div class="container detail section-22">

			<div class="box">

				<h1>제품 등록</h1>
				<hr>

				<!-- 파일 업로드 시작 -->
				<form
					action="<%=request.getContextPath()%>/product/addProductForm"
					method="post" enctype="multipart/form-data">

					<div>
						<p>
							<b>제품 사진 등록</b>
						</p>
						<div class="input_wrap">
							<a href="javascript:" onclick="fileUploadAction();"
								class="my_button">업로드</a> <input type="file" id="input_imgs"
								name="imgs" multiple />
						</div>
					</div>

					<div>
						<div class="imgs_wrap">
							<img id="img" />
						</div>
					</div>

					<!-- 				<a href="javascript:" class="my_button" onclick="submitAction();">업로드</a> -->


					<!-- 파일 업로드 끝 -->

						<hr>
						<table style="margin-left:10px; margin:auto;">
							<tr>
								<th>제품이름</th>
								<td><input type="text" name="pName"></td>
							</tr>
							<tr>
								<th>업체이름</th>
								<td><input type="text" name="cName"></td>
							</tr>
							<tr>
								<th>업체정보</th>
								<td><textarea cols="30" rows="5" name="cInfo"></textarea></td>
							</tr>
							<tr>
								<th>카테고리</th>
								<td>
									<select name="category">
										<option>선택</option>
										<option>드레스</option>
										<option>턱시도</option>
										<option>장소</option>
										<option>음식</option>
										<option>데코</option>
									</select>
								</td>
							</tr>
							<tr>
								<th>가격</th>
								<td><input type="text" name="pPrice"></td>
							</tr>
							<tr>
								<th>이벤트</th>
								<td><input type="text" name="pEvent"></td>
							</tr>
							<tr>
								<th>타입</th>
								<td>
									<select name="dresstype">
										<option>선택</option>
										<option>MERMAID</option>
										<option>BELL LINE</option>
										<option>SHORT</option>
										<option>EMPIRE LINE</option>
									</select>
								</td>
							</tr>
						</table>
						<hr>
					<div style="padding-bottom:20px; padding-left:10px;">
					<button type="submit" style="width: 100px;">등록</button>

					<a href="${ pageContext.request.contextPath }/member/myPage">
						<button type="button" style="width: 100px; margin-left: 30px;">취소</button>
					</a>
					</div>
				</form>
			</div>
		</div>
		</section>
		<section class="section-7">
			<%@ include file="/WEB-INF/jsp/include/footer.jsp"%>
		</section>
	</div>
	<%@ include file="/WEB-INF/jsp/include/sideSlider.jsp"%>
</body>
</html>
