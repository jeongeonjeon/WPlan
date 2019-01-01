package kr.co.mlec.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.co.mlec.umember.vo.UmemberVO;



public class LoginInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
								Object handler)	throws Exception {

		// 로그인여부 판단
		HttpSession session = request.getSession();
		UmemberVO userVO = (UmemberVO)session.getAttribute("userVO");
		
		if(userVO == null) {
			
			// 로그인 후 기존의 서비스를 요청하기위한 기존 요청 URI 추출
			String uri = request.getRequestURI();
			uri = uri.substring(request.getContextPath().length());
			
			// ?no=55 같은 요청파라미터 추출 
			String query = request.getQueryString();

			// 추출한 URI를 세션에 저장 + 추출된 파라미터
			if(query != null && query.trim().length() != 0)
				uri = uri + "?" + query;
			session.setAttribute("dest", uri);
			
			
			response.sendRedirect(request.getContextPath() + "/login");
			return false;
		}
		
		return true;
	}
	
}



