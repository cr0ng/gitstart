package com.increpas.project.controller.member;
/**
 * 작성자 : 김유진
 * 회원가입처리
 * 작성일:21/05/12
 */
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.increpas.project.dao.MemberDao;
import com.increpas.project.controller.ProjController;
import com.increpas.project.vo.MemberVO;

public class JoinProc implements ProjController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String sname = req.getParameter("name");
		String sid = req.getParameter("id");
		String spw = req.getParameter("pw");
		String smail =	req.getParameter("email");
		String snickname= req.getParameter("nickname");
		String sgen = req.getParameter("gen");
		int sage = Integer.parseInt(req.getParameter("age"));
		
		MemberVO mVO = new MemberVO();
		mVO.setUser_name(sname);
		mVO.setUser_id(sid);
		mVO.setUser_pw(spw);
		mVO.setEmail(smail);
		mVO.setNickname(snickname);
		mVO.setGender(sgen.equals("male")? "M" : "F");
		mVO.setAge(sage);
		MemberDao mDao = new MemberDao();
		int cnt = mDao.addMember(mVO);
		System.out.println(cnt);
		String view = "/project/member/login.project";
		if(cnt == 1) {
			req.getSession().setAttribute("SID", sid);
			req.setAttribute("isRedirect",true);
		}else {
			view = "redirectPage";
			req.setAttribute("JOINMSG", "회원 가입에 실패했습니다.");
		}
		
		
		return view;
	}

}
