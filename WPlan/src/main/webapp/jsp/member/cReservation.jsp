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
   	
   </aside>
   <section class="rSection">
		<table class="rList">
			<thead>
				<tr>
					<td>예약번호</td>
					<td>예약날짜</td>
					<td>예약자</td>
					<td>결혼날짜</td>
					<td>예약내역</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</tbody>
		</table>
   </section>
    <section class="section-7">
			<%@ include file="/jsp/include/footer.jsp" %>
    </section>

</body>

</html>
