package com.increpas.project.sql;

public class HeartSQL {
	public final int SEL_HEART_MOVIE	= 1001;
	public final int SEL_HEART_ID		= 1002;
	
	public final int ADD_HEART			= 3001;
	
	public String getSQL(int code) {
		StringBuffer buff = new StringBuffer();
		switch(code) {
		case SEL_HEART_MOVIE:
			buff.append("SELECT ");
			buff.append("    movie_num mno ");
			buff.append("FROM ");
			buff.append("    heart ");
			buff.append("WHERE ");
			buff.append("    member_num = ? ");
			break;

		case SEL_HEART_ID:
			buff.append("SELECT ");
			buff.append("    movie_num mno ");
			buff.append("FROM ");
			buff.append("    heart ");
			buff.append("WHERE ");
			buff.append("    member_num = ( ");
			buff.append("                    SELECT ");
			buff.append("                        user_no ");                        
			buff.append("                    FROM ");
			buff.append("                        member ");
			buff.append("                    WHERE ");
			buff.append("                        user_id = ? ");
			buff.append("                    ) ");
			break;
		case ADD_HEART: 
			buff.append("INSERT INTO ");
			buff.append("    heart(hno, movie_num, member_num) ");
			buff.append("VALUES( ");
			buff.append("    (	SELECT "); 
			buff.append("			NVL(MAX(hno) + 1, 100001) "); 
			buff.append("		FROM "); 
			buff.append("			heart ");
			buff.append("	), ?, ? ");
			buff.append(") ");
			break;
		}
		

		return buff.toString();
	}
}
