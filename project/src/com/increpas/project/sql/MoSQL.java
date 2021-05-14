package com.increpas.project.sql;

public class MoSQL {
	public final int SEL_MO_LIST	= 1001;

	public String getSQL(int code) {
		StringBuffer buff = new StringBuffer();
		switch(code) {
		case SEL_MO_LIST :
		buff.append("SELECT ");
		buff.append("    rno, mno, posno, title ");
		buff.append("FROM ");
		buff.append("    ( ");
		buff.append("        SELECT ");
		buff.append("            ROWNUM rno, mno, title, posno ");
		buff.append("        FROM ");
		buff.append("        ( ");
		buff.append("            SELECT ");
		buff.append("                mno, title, posno ");
		buff.append("            FROM ");
		buff.append("                movie m , poster p ");
		buff.append("            WHERE ");
		buff.append("                title LIKE ? ");
		buff.append("                AND mno = mnum ");
		buff.append("        ) ");
		buff.append("    ) ");
		break;
		}
	return buff.toString();
	}
}
