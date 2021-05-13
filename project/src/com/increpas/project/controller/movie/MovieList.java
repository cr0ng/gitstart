package com.increpas.project.controller.movie;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.increpas.project.controller.ProjController;
import com.increpas.project.dao.*;
import com.increpas.project.util.PageUtil;
import com.increpas.project.vo.*;

public class MovieList implements ProjController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "movie/movieList";
		
		String spage = req.getParameter("nowPage");
		int nowPage = 1;
		String sno = req.getParameter("mno");
		int mno = Integer.parseInt(sno);

		try {
			nowPage = Integer.parseInt(spage);
		} catch(Exception e) {}
		
		MovieDao mDao = new MovieDao();
		GenreDao gDao = new GenreDao();
		HeartDao hDao = new HeartDao();
		int total = mDao.getTotal();
		
		PageUtil page = new PageUtil(nowPage, total, 6, 5);
		
		ArrayList<MovieVO> list = mDao.getList(page);
		ArrayList<GenreVO> glist = gDao.getList();
		ArrayList<HeartVO> jlist = hDao.getList(mno);
		System.out.println("************ glist : " + glist.size());
		req.setAttribute("LIST", list);
		req.setAttribute("JDATA", jlist);
		req.setAttribute("GLIST", glist);
		req.setAttribute("PAGE", page);
		
		return view;
	}

}
