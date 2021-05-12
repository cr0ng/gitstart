package com.increpas.project.dao;

import java.util.*;
import java.sql.*;

import com.increpas.project.db.ProjDBCP;
import com.increpas.project.sql.MemberSQL;
import com.increpas.project.vo.MemberVO;

public class MemberDao {
	ProjDBCP db;
	Connection con;
	Statement stmt;
	PreparedStatement pstmt;
	ResultSet rs;
	MemberSQL mSQL;
	
	public MemberDao() {
		db = new ProjDBCP();
		mSQL = new MemberSQL();
	}
	
	// 로그인 회원 정보 조회 전담 처리함수
	public MemberVO getLoginInfo(String sid) {
		
		MemberVO mVO = new MemberVO();
		con = db.getCon();
		String sql = mSQL.getSQL(mSQL.SEL_ID_INFO);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setString(1,sid);
			rs = pstmt.executeQuery();
			rs.next();
			
			int user_no = rs.getInt("user_no");
			String user_id = rs.getString("user_id");
			String user_name = rs.getString("user_name");
			String nickname = rs.getString("nickname");
			String gender = rs.getString("gender");
			String email = rs.getString("email");
			int age = rs.getInt("age");
			
			mVO.setUser_no(user_no);
			mVO.setUser_id(user_id);
			mVO.setUser_name(user_name);
			mVO.setNickname(nickname);
			mVO.setGender(gender.equals("M")? "남자" : "여자");
			mVO.setEmail(email);
			mVO.setAge(age);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(rs);
			db.close(pstmt);
			db.close(con);
		}
		return mVO;
	}
	
	// 로그인 처리 데이터베이스작업 전담 처리함수
	public int getLogin(String sid, String spw) {
		int cnt = 0;
		con = db.getCon();
		String sql = mSQL.getSQL(mSQL.SEL_LOGIN);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setNString(1, sid);
			pstmt.setNString(2, spw);
			
			rs = pstmt.executeQuery();
			rs.next();
			cnt = rs.getInt("cnt");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(rs);
			db.close(pstmt);
			db.close(con);
		}
		return cnt;
	}
	
	// 회원 아이디 찾기 처리함수
	public MemberVO getMyId(String sname,String smail) {
		
		MemberVO mVO = new MemberVO();
		
		con = db.getCon();
		String sql = mSQL.getSQL(mSQL.SEL_ID);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setString(1, sname);
			pstmt.setString(2, smail);
			
			rs=pstmt.executeQuery();
			rs.next();
			mVO.setUser_id(rs.getString("user_id"));
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(rs);
			db.close(pstmt);
			db.close(con);
		}
		return mVO;
	}
	
	// 회원가입 데이터베이스 전담 처리함수
	public int addMember(MemberVO mVO) {
		int cnt = 0;
		con = db.getCon();
		String sql = mSQL.getSQL(mSQL.ADD_MEMB);
		pstmt = db.getPSTMT(con, sql);
		try {
			pstmt.setString(1, mVO.getUser_name());
			pstmt.setString(2, mVO.getUser_id());
			pstmt.setString(3, mVO.getUser_pw());
			pstmt.setString(4, mVO.getEmail());
			pstmt.setString(5, mVO.getNickname());
			pstmt.setString(6, mVO.getGender());
			pstmt.setInt(7, mVO.getAge());
			cnt = pstmt.executeUpdate();
			System.out.println(cnt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(pstmt);
			db.close(rs);
		}
		return cnt;
	}
	

	
}
