package com.increpas.project.vo;

import java.sql.Date;
import java.sql.Time;
import java.text.*;
import java.util.*;

public class NoticeVO {
	private int notice_no, hit;
	private String title, content, sdate;
	private Date wdate;
	private Time wtime;
	public int getNotice_no() {
		return notice_no;
	}
	public void setNotice_no(int notice_no) {
		this.notice_no = notice_no;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getWdate() {
		return wdate;
	}
	public void setSdate() {
		SimpleDateFormat form1 = new SimpleDateFormat("yyyy/MM/dd");
		SimpleDateFormat form2 = new SimpleDateFormat(" HH:mm:ss");
		sdate = form1.format(wdate) + form2.format(wtime);
	}
	public void setSdate(Date wdate) {
		SimpleDateFormat form1 = new SimpleDateFormat("yyyy/MM/dd");
		sdate = form1.format(wdate);
	}
	
	public void setSdate(String sdate) {
		this.sdate = sdate;
	}
	
	public Time getWtime() {
		return wtime;
	}
	public void setWtime(Time wtime) {
		this.wtime = wtime;
	}
	public String getSdate() {
		return sdate;
	}
	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}
	
		
}
	
	
