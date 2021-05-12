package com.increpas.project.sql;

public class NoticeSQL {
	public final int SEL_TOTAL_CNT		=	1001;
	public final int SEL_NOTICE_LIST	=	1002;
	
	public String getSQL(int code) {
		StringBuffer buff = new StringBuffer();
		switch(code) {
		case SEL_TOTAL_CNT:
			buff.append("SELECT ");
			buff.append("    count(*) cnt ");
			buff.append("FROM ");
			buff.append("    notice ");
			buff.append("WHERE ");
			buff.append("    isShow = 'Y' ");
			break;
		case SEL_NOTICE_LIST:
			buff.append("INSERT INTO notice(notice_no, title, content, hit) ");
			buff.append("VALUES( ");
			buff.append("    (SELECT NVL(MAX(notice_no) + 1, 1) FROM notice), ");
			buff.append("    ?, ");
			buff.append("    ?, ");
			buff.append("    0 ");
			buff.append(") ");
			break;
		}
		
		return buff.toString();
	}
}
