<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	.asideWrap{
		position:relative;
		margin:0;
		padding:0;
	}

	.asideWrap .aside{
		width:100%;
		height:50px;
		line-height: 50px;
		padding : 0 20px;
		border-bottom: 1px solid #FFF;
	}
	.asideWrap .aside.calander,.asideWrap .aside.area{
		height: 100px;
	}
	.asideWrap .aside span{
		float: right;
		padding:0;
		margin:0;
	}
	.asideWrap li.aside a{
		display: block;
		width : inherit;
		height: inherit;
	}
	.asideWrap .aside .scrapeImg{
		height: 55%;
	}
	.asideWrap .aside input[type="text"]{
		height: 40px;
		width:100%;
		padding: 3px 10px;
		font-size: 16px;
	}
	.asideWrap .subMenu{
		height:60px;
		padding : 0 20px;
		background-color: #FFF
	}
	.asideWrap .subMenu span{
		height:60px;
		line-height: 60px;
		font-size: 18px;
		font-weight: bold;
	}
	
</style>
<aside class="aside01">
	<div class="arrow">
		<div class="arrowBtn">
		</div>
	</div>
	<ul class="asideWrap">
		<li class="subMenu">
			<span>바로가기</span>
		</li>
		<li class="aside myPage">
			<a href="${ pageContext.request.contextPath }/jsp/member/myPage.jsp">
				<span >마이페이지</span>
			</a>
		</li>
		<li class="aside scrape">
			<a href="${ pageContext.request.contextPath }/jsp/wish.jsp">
				<img class="scrapeImg" src="${ pageContext.request.contextPath }/resources/images/scrape.png">
				<span class="scrape">스크랩북</span>
			</a>
		</li>
		<li class="aside make_wedding">
			<a href="${ pageContext.request.contextPath }/jsp/makeWedding.jsp">
				<span class="scrape">나의 결혼식 만들기</span>
			</a>
		</li>
	</ul>
	<ul class="asideWrap">
		<li class="subMenu">
			<span>결혼 계획</span>
		</li>
		<li class="aside calander">
			<span>결혼 예정일</span>
			<input type="text" name="date" id="datepicker1" >
		</li>
		<li class="aside area">
			<span>지역</span>
			<input type="text" name="area" >
		</li>
		
	</ul>
</aside>