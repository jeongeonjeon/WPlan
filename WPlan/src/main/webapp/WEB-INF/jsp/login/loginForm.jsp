<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>



<script src="${ pageContext.request.contextPath }/resources/js/checkForm.js"></script>
<script>
$(document).ready(function(){

	$('.login_background, .mobile-login-header i.fa').click(function(){
		$('.login_area').css("display","none");
	});
	$('.loginMenu span.login').click(function(){
		$('.login_area').css("display","block");
	});
// 		$('#remember_id').prop('checked', false);
	
	if(document.cookie.split('=')[0] === 'remember_id'){
		$('#login_id').attr('value', document.cookie.split('=')[1]);
		$('#remember_id').prop('checked', true);
		
	}

});

function checkForm() {
	var f = document.form_login;
	
	if(isNull(f.login_id, "아이디를 입력하세요")) {
		return false;
	}
	
	if(isNull(f.login_pw, "패스워드를 입력하세요")) {
		return false;
	}
	return true;
};

function login() {
	$.ajax({
		url:"${pageContext.request.contextPath}/login",
		type: "POST",
		data : {
			id : $('#login_id').val(),
			password : $('#login_pw').val()
		},
		success : function(result){
			console.log(result);
			if(result != "fail"){
				if($("input:checkbox[id='auto_login']").prop("checked") == true){
					var setCookie = function(name, value, exp) {
					   var date = new Date();
					   date.setTime(date.getTime() + exp*24*60*60*1000);
					   document.cookie = $('#login_id').val() + '=' + $('#login_pw').val() + ';expires=' + date.toUTCString() + ';path=/';
					};

					setCookie($('#login_id').val(), $('#login_pw').val(), 7); /* name=Ethan, 7일 뒤 만료됨 */
				}
				if($("input:checkbox[id='remember_id']").prop("checked") == true){
					var setCookie = function(name, value, exp) {
					   var date = new Date();
					   date.setTime(date.getTime() + exp*24*60*60*1000);
					   document.cookie = 'remember_id' + '=' + $('#login_id').val() + ';expires=' + date.toUTCString() + ';path=/';
					};

					setCookie('remember_id', $('#login_id').val(), 7); /* name=Ethan, 7일 뒤 만료됨 */
				}else{
					var setCookie = function(name, value, exp) {
					   var date = new Date();
					   date.setTime(date.getTime() + exp*24*60*60*1000);
					   document.cookie = 'remember_id' + '=' + $('#login_id').val() + ';expires=' + date.toUTCString() + ';path=/';
					};

					setCookie('remember_id', $('#login_id').val(), 0); /* name=Ethan, 7일 뒤 만료됨 */
					
				}
				$('#login_id').val('');
				$('#login_pw').val('');
				$(".popup_cover").removeClass("on");
				$(".popup_cover").addClass("off");
				$(".login_popup").removeClass("on");
				$(".login_popup").addClass("off");
				
				
				location.reload();
			}else{
				alert('로그인에 실패하였습니다.');
				$('#login_id').val('');
				$('#login_pw').val('');
			}
		}
	});
	
}
</script>
<div class="login_area">
	<div class="login_background"></div>
	<div class="ctnr-modal login_close" id="login_module" style="display: block;">
	    <div class="modal-table">
	        <div class="modal-cell">
	            <div class="modal-contents login-modal">
	                <div class="mobile-login-header hidden-sm hidden-md hidden-lg">
	                    <h3>
	        		                로그인하기
	                        <i class="fa fa-times close-mobile-login login_close"></i>
	                    </h3>                        
	                </div>
	                <div class="login-body">
	                   
	                    <div class="ctnr1-login" id="form_login">
	                    
	                        <div class="form-group">
	                            <div class="input-group">
	                                <span class="input-group-addon" id="sizing-addon1"><span>아이디</span></span>
	                                <div class="eac-input-wrap" style="display: block; position: relative; font-size: 14px;">
	                                <input type="text" class="form-control form_input valid_email input_necessary" id="login_id" name="login_id" autocomplete="off" aria-describedby="sizing-addon1" value="">
	                                <span class="email-sugg" style="display: block; box-sizing: content-box; line-height: 19.992px; padding-top: 7px; padding-bottom: 7px; font-family: &quot;Noto Sans KR&quot;, &quot;Open Sans&quot;, &quot;Nanum Gothic&quot;, NanumGothic, Gulim, 굴림, Dotum, 돋움, Arial, sans-serif; font-weight: 400; letter-spacing: 0px; position: absolute; top: 0px; left: 0px;"></span><span class="eac-cval" style="visibility: hidden; position: absolute; display: inline-block; font-family: &quot;Noto Sans KR&quot;, &quot;Open Sans&quot;, &quot;Nanum Gothic&quot;, NanumGothic, Gulim, 굴림, Dotum, 돋움, Arial, sans-serif; font-weight: 400; letter-spacing: 0px;"></span></div>
	                            </div>
	                        </div>
	                        <div class="form-group">
	                            <div class="input-group">
	                                <span class="input-group-addon" id="sizing-addon2"><span>비밀번호</span></span>
	                                <input type="password" class="form-control form_input input_necessary" id="login_pw" name="login_pw" autocomplete="off" aria-describedby="sizing-addon2" />
	                            </div>
	                        </div>
	                    
	                        <div class="box2-login">

	                            <div class="section2-login auto_login">
	                                <div class="box-checkbox">
	                                    <input type="checkbox" id="remember_id" class="form_input skip_valid" value="1">
	                                    <label for="remember_id" class="chekbox-small text1-login">ID기억하기</label>
	                                </div>
	                                <div class="box-checkbox">
	                                    <input type="checkbox" name="auto_login" id="auto_login" class="form_input skip_valid" value="1">
	                                    <label for="auto_login" class="chekbox-small text1-login">자동로그인</label>                                   
	                                </div>
	                                <input type="hidden" class="auto_login_on" value="1">
	                                <input type="hidden" class="login_token" value="">
	                           <!-- 로그인 버튼 -->
	                                <button type="submit" class="fill-orange call_login mt-ladda-btn ladda-button" data-style="zoom-in" onclick="login()" > 로그인 </button>	                                
	                            </div>
	                        </div>
	                      
	                        <div class="box3-login">
	                            <div class="text1-login">
	                               	 아이디나 비밀번호가 기억나지 않으세요?
	                            </div><div class="text2-login"><a href="#">아이디/비밀번호 찾기</a></div>
	                        </div>
	                    </div>
	                    <div class="section-separator">
	                        <div class="section-text">또는</div>
	                        <div class="section-line"></div>
	                    </div>
	                    <div class="ctnr_login_btn row">
	                        <div class="col-xs-6 padding-right-5 btn_sns_naver" id="naver_id_login1" btn-type="4" btn-height="40"><a href="https://nid.naver.com/oauth2.0/authorize?client_id={QrxChDIT8KgIMiPDpPY_0}&response_type=code&redirect_uri={http://localhost:8888/WPlan/login}&state={상태 토큰}" onclick="window.open(this.href, 'naverloginpop', 'titlebar=1, resizable=1, scrollbars=yes, width=600, height=550'); return false" class="btn_sns sns_naver">네이버 로그인</a> </div>
	                        <div class="col-xs-6 padding-left-5">
	                            <a href="javascript:;" class="btn_sns sns_kakao btn_sns_kakao">카카오 로그인</a>
	                        </div>
	                        <div class="clearfix"></div>
	                    </div>
	                    <div class="section-separator">
	                        <div class="section-text">아직 <span class="strong-color">더블유 플랜</span> 계정이 없으세요?</div>
	                        <div class="section-line"></div>
	                    </div>
	                    <div class="group-btn-login">
	                        <a href="${ pageContext.request.contextPath }/member/cJoinForm">
	                            <button class="white">업체등록</button>
	                        </a>
	                        <a href="${ pageContext.request.contextPath }/member/uJoinForm">
	                            <button class="white">회원가입하기</button>
	                        </a>
	                        <div class="clearfix"></div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
</div>