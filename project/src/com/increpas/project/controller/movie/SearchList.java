package com.increpas.project.controller.movie;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.increpas.project.controller.ProjController;
import com.increpas.project.dao.MoDao;
import com.increpas.project.vo.MoVO;

public class SearchList implements ProjController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "movie/searchList";
		
		
		String word = '%'+req.getParameter("search")+'%';
		//System.out.println(word);
		
		MoDao mDao = new MoDao();
		ArrayList<MoVO> list = mDao.getMovieInfo(word);
	
		req.setAttribute("LIST", list);
		
		return view;
	}

}
