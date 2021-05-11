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
		
		return view;
	}

}
