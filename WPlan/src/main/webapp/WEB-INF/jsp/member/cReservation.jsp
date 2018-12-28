<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>more</title>
    <link rel="stylesheet"  href="${ pageContext.request.contextPath }/resources/css/member.css">
    <jsp:include page="${ pageContext.request.contextPath }/jsp/include/head.jsp" />

</head>

<body>
   <div id="wrapper">
      <jsp:include page="${ pageContext.request.contextPath }/jsp/login/loginForm.jsp" />
       <header class="header bg">
           <jsp:include page="${ pageContext.request.contextPath }/jsp/include/topLogo.jsp" />
       </header>
       <span class="position-absolute trigger"><!-- hidden trigger to apply 'stuck' styles --></span>
       <nav class="navbar navbar-expand-sm sticky-top navbar-dark">
             <jsp:include page="${ pageContext.request.contextPath }/jsp/include/topMenu.jsp" />
       </nav>
       
      <aside class="rAside">
         <div>
            <ul class= "rMenu">
               <li  class="calendar"><a href="#">캘린더</a></li>
               <li  class="rList"   ><a href="#">예약리스트</a></li>
               <li  class="myInfo"  ><a href="#">내 정보</a></li>
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
                  <td>예약번호</td>
                  <td>예약날짜</td>
                  <td>예약자</td>
                  <td>결혼날짜</td>
                  <td>예약내역</td>
               </tr>
            </thead>
            <tbody>
               <tr>
                  <td>1</td>
                  <td>2018.12.20</td>
                  <td>홍길동</td>
                  <td>2018.12.24</td>
                  <td>레드홀</td>
               </tr>
            </tbody>
         </table>
      </section>
       <section class="section-7">
            <%@ include file="/WEB-INF/jsp/include/footer.jsp" %>
       </section>
       </div>
   <%@ include file="/WEB-INF/jsp/include/sideSlider.jsp"%>

</body>

</html>