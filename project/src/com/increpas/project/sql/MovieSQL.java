package com.increpas.project.sql;

public class MovieSQL {
	public final int SEL_TOTAL_CNT		= 1001;
	public final int SEL_MOVIE_LIST		= 1002;
	public final int SEL_MNO_DETAIL 	= 1003;
	public final int SEL_MOVIE_GENLIST	= 1004;
	
	public String getSQL(int code) {
		StringBuffer buff = new StringBuffer();
		switch(code) {
		case SEL_TOTAL_CNT:
			buff.append("SELECT ");
			buff.append("    count(*) cnt ");
			buff.append("FROM ");
			buff.append("    movie ");
			break;

		case SEL_MOVIE_LIST:
			buff.append("SELECT ");
			buff.append("    rno, mno, posno, title ");
			buff.append("FROM ");
			buff.append("    ( ");
			buff.append("        SELECT ");
			buff.append("            ROWNUM rno, mno, title, posno ");
			buff.append("        FROM ");
			buff.append("            ( ");
			buff.append("                SELECT ");
			buff.append("                    mno, title, posno ");
			buff.append("                FROM ");
			buff.append("                    movie m, poster p ");
			buff.append("                WHERE ");
			buff.append("                    mno = mnum ");
			buff.append("            ) ");
			buff.append("    ) ");
			buff.append("WHERE ");
			buff.append("    rno BETWEEN ? AND ? ");
			break;
		case SEL_MOVIE_GENLIST:
			buff.append("SELECT ");
			buff.append("    title, mno, savename, dir ");
			buff.append("FROM ");
			buff.append("    ( ");
			buff.append("        SELECT ");
			buff.append("            rownum rno, title, mno, savename, dir ");
			buff.append("        FROM ");
			buff.append("            ( ");
			buff.append("                SELECT ");
			buff.append("                    title, mno, savename, dir ");
			buff.append("                FROM ");
			buff.append("                    genmovie g, movie m, poster p ");
			buff.append("                WHERE ");
			buff.append("                     g.mnum = m.mno ");
			buff.append("                     AND m.mno = p.mnum ");
			buff.append("                    AND gnum= ? ");
			buff.append("            ) ");
			buff.append("    ) ");
			buff.append("WHERE ");
			buff.append("   rno BETWEEN ? AND ? ");
			break;
		case SEL_MNO_DETAIL:
			buff.append("SELECT ");
			buff.append("    mno, posno, title, year, hour, director, actor1, actor2, actor3, genre, plot, age_grade ");
			buff.append("FROM ");
			buff.append("    movie, poster ");
			buff.append("WHERE ");
			buff.append("    mno = mnum ");
			buff.append("	AND mno = ? ");
			break;
		

		}
		return buff.toString();
	}
}
