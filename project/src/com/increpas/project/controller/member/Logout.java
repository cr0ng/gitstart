package com.increpas.project.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.increpas.project.controller.ProjController;

public class Logout implements ProjController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		req.setAttribute("isRedirect", true);
		
		HttpSession session = req.getSession();
		session.removeAttribute("SID");
		
		
		return "/project/member/login.project";
	}

}
