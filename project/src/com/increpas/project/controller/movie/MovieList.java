package com.increpas.project.controller.movie;

import java.util.ArrayList;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.increpas.project.controller.ProjController;
import com.increpas.project.dao.GenreDao;
import com.increpas.project.dao.HeartDao;
import com.increpas.project.dao.MovieDao;
import com.increpas.project.util.PageUtil;
import com.increpas.project.vo.GenreVO;
import com.increpas.project.vo.MovieVO;


public class MovieList implements ProjController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "movie/movieList";
		
		String sid = (String) req.getSession().getAttribute("SID");
		if(sid == null) {
			req.setAttribute("isRedirect", true);
			view = "/project/member/login.project";
		}
		
		String spage = req.getParameter("nowPage");
		int nowPage = 1;
		String sno = req.getParameter("mno");
		int mno = 0;

		try {
			nowPage = Integer.parseInt(spage);
			mno = Integer.parseInt(sno);
		} catch(Exception e) {}
		
		MovieDao mDao = new MovieDao();
		GenreDao gDao = new GenreDao();
		HeartDao hDao = new HeartDao();
		int total = mDao.getTotal();
		
		PageUtil page = new PageUtil(nowPage, total, 6, 5);
		
		ArrayList<MovieVO> list = mDao.getList(page);
		ArrayList<GenreVO> glist = gDao.getList();
		ArrayList<Integer> jlist = hDao.getList(sid);
		System.out.println("************ glist : " + glist.size());
		req.setAttribute("LIST", list);
		req.setAttribute("JDATA", jlist);
		req.setAttribute("GLIST", glist);
		req.setAttribute("PAGE", page);
		
		return view;
	}

}
