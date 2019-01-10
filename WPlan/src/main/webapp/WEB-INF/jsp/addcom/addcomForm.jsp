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


<title>more</title>

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
}
</style>

<style>
table td {
	width: 150px;
	padding-top: 10px;
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

img {
	width: 100%;
	height: 100%;
}
</style>
<script src="http://code.jquery.com/jquery-3.3.0.min.js"></script>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<script>
 function sample6_execDaumPostcode() {
  new daum.Postcode({
   oncomplete: function(data) {
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
    if(data.userSelectedType === 'R'){
     // 법정동명이 있을 경우 추가한다. (법정리는 제외)
     // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
     if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
      extraAddr += data.bname;
     }
     // 건물명이 있고, 공동주택일 경우 추가한다.
     if(data.buildingName !== '' && data.apartment === 'Y'){
      extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
     }
     // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
     if(extraAddr !== ''){
      extraAddr = ' extraAddr ' ;
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
    document.getElementById("sample6_detailAddress").focus();
   }
  }).open();
 }
 
		/* 파일 업로드  */
	var sel_files = [];
	
	$(document).ready(function() {
		$("#input_imgs").on("change", hadleImgsFilesSelect);
	});
	
	function handleImgsFileSelect(e) {
		var files = e.target.files;
		var filesArr = array.prototype.slice.call(files);
		
		filesArr.forEach(function(f) {
			if(!f.type.match("image.*")) {
				arlert("확장자는 이미지 파일만 가능합니다.");
				return;
			}
			
			sel_files.push(f);

		var reader = new FileReader();
		reader.onload = function(e) {
			var img_html = "<img src=\"" + e.target.result + "\" />";
			$(".imgs_wrap").append(img_html);
		}
		reader.readAsDataURL(f);
	});
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

		<div class="container detail section-22">

			<div class="box">

				<h1>업체등록</h1>
				<hr>
				
				<!-- 파일 업로드 시작 -->
				<form method="post" enctype="multipart/form-data" action="/WEB-INF/resources/fileupload">
					<div>
						<input type="text" name="id" value="사진 등록"  /> <br/>
						<input type="file" name="attachFile" multiple="multiple" /> <br/> 
					</div>
						<hr>
					<div class="imgs_wrap">
					
					</div>
						<hr>
					<div>
						<input type="submit" value="업로드" />
					</div>
				</form>
				
				<!-- 파일 업로드 끝 -->
				
				<form action="<%= request.getContextPath() %>/addcom/addcomForm" method="post">
	
					<hr>

					<table>
						<tr>
							<td><input type="checkbox" name="noise">소음규제</td>
							<td><input type="checkbox" name="parking">주차</td>
							<td><input type="checkbox" name="cloth">재봉</td>
							<td><input type="checkbox" name="photo">피팅사진촬영</td>
							<td><input type="checkbox" name="prov">제공범위</td>
							<td><input type="checkbox" name="meeting">사전미팅</td>

						</tr>
						<tr>
							<td><input type="checkbox" name="meal">식사</td>
							<td><input type="checkbox" name="sound">음향</td>
							<td><input type="checkbox" name="drink">주류</td>
							<td><input type="checkbox" name="smoking">흡연</td>
							<td><input type="checkbox" name="hotel">숙박</td>
							<td><input type="checkbox" name="valet">발렛</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="parking_guide">주차안내</td>
							<td><input type="checkbox" name="bus">버스진입</td>
							<td><input type="checkbox" name="wifi">WIFI</td>
							<td><input type="checkbox" name="chair_table">의자/테이블</td>
							<td><input type="checkbox" name="history">웨딩진행이력</td>
						</tr>
					</table>

					<table>
						<tr>
							<td>판매방식</td>
							<td><input type="text" name="sale"></td>
						</tr>
						<tr>
							<td>피팅시간</td>
							<td><input type="text" name="pitting_time"></td>
						</tr>
						<tr>
							<td>피팅 가능 개수</td>
							<td><input type="text" name="pitting_num"></td>
						</tr>
						<tr>
							<th>제공/대여소품</th>
							<td><input type="text" name="props"></td>
						</tr>
						<tr>
							<td>타입</td>
							<td><input type="text" name="type"></td>
						</tr>
						<tr>
							<td>이용시간</td>
							<td><input type="text" name="use_time"></td>
						</tr>
						<tr>
							<td>기타</td>
							<td><input type="text" name="recital"></td>
						</tr>
					</table>



					<div class="checkbox_wrap">
						<table>
							<tr>
								<td>주소검색</td>
							</tr>
							<tr>
								<td><input type="text" name="addr_post" id="sample6_postcode" placeholder="우편번호"></td>
								<td><input type="button"
									onclick="sample6_execDaumPostcode()" value="우편번호 찾기"> <br>
								</td>
							</tr>
							<tr>
								<td><input type="text" name="addr" id="sample6_address" placeholder="주소"> <br></td>
								<td><input type="text" name="addr_detail" id="sample6_detailAddress" placeholder="상세주소"></td>
								<td><input type="text" name="addr_extra" id="sample6_extraAddress" placeholder="참고항목"></td>
							</tr>
						</table>

					</div>

					<hr>

					<button type="submit" style="width: 100px;">등록</button>

					<a href="${ pageContext.request.contextPath }/member/myPage">
						<button type="button" style="width: 100px; margin-left: 30px;">취소</button>
					</a>
				</form>
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
