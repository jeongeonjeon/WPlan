<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <div class="container">
 <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar1">
     <span class="navbar-toggler-icon"></span>
 </button>
     <div class="collapse navbar-collapse" id="navbar1">
         <ul class="navbar-nav">
             <li class="nav-item">
                 <a class="nav-link" href="${ pageContext.request.contextPath }/index.jsp">Home</a>
             </li>
             <li class="nav-item">
                 <a class="nav-link" href="${ pageContext.request.contextPath }/jsp/about.jsp">About us</a>
             </li>
             <li class="nav-item">
                 <a class="nav-link" href="${ pageContext.request.contextPath }/jsp/portfolio.jsp">Portfolio</a>
             </li>
             <li class="nav-item">
                 <a class="nav-link" href="${ pageContext.request.contextPath }/jsp/services.jsp">Services</a>
             </li>
             <li class="nav-item">
                 <a class="nav-link" href="${ pageContext.request.contextPath }/jsp/contact.jsp">Contact</a>
             </li>
             <li class="nav-item active">
                 <a class="nav-link" href="${ pageContext.request.contextPath }/jsp/support.jsp">Support</a>
             </li>
             <li class="nav-item">
                 <a class="nav-link" href="${ pageContext.request.contextPath }/jsp/blog.jsp">blog</a>
             </li>
         </ul>
     </div>
 </div>
 <!--container end-->