package com.increpas.project.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.increpas.project.controller.ProjController;

public class LoginForm implements ProjController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {	
		
		String view = "member/login"; 
		/*
		if(req.getSession().getAttribute("SID") != null) {
			req.setAttribute("isRedirect", true);
			view = "/proj/emotion.project";
		}
		if(req.getParameter("msg") != null) {
			req.setAttribute("MSG", req.getParameter("msg"));
		}
		*/
		return view;
	}

}
