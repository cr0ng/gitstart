package com.increpas.project.controller.notice;

import java.util.*;
import javax.servlet.http.*;

import com.increpas.project.controller.*;
import com.increpas.project.util.*;
import com.increpas.project.dao.*;
import com.increpas.project.vo.*;

public class NoticeList implements ProjController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "notice/noticeList";
		
		String spage = req.getParameter("nowPage");
		int nowPage = 1;
		try {
			nowPage = Integer.parseInt(spage);
		} catch(Exception e) {
			
		} 
		NoticeDao bDao = new NoticeDao();
		int total = bDao.getTotal();
		
		System.out.println(" ######### total : " + total);
		
		PageUtil page = new PageUtil(nowPage, total, 5, 5);
		
		ArrayList<NoticeVO> list = bDao.getList(page);
		
		req.setAttribute("LIST", list);
		req.setAttribute("PAGE", page);
		
		
		return view;
	}

}
