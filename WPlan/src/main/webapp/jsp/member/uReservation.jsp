<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>more</title>
    <link rel="stylesheet"  href="${ pageContext.request.contextPath }/resources/css/reservation.css">
    <jsp:include page="/jsp/include/head.jsp" />
    <style>
    .jumbotron {width: 100%;height: 250px;}
        .jumbotron h2 {padding-bottom: 0;}
       
    </style>
    <script>
     $(document).ready(function(){
    	 $('#listRow').click(function(){
    		 location.href="${ pageContext.request.contextPath }";
    	 });
     });
    
    </script>
</head>

<body>
    <header class="header bg">
        <jsp:include page="/jsp/include/topLogo.jsp" />
    </header>
    <span class="position-absolute trigger"><!-- hidden trigger to apply 'stuck' styles --></span>
    <nav class="navbar navbar-expand-sm sticky-top navbar-dark">
       	<jsp:include page="/jsp/include/topMenu.jsp" />
    </nav>
    
   <aside class="rAside">
   	<div>
   		<ul class= "rMenu">
   			<li><a href="#">캘린더</a></li>
   			<li><a href="#">예약리스트</a></li>
   			<li></li>
   			<li></li>
   		</ul>
   	</div>
   </aside>
   <section class="rSection">
   <br>
   <h4>예약리스트</h4>
   <br>
		<table class="rList">
			<thead>
				<tr>
					<td>카테고리</td>
					<td>업체명</td>
					<td>예약날짜</td>
					<td>예약내역</td>
					<td>예약여부</td>
				</tr>
			</thead>
			<tbody>
				<tr id="listRow">
					<td>드레스</td>
					<td>EON</td>
					<td>2018.12.20</td>
					<td>eon style dress</td>
					<td>예약완료</td>
				</tr>
			</tbody>
		</table>
   </section>
    <section class="section-7">
			<%@ include file="/jsp/include/footer.jsp" %>
    </section>

</body>

</html>
