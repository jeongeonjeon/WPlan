<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>more</title>
    <jsp:include page="/jsp/include/head.jsp" />
    <style>
    .jumbotron {width: 100%;height: 250px;}
        .jumbotron h2 {padding-bottom: 0;}
     
   
     .fBtn {
    
    font-family: "Playfair Display"; 
    font-weight : 600;
    border-radius: 0px;
    border-width: 1px;
    border-color: rgba(233, 196, 176, 0.5);
    border-style: solid;
    background: rgb(255, 255, 255);
    color: rgb(34, 34, 34);
    height : 60px;
   
}	
	.fBtn:hover {
	
	background : rgba(233, 196, 176, 0.1);
	}
	
	.inputArea {
	
	width : 60%;
	margin : 0 15px;
	outline : none;
	}
	
	.title {
	width : 20%;
	}
	
	h4{
	padding : 15px;
	}
	
	.pws{
	position : relative;
	left : 20%;
	}
	
	.submit {
	width : 50%;
	}
	

	
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
    <!--Section-1-->
    <section class="section-1">
        <div class="jumbotron d-flex align-items-center">
            <div class="gradient"></div>
            <div class="container-fluid content">
                <h1 data-aos="fade-right" data-aos-delay="300">Welcome to W:PLAN</h1>
                <h2 data-aos="fade-left" data-aos-delay="300">please together with me</h2>
            </div>
            <!--container-fluid end-->
        </div>
    </section>
    
<!-- Contact section Start -->
<div id="contact">
  <div class="container">
  <h3>회원가입</h3>
 
    </div>
     <div class="container py-5">
      <div class="row" data-aos="fade-up" data-aos-delay="300">
          <div class="col-md-12">
              <form>
						<div class="form-group row">
						</div>
						
						<div class="row">
							<label class="title"><h4>아이디</h4></label>
							<input type="text" class="inputArea" placeholder="이름을 입력해주세요" required >
							<button class="fBtn">중복확인</button>
						</div>
						<div class="row">
							<label class="title"><h4>비밀번호</h4></label>
							<input type="text" class="inputArea" placeholder="비밀번호를 입력해주세요" required>
						
						</div>
						<div class="row">
							
							<input type="text" class="inputArea pws" placeholder="비밀번호를 확인해주세요" required>
						
						</div>
						<div class="row">
							<label class="title"><h4>이름</h4></label>
							<input type="text" class="inputArea" placeholder="이름을 입력해주세요" required>
						</div>
						<div class="row">
							<label class="title"><h4>전화번호</h4></label>
							<input type="text" class="inputArea" placeholder="010-xxxx-xxxx" required>
						</div>
						<div class="row">
							<label class="title"><h4>이메일</h4></label>
							<input type="email" class="inputArea" placeholder="이메일형식으로 입력해주세요" required>
						</div>
						<button class="fBtn submit">가입하기</button>
						
						
							<!-- <div class="textDiv">
								<span class="title"><h4>아이디</h4></span>
								<div class="col-sm-8 ">
									<input type="text" class="form-control"
										placeholder="아이디를 입력해주세요" required>
								</div>
								<button class="fBtn">중복확인</button>
							</div>
							<div class="textDiv">
								<h4>비밀번호</h4>
								<div class="col-sm-8">
									<input type="text" class="form-control"
										placeholder="비밀번호를 입력해주세요" required>
								</div>
							</div>

							<div class="col-sm-8 pas">
								<input type="text" class="form-control"
									placeholder="비밀번호를 확인해주세요" required>
							</div>


							<div class="textDiv">
								<h4>이름</h4>
								<div class="col-sm-8">
									<input type="text" class="form-control" placeholder="이름을 입력해주세요"
										required>
								</div>
							</div>
							<div class="col-sm-12">
								<input type="number" class="form-control"
									placeholder="Your Phont Number" required>
							</div> -->
						<!-- <div class="form-group row">
                  	  <div class="textDiv"><h4>아이디</h4></div>
                      <div class="col-sm-8 ">
                          <input type="text" class="form-control" placeholder="아이디를 입력해주세요" required>
                      </div>
                      <button class="fBtn">중복확인</button><br>
                      <div class="textDiv"><h4>비밀번호</h4></div>
                      <div class="col-sm-8">
                          <input type="text" class="form-control" placeholder="비밀번호를 입력해주세요" required>
                      </div>
                     
                      <div class="col-sm-8 pas">
                          <input type="text" class="form-control" placeholder="비밀번호를 확인해주세요" required>
                      </div>
                    
                      
                      <div class="textDiv"><h4>이름</h4></div>
                          <div class="col-sm-8">
                          <input type="text" class="form-control" placeholder="이름을 입력해주세요" required>
                      </div>
                      
                      <div class="col-sm-12">
                          <input type="number" class="form-control" placeholder="Your Phont Number" required>
                      </div>
                  </div> -->
                  <!-- <div class="form-group row">
                      <div class="col-xs-12 col-md-12">
                          <textarea type="text" class="form-control" placeholder="Your Message" rows="6" required></textarea>
                      </div>
                  </div> -->
                  
              </form>
          </div>
      </div>
     </div>
</div>

<!-- Contact section Ended -->
   
    <section class="section-7">
        <!-- Footer -->
        <footer class="page-footer font-small stylish-color-dark">
			<%@ include file="/jsp/include/footer.jsp" %>
        </footer>
        <!-- Footer -->
    </section>

</body>

</html>
