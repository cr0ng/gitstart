package com.increpas.project.controller.movie;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.increpas.project.controller.ProjController;
import com.increpas.project.dao.GenreDao;
import com.increpas.project.dao.MovieDao;
import com.increpas.project.util.PageUtil;
import com.increpas.project.vo.GenreVO;
import com.increpas.project.vo.MovieVO;

public class GenreList implements ProjController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "movie/movieList";
		
		String spage = req.getParameter("nowPage");
		String sno = req.getParameter("gno");
		MovieDao mDao = new MovieDao();
		GenreDao gDao = new GenreDao();
		int total = 0;
		int nowPage = 1;
		try {
			nowPage = Integer.parseInt(spage);
		} catch(Exception e) {}
		
		ArrayList<MovieVO> list = null;
		ArrayList<GenreVO> glist = null;
		PageUtil page = null;
		glist = gDao.getList();
		if( sno == null) {
			total = mDao.getTotal();
			page = new PageUtil(nowPage, total, 6, 5);
			// 장르번호 전달 안된 경우
			view = "movie/movieList";
			list = mDao.getList(page);
		} else {
			// 장르번호 전달된 경우
			req.setAttribute("GNO", sno);
			int gno = Integer.parseInt(sno);
			total = gDao.getTotal(gno);
			page = new PageUtil(nowPage, total, 6, 5);
			view = "movie/genreList";
			list = mDao.getList(page,gno);
		}
		
		
		
		System.out.println("************ glist : " + glist.size());
		req.setAttribute("LIST", list);
		req.setAttribute("GLIST", glist);
		req.setAttribute("PAGE", page);
		
		return view;
	}

}
