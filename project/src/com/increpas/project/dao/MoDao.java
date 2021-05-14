package com.increpas.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.increpas.project.db.ProjDBCP;
import com.increpas.project.sql.MoSQL;
import com.increpas.project.vo.MoVO;

public class MoDao {
	ProjDBCP db;
	Connection con;
	Statement stmt;
	PreparedStatement pstmt;
	ResultSet rs;
	MoSQL mSQL;

	public MoDao() {
		db = new ProjDBCP();
		mSQL = new MoSQL();
	}
	
	// 검색어 영화 리스트 조회
	public ArrayList<MoVO> getMovieInfo(String word) {
		
		ArrayList<MoVO> list = new ArrayList<MoVO>();
		
		con =db.getCon();
		String sql = mSQL.getSQL(mSQL.SEL_MO_LIST);
		pstmt = db.getPSTMT(con, sql);
		
		try {
			pstmt.setString(1, word);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MoVO mVO = new MoVO();
				mVO.setMno(rs.getInt("mno"));
				mVO.setTitle(rs.getString("title"));
				mVO.setPosno(rs.getInt("posno"));
				list.add(mVO);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(rs);
			db.close(pstmt);
			db.close(con);
		}
		return list;
	}
}
