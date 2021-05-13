package com.increpas.project.dao;

import java.sql.*;
import java.util.*;

import com.increpas.project.db.*;
import com.increpas.project.sql.*;
import com.increpas.project.util.*;
import com.increpas.project.vo.*;

public class MovieDao {
	private ProjDBCP db;
	private Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private MovieSQL mSQL;
	
	public MovieDao() {
		db = new ProjDBCP();
		mSQL = new MovieSQL();
	}
	
	// 영화 총 개수 조회 전담 처리함수
	public int getTotal() {
		int cnt = 0;
		con = db.getCon();
		String sql = mSQL.getSQL(mSQL.SEL_TOTAL_CNT);
		stmt = db.getSTMT(con);
		try {
			rs = stmt.executeQuery(sql);
			rs.next();
			cnt = rs.getInt("cnt");
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			db.close(rs);
			db.close(stmt);
			db.close(con);
		}
		return cnt;
	}
	
	// 영화 리스트 조회 전담 처리함수
	public ArrayList<MovieVO> getList(PageUtil page, int gno){
		ArrayList<MovieVO> list = new ArrayList<MovieVO>();
		con = db.getCon();
		String sql = mSQL.getSQL(mSQL.SEL_MOVIE_GENLIST);
		pstmt = db.getPSTMT(con, sql);
		try {
			// 4. 질의명령 완성
			pstmt.setInt(1, gno);
			pstmt.setInt(2, page.getStartCont());
			pstmt.setInt(3, page.getEndCont());
			// 5. 질의명령 보내고 결과 받고
			rs = pstmt.executeQuery();
			// 6. 결과에서 데이터꺼내서 vo에 담고
			while(rs.next()) {
				MovieVO vo = new MovieVO();
				vo.setTitle(rs.getString("title"));
				vo.setMno(rs.getInt("mno"));
				vo.setSavename(rs.getString("savename"));
				vo.setDir(rs.getString("dir"));
				list.add(vo);
			} 
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			db.close(rs);
			db.close(pstmt);
			db.close(con);
		}
		return list;
	}
	
	
	// 영화 리스트 조회 전담 처리함수
	public ArrayList<MovieVO> getList(PageUtil page){
		ArrayList<MovieVO> list = new ArrayList<MovieVO>();
		con = db.getCon();
		String sql = mSQL.getSQL(mSQL.SEL_MOVIE_LIST);
		pstmt = db.getPSTMT(con, sql);
		try {
			// 4. 질의명령 완성
			pstmt.setInt(1, page.getStartCont());
			pstmt.setInt(2, page.getEndCont());
			// 5. 질의명령 보내고 결과 받고
			rs = pstmt.executeQuery();
			// 6. 결과에서 데이터꺼내서 vo에 담고
			while(rs.next()) {
				MovieVO vo = new MovieVO();
				vo.setTitle(rs.getString("title"));
				vo.setMno(rs.getInt("mno"));
				vo.setPosno(rs.getInt("posno"));
				list.add(vo);
			} 
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			db.close(rs);
			db.close(pstmt);
			db.close(con);
		}
		return list;
	}
	
	// 영화 상세 정보 조회 전담 처리함수
	public MovieVO getMnoInfo(int mno) {
		MovieVO mVO = new MovieVO();
		con = db.getCon();
		String sql = mSQL.getSQL(mSQL.SEL_MNO_DETAIL);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setInt(1, mno);
			rs = pstmt.executeQuery();
			rs.next();
			mVO.setMno(rs.getInt("mno"));
			mVO.setPosno(rs.getInt("posno"));
			mVO.setTitle(rs.getString("title"));
			mVO.setYear(rs.getInt("year"));
			mVO.setHour(rs.getInt("hour"));
			mVO.setDirector(rs.getString("director"));
			mVO.setActor1(rs.getString("actor1"));
			mVO.setActor2(rs.getString("actor2"));
			mVO.setActor3(rs.getString("actor3"));
			mVO.setGenre(rs.getString("genre"));
			mVO.setPlot(rs.getString("plot"));
			mVO.setAge_grade(rs.getString("age_grade"));
			
			System.out.println(mVO);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			db.close(rs);
			db.close(pstmt);
			db.close(con);
		}
		return mVO;
	}
	
	// 찜하기 기능 
}
