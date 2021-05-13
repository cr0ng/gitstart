package com.increpas.project.sql;

public class GenreSQL {
	public final int SEL_TOTAL_CNT		= 1001;
	public final int SEL_ALL_LIST 		= 1002;
	public final int SEL_GNO_DETAIL 	= 1003;
	public final int SEL_GENRE_MOVIE 	= 1004;
	
	public String getSQL(int code) {
		StringBuffer buff = new StringBuffer();
		switch(code) {
		case SEL_TOTAL_CNT:
			buff.append("SELECT ");
			buff.append("    count(*) cnt ");
			buff.append("FROM ");
			buff.append("    genmovie ");
			break;
			
		case SEL_ALL_LIST:
			buff.append("SELECT ");
			buff.append("    rno, gno, mnum, name ");
			buff.append("FROM ");
			buff.append("    ( ");
			buff.append("        SELECT ");
			buff.append("            ROWNUM rno, gno, mnum, name ");
			buff.append("        FROM ");
			buff.append("            ( ");
			buff.append("                SELECT ");
			buff.append("                    gno, mnum, name ");
			buff.append("                FROM ");
			buff.append("                    genmovie, genre ");
			buff.append("                WHERE ");
			buff.append("                    gno = gnum ");
			buff.append("            ) ");
			buff.append("    ) ");
			buff.append("WHERE ");
			buff.append("    rno BETWEEN ? AND ? ");
			break;
			
		case SEL_GNO_DETAIL:
			buff.append("SELECT ");
			buff.append("    gno, name, cnt ");
			buff.append("FROM ");
			buff.append("    genre, ");
			buff.append("    ( ");
			buff.append("        SELECT ");
			buff.append("            gnum, count(*) cnt ");
			buff.append("        FROM ");
			buff.append("           genmovie ");
			buff.append("        GROUP BY ");
			buff.append("            gnum ");
			buff.append("    ) ");
			buff.append("WHERE ");
			buff.append("    gno = gnum ");
			break;
		case SEL_GENRE_MOVIE:	
			buff.append("SELECT ");
			buff.append("	mno, title ");
			buff.append("FROM ");
			buff.append("	genmovie, movie ");
			buff.append("WHERE ");
			buff.append("	mnum = mno ");
			buff.append("	AND ");
			buff.append("	gnum = ? ");
			break;
		}
		return buff.toString();
	}
		
}
