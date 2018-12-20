<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
$(document).ready(function(){
	$('.login_background').click(function(){
		$('.login_area').hide();
	});
	$('.loginMenu span.login').click(function(){
		$('.login_area').show();
	})
});

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
	                    <div class="ctnr_login_btn row">
	                        <div class="col-xs-6 padding-right-5 btn_sns_naver" id="naver_id_login1" btn-type="4" btn-height="40"><a href="https://nid.naver.com/oauth2.0/authorize?response_type=token&amp;client_id=E0RXHTiWnz4g2rLUQFsx&amp;redirect_uri=https%3A%2F%2Fwedit.kr%2Fapp%2Fregistration%2Fnaver.html&amp;state=2d60fd01-edc7-4cd1-af96-c64348bbc405" onclick="window.open(this.href, 'naverloginpop', 'titlebar=1, resizable=1, scrollbars=yes, width=600, height=550'); return false" class="btn_sns sns_naver">네이버 로그인</a> </div>
	                        <div class="col-xs-6 padding-left-5">
	                            <a href="javascript:;" class="btn_sns sns_kakao btn_sns_kakao">카카오 로그인</a>
	                        </div>
	                        <div class="clearfix"></div>
	                    </div>
	                    <div class="section-separator">
	                        <div class="section-text">또는</div>
	                        <div class="section-line"></div>
	                    </div>
	                    <div class="ctnr1-login" id="form_login">
	                        <div class="form-group">
	                            <div class="input-group">
	                                <span class="input-group-addon" id="sizing-addon1"><span>아이디</span></span>
	                                <div class="eac-input-wrap" style="display: block; position: relative; font-size: 14px;"><input type="text" class="form-control form_input valid_email input_necessary" id="login_id" autocomplete="off" value="" aria-describedby="sizing-addon1"><span class="email-sugg" style="display: block; box-sizing: content-box; line-height: 19.992px; padding-top: 7px; padding-bottom: 7px; font-family: &quot;Noto Sans KR&quot;, &quot;Open Sans&quot;, &quot;Nanum Gothic&quot;, NanumGothic, Gulim, 굴림, Dotum, 돋움, Arial, sans-serif; font-weight: 400; letter-spacing: 0px; position: absolute; top: 0px; left: 0px;"></span><span class="eac-cval" style="visibility: hidden; position: absolute; display: inline-block; font-family: &quot;Noto Sans KR&quot;, &quot;Open Sans&quot;, &quot;Nanum Gothic&quot;, NanumGothic, Gulim, 굴림, Dotum, 돋움, Arial, sans-serif; font-weight: 400; letter-spacing: 0px;"></span></div>
	                            </div>
	                        </div>
	                        <div class="form-group">
	                            <div class="input-group">
	                                <span class="input-group-addon" id="sizing-addon2"><span>비밀번호</span></span>
	                                <input type="password" class="form-control form_input input_necessary" id="login_pw" autocomplete="off" aria-describedby="sizing-addon2">
	                            </div>
	                        </div>
	                        <div class="box2-login">
	                            <div class="section1-login">
	                                <div class="box-checkbox">
	                                    <input type="checkbox" id="remember_id" class="form_input skip_valid" value="1">
	                                    <label for="remember_id" class="chekbox-small">ID기억하기</label>
	                                </div>
	                                <div class="box-checkbox">
	                                    <input type="checkbox" id="auto_login" class="form_input skip_valid" value="1">
	                                    <label for="auto_login" class="chekbox-small">자동로그인</label>                                   
	                                </div>
	                            </div><div class="section2-login auto_login">
	                                <input type="hidden" class="auto_login_on" value="1">
	                                <input type="hidden" class="login_token" value="">
	                                <button class="fill-orange call_login mt-ladda-btn ladda-button" data-style="zoom-in"> 로그인 </button>
	                            </div>
	                        </div>
	                        <div class="box3-login">
	                            <div class="text1-login">
	                                아이디나 비밀번호가 기억나지 않으세요?
	                            </div><div class="text2-login"><a href="https://wedit.kr/app/user/find.php">아이디/비밀번호 찾기</a></div>
	                        </div>
	                    </div>
	                    <div class="section-separator">
	                        <div class="section-text">아직 <span class="strong-color">더블유 플랜</span> 계정이 없으세요?</div>
	                        <div class="section-line"></div>
	                    </div>
	                    <div class="group-btn-login">
	                        <a href="https://wedit.kr/app/registration/partner_entry.php">
	                            <button class="white">업체등록</button>
	                        </a>
	                        <a href="https://wedit.kr/app/registration/user.php">
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