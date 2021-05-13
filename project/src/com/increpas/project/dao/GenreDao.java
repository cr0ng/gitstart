package com.increpas.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.increpas.project.db.ProjDBCP;
import com.increpas.project.sql.*;
import com.increpas.project.vo.*;

public class GenreDao {
	private ProjDBCP db;
	private Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private GenreSQL gSQL;
	
	public GenreDao() {
		db = new ProjDBCP();
		gSQL = new GenreSQL();
	}
	
	// 장르 총 개수 
	public int getTotal() {
		int cnt = 0;
		con = db.getCon();
		String sql = gSQL.getSQL(gSQL.SEL_TOTAL_CNT);
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
	
	// 장르 리스트 조회 
	public ArrayList<GenreVO> getList(){
		ArrayList<GenreVO> list = new ArrayList<GenreVO>();
		con = db.getCon();
		String sql = gSQL.getSQL(gSQL.SEL_GNO_DETAIL);
		pstmt = db.getPSTMT(con, sql);
		try {
			rs = pstmt.executeQuery();
			while(rs.next()) {
				GenreVO gVO = new GenreVO();
				gVO.setGno(rs.getInt("gno"));
				gVO.setCnt(rs.getInt("cnt"));
				gVO.setName(rs.getString("name"));
//				System.out.println(gVO);
				list.add(gVO);
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			db.close(rs);
			db.close(pstmt);
			db.close(con);
		}
		return list;
		/*
		ArrayList<GenreVO> list = new ArrayList<GenreVO>();
		con = db.getCon();
		String sql = gSQL.getSQL(gSQL.SEL_ALL_LIST);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setInt(1, page.getStartCont());
			pstmt.setInt(2, page.getEndCont());
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				GenreVO vo = new GenreVO();
				vo.setGno(rs.getInt("gno"));
				vo.setMnum(rs.getInt("mnum"));
				vo.setName(rs.getString("name"));
				
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
		*/
	}
	/*
	public ArrayList<GenreVO> getGnoInfo(int gno) {
		ArrayList<GenreVO> list = new ArrayList<GenreVO>();
		con = db.getCon();
		String sql = gSQL.getSQL(gSQL.SEL_GNO_DETAIL);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setInt(1, gno);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				GenreVO gVO = new GenreVO();
				gVO.setGno(rs.getInt("gno"));
				gVO.setCnt(rs.getInt("cnt"));
				gVO.setName(rs.getString("name"));
				System.out.println(gVO);
				list.add(gVO);
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
	*/
	// 장르별 영화 보기
	public ArrayList<GenreVO> getGenreInfo(int gnum){
		ArrayList<GenreVO> list = new ArrayList<GenreVO>();
		con = db.getCon();
		String sql = gSQL.getSQL(gSQL.SEL_GENRE_MOVIE);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setInt(1, gnum);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				GenreVO gVO = new GenreVO();
				gVO.setMno(rs.getInt("mno"));
				gVO.setTitle(rs.getString("title"));
				list.add(gVO);
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
	

	// 영화 장르별 총 개수 조회 전담 처리함수
	public int getTotal(int gno) {
		int cnt = 0;
		con = db.getCon();
		String sql = gSQL.getSQL(gSQL.SEL_TOTAL_CNT) + 
				" WHERE gnum = ? ";
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setInt(1, gno);
			rs = pstmt.executeQuery();
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
}
