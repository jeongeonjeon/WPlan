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

</head>
<style>
.section-22 {
padding: 0px;
    margin: 5px auto;
    background: #FAFAFD;
    width: 95%;
}
.section-22 .box{
    padding: 10px calc(( 100% - 1000px) / 2 + 10px);
    box-shadow: 0 0 25px rgba(0, 0, 0, .15) !important;   

}

</style>

<style>
   table td{
   	  width:150px;
   	  padding-top: 10px;
   }
   button{
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
   img{
   	width : 100%;
   	height: 100%;
   }
</style>
    
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


		<div class="container detail section-22">
			
			<div class="box">
			
			<h1>업체등록</h1>
			<hr>		
			<form id="form">
				<div>
					<button type="button">이미지 등록</button><br><br>
					<div>
						<img id="image_section"
							src="${ pageContext.request.contextPath }/resources/images/hall2.jpg" />
					</div>
				</div>
				
				<hr>
					
				<table>
			   		<tr>
			   			<td><input type="checkbox">&nbsp;&nbsp;소음규제</td>
			   			<td><input type="checkbox">&nbsp;&nbsp;주차</td>
			   			<td><input type="checkbox">&nbsp;&nbsp;재봉</td>
			   			<td><input type="checkbox">&nbsp;&nbsp;피팅사진촬영</td>
			   			<td><input type="checkbox">&nbsp;&nbsp;제공범위</td>
			   			<td><input type="checkbox">&nbsp;&nbsp;사전미팅</td>
			   		</tr>
			   		<tr>
			   			<td><input type="checkbox">&nbsp;&nbsp;식사</td>
			   			<td><input type="checkbox">&nbsp;&nbsp;음향</td>
			   			<td><input type="checkbox">&nbsp;&nbsp;주류</td>
			   			<td><input type="checkbox">&nbsp;&nbsp;흡연</td>
			   			<td><input type="checkbox">&nbsp;&nbsp;숙박</td>

			   		</tr>
			   		<tr>
			   			<td><input type="checkbox">&nbsp;&nbsp;발렛</td>
			   			<td><input type="checkbox">&nbsp;&nbsp;주차안내</td>
			   			<td><input type="checkbox">&nbsp;&nbsp;버스진입</td>
			   			<td><input type="checkbox">&nbsp;&nbsp;WIFI</td>
			   			<td><input type="checkbox">&nbsp;&nbsp;의자/테이블</td>
			   			<td><input type="checkbox">&nbsp;&nbsp;웨딩진행이력</td>
			   		</tr>
			    </table>	
	
				<table>
					<tr>
						<td><input type="checkbox">&nbsp;&nbsp;판매방식</td>
						<td><input type="text"></td>
					</tr>
					<tr>
						<td><input type="checkbox">&nbsp;&nbsp;피팅시간</td>
						<td><input type="text"></td>
					</tr>
					<tr>
						<td><input type="checkbox">&nbsp;&nbsp;피팅 가능 개수</td>
						<td><input type="text"></td>
					</tr>
					<tr>
						<td><input type="checkbox">&nbsp;&nbsp;제공/대여소품</td>
						<td><input type="text"></td>
					</tr>
					<tr>
						<td><input type="checkbox">&nbsp;&nbsp;타입</td>
						<td><input type="text"></td>
					</tr>
					<tr>
						<td><input type="checkbox">&nbsp;&nbsp;이용시간</td>
						<td><input type="text"></td>
					</tr>
					<tr>
						<td><input type="checkbox">&nbsp;&nbsp;기타</td>
						<td><input type="text"></td>
					</tr>	
				</table>

					

					<div class="input_wrap">
					<table>
						<tr>
							<td>주소검색</td>
						</tr>
						<tr>
							<td><button type="button">주소검색</button></td>
						</tr>		
					</table>

					</div>
				</form>
				<hr>

				<button type="submit" style="width:100px;">등록</button>
				<a href="${ pageContext.request.contextPath }/member/myPage">
				<button type="submit" style="width:100px; margin-left:30px;">취소</button>
				</a>
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
