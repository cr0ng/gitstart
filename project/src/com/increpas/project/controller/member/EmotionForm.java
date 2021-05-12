package com.increpas.project.controller.member;
/**
 *  작성자 : 김유진
 *  감정선택 페이지 띄우기
 *  작성날짜 : 2021/05/11
 */
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.increpas.project.controller.ProjController;

public class EmotionForm implements ProjController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {	
		
		String view = "movie/emotion"; 

		return view;
	}

}