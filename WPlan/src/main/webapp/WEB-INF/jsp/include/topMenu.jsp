<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <div class="container">
 <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar1">
     <span class="navbar-toggler-icon"></span>
 </button>
     <div class="collapse navbar-collapse" id="navbar1">
         <ul class="navbar-nav">
             <li class="nav-item">
                 <a class="nav-link" href="${ pageContext.request.contextPath }/jsp/product/dressType">드레스</a>
             </li>
             <li class="nav-item">
                 <a class="nav-link" href="${ pageContext.request.contextPath }/jsp/product/tuxedo">턱시도</a>
             </li>
             <li class="nav-item">
                 <a class="nav-link" href="${ pageContext.request.contextPath }/jsp/product/location">장소</a>
             </li>
             <li class="nav-item">
                 <a class="nav-link" href="${ pageContext.request.contextPath }/jsp/product/food">음식</a>
             </li>
             <li class="nav-item">
                 <a class="nav-link" href="${ pageContext.request.contextPath }/jsp/product/deco">데코</a>
             </li>
         </ul>
     </div>
 </div>
 <!--container end-->