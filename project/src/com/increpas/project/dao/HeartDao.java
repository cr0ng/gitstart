package com.increpas.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.increpas.project.db.ProjDBCP;
import com.increpas.project.sql.HeartSQL;
import com.increpas.project.vo.HeartVO;

public class HeartDao {
	
	private ProjDBCP db;
	private Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private HeartSQL hSQL;
	
	public HeartDao() {
		db = new ProjDBCP();
		hSQL = new HeartSQL();
	}
	
	// 찜한 영화 번호 추출
	public ArrayList<HeartVO> getList(int member_num){
		ArrayList<HeartVO> list = new ArrayList<HeartVO>();
		con = db.getCon();
		String sql = hSQL.getSQL(hSQL.SEL_HEART_MOVIE);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setInt(1, member_num);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				HeartVO hVO = new HeartVO();
				hVO.setMovie_num(rs.getInt("mno"));
				list.add(hVO);
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
	
	public ArrayList<Integer> getList(String user_id){
		ArrayList<Integer> list = new ArrayList<Integer>();
		con = db.getCon();
		String sql = hSQL.getSQL(hSQL.SEL_HEART_ID);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setString(1, user_id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				list.add(rs.getInt("mno"));
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
	
	public int getMyHeart(HeartVO hVO) {
		int cnt = 0;
		con = db.getCon();
		String sql = hSQL.getSQL(hSQL.ADD_HEART);
		pstmt = db.getPSTMT(con, sql);
		
		try {
			pstmt.setInt(1, hVO.getMovie_num());
			pstmt.setInt(2, hVO.getMember_num());
			
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			db.close(pstmt);
			db.close(con);
		}
		return cnt;
	}
	
}
