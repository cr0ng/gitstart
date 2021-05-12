package com.increpas.project.controller.member;
/**
 * 작성자 : 김유진
 * 회원가입폼
 * 작성일:21/05/12
 */
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.increpas.project.controller.ProjController;

public class JoinForm implements ProjController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "member/join";
		if(req.getSession().getAttribute("SID") != null) {
			req.setAttribute("isRedirect", true);
			view = "/project/member/login.project";
		}

		if(req.getParameter("msg") != null) {
			req.setAttribute("MSG", req.getParameter("msg"));
		}
		
		return view;
	}

}
