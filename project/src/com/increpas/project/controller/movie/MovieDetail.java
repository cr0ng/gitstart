package com.increpas.project.controller.movie;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.increpas.project.controller.ProjController;
import com.increpas.project.dao.MovieDao;
import com.increpas.project.vo.MovieVO;

public class MovieDetail implements ProjController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "movie/movieDetail";
		
		String sno = req.getParameter("mno");
		int mno = Integer.parseInt(sno);
		String spage = req.getParameter("nowPage");
		
		if(sno == null) {
			req.setAttribute("isRedirect", true);
			return "/project/movie/movieList.project";
		}
		
		MovieDao mDao = new MovieDao();
		MovieVO mVO = mDao.getMnoInfo(mno);
		
		req.setAttribute("nowPage", spage);
		req.setAttribute("DATA", mVO);
		return view;
	}

}
