package com.increpas.project.controller.movie;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.increpas.project.controller.ProjController;
import com.increpas.project.dao.HeartDao;
import com.increpas.project.vo.HeartVO;

public class HeartProc implements ProjController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		req.setAttribute("isRedirect", null);
		
		// 파라미터 받고
		int movienum = Integer.parseInt(req.getParameter("movie_num"));
		int membernum = Integer.parseInt(req.getParameter("member_num"));
		
		HeartVO hVO = new HeartVO();
		hVO.setMember_num(membernum);
		hVO.setMovie_num(movienum);
		// 데이터베이스 작업하고
		HeartDao hDao = new HeartDao();
		int cnt = hDao.getMyHeart(hVO);
		// 처리결과에 따라 제이슨 문자열 만들고
		
	      
	      
	      return buff.toString();
		// 문자열 반환해주고...
		return null;
	}

}
