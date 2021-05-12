package com.increpas.project.dao;

import java.util.*;
import java.sql.*;
import java.sql.Date;

import com.increpas.project.db.*;
import com.increpas.project.sql.*;
import com.increpas.project.vo.*;
import com.increpas.project.util.*;


public class NoticeDao {
	private ProjDBCP db;
	private Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private NoticeSQL nSQL;
	
	public NoticeDao() {
		db = new ProjDBCP();
		nSQL = new NoticeSQL();
	}
	
	public int getTotal() {
		int cnt = 0; 
		
		// 커넥션꺼내오고
		con = db.getCon();
		// 질의명령 가져오고
		String sql = nSQL.getSQL(nSQL.SEL_TOTAL_CNT);
		// 스테이트먼트 준비하고
		stmt = db.getSTMT(con);
		try {
			// 질의명령 보내고 결과받고
			rs = stmt.executeQuery(sql);
			// 결과에서 데이터 꺼내고
			rs.next();
			cnt = rs.getInt("cnt");
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			db.close(rs);
			db.close(stmt);
			db.close(con);
		}
		// 데이터 반환하고
		return cnt;
	}

	// 게시글 리스트조회 전담 처리함수
	public ArrayList<NoticeVO> getList(PageUtil page) {
		ArrayList<NoticeVO> list = new ArrayList<NoticeVO>();
		// 1. 커넥션 꺼내오고
		con = db.getCon();
		// 2. 질의명령 가져오고
		String sql = nSQL.getSQL(nSQL.SEL_NOTICE_LIST);
		// 3. 스테이트먼트 준비하고
		pstmt = db.getPSTMT(con, sql);
		try {
			// 4. 질의명령 완성
			pstmt.setInt(1, page.getStartCont());
			pstmt.setInt(2, page.getEndCont());
			// 5. 질의명령 보내고 결과 받고
			rs = pstmt.executeQuery();
			// 6. 결과에서 데이터 꺼내서 vo 담고
			while(rs.next()) {
				// vo 만들고
				NoticeVO vo = new NoticeVO();
				vo.setNotice_no(rs.getInt("notice_no"));
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));
				vo.setWdate(rs.getDate("wdate"));
				vo.setSdate(vo.getWdate());
				// 7. vo 완성되면 list 에 담고
				list.add(vo);
			} 
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			db.close(rs);
			db.close(pstmt);
			db.close(con);
		}
		// 8. 리스트 반환해주고
		return list;
	}
}
