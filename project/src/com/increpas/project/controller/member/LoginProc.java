package com.increpas.project.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.increpas.project.controller.ProjController;
import com.increpas.project.dao.MemberDao;

public class LoginProc implements ProjController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
			
		String sid = req.getParameter("id");
		String spw = req.getParameter("pw");
		
		MemberDao mDao = new MemberDao();
		int cnt = mDao.getLogin(sid,spw);
		
		String view = "/project/movie/emotion.project";
		if(cnt == 1) {
			req.getSession().setAttribute("SID", sid);
			req.setAttribute("isRedirect", true);
		}else {
			 	view = "redirectPage";
			 	req.setAttribute("LOGINMSG", "fail");
		}
		return view;
	}

}
