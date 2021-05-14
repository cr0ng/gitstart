package com.increpas.project.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.increpas.project.controller.ProjController;
import com.increpas.project.dao.MemberDao;
import com.increpas.project.vo.MemberVO;

public class MyPage implements ProjController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {

		String view = "member/myPage";
		
		String sid = (String) req.getSession().getAttribute("SID");
		if(sid == null) {
			req.setAttribute("isRedirect", true);
			view = "/project/member/login.project";
		}
		System.out.println(sid);
		MemberDao mDao = new MemberDao();
		MemberVO mVO = mDao.getMyInfo(sid);
		
		// 데이터 심고
		req.setAttribute("DATA", mVO);
		
		return view;
	}

}
