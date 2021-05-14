package com.increpas.project.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ProjMain implements ProjController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		
		String view = "main";
		/*
		String word = req.getParameter("search");
		req.getSession().setAttribute("WORD", word);
		req.setAttribute("isRedirect", true);
		*/
		return view;
	}

}
