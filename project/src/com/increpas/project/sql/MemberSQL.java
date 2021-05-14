package com.increpas.project.sql;

public class MemberSQL {
	public final int SEL_LOGIN		= 1001;
	public final int SEL_ID_INFO	= 1002;
	public final int SEL_ID			= 1003;
	public final int SEL_PW			= 1004;
	
	public final int ADD_MEMB 		= 3001;
	
	public String getSQL(int code) {
		StringBuffer buff = new StringBuffer();
		switch(code) {
		case SEL_LOGIN :
			buff.append("SELECT ");
			buff.append("    COUNT(*) cnt ");
			buff.append("FROM ");
			buff.append("    member ");
			buff.append("WHERE ");
			buff.append("    isShow = 'Y' ");
			buff.append("    AND user_id = ? ");
			buff.append("    AND user_pw = ? ");
		break;
		
		case SEL_ID_INFO : 
			buff.append("SELECT ");
			buff.append("   user_no, user_id, user_name, nickname, gender, email, age ");
			buff.append("FROM ");
			buff.append("    member ");
			buff.append("WHERE ");
			buff.append("    isShow = 'Y' ");
			buff.append("    AND user_id = ? ");
		break;
		
		case SEL_ID :
			buff.append(" SELECT ");
			buff.append("     user_id ");
			buff.append(" FROM ");
			buff.append("     member ");
			buff.append(" WHERE ");
			buff.append("     user_name = ? ");
			buff.append("     AND email = ? ");
		break;	
		
		case ADD_MEMB :
			buff.append("INSERT INTO ");
			buff.append("    member(user_no, user_name, user_id, user_pw, email, nickname, gender, age) ");
			buff.append("VALUES( ");
			buff.append("    (SELECT NVL(MAX(user_no) + 1, 100001) FROM member), ");
			buff.append("    ?, ?, ?, ?, ?, ?, ? ");
			buff.append(") ");
		break;	
		}
		
		return buff.toString();
	}
}
