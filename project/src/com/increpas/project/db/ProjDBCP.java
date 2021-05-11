package com.increpas.project.db;

import java.sql.*;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ProjDBCP {
	public DataSource ds;
	
	public ProjDBCP() {
		try {
			InitialContext context = new InitialContext();
			ds = (DataSource) context.lookup("java:/comp/env/jdbc/TestDB");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public Connection getCon() {
		Connection con = null;
		try {
			con = ds.getConnection();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return con;
	}
	
	public Statement getSTMT(Connection con) {
		Statement stmt = null;
		try {
			stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return stmt;
	}
	
	public PreparedStatement getPSTMT(Connection con, String sql) {
		PreparedStatement pstmt = null;
		try {
			pstmt = con.prepareStatement(sql,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return pstmt;
	}
	
	// 사용하지 않는 자원 반환하는 함수
	public void close(Object o) {
		try {
			// 이 함수를 호출할 때 입력한 데이터가 무엇인지 파악하고 닫아준다.
			if(o instanceof Connection) {
				((Connection)o).close();
			}else if(o instanceof Statement) {
				((Statement)o).close();
			}else if(o instanceof  PreparedStatement) {
				((PreparedStatement)o).close();
			}else if(o instanceof ResultSet) {
				((ResultSet)o).close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
