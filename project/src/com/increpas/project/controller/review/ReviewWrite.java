package com.increpas.project.controller.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.increpas.project.controller.ProjController;

public class ReviewWrite implements ProjController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "review/reviewWrite";
		return view;
	}

}
