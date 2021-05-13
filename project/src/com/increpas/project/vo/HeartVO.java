package com.increpas.project.vo;

public class HeartVO {
	private int hno, movie_num, member_num, mno;
	private String user_id;
	
	public int getHno() {
		return hno;
	}

	public void setHno(int hno) {
		this.hno = hno;
	}

	public int getMovie_num() {
		return movie_num;
	}

	public void setMovie_num(int movie_num) {
		this.movie_num = movie_num;
	}

	public int getMember_num() {
		return member_num;
	}

	public void setMember_num(int member_num) {
		this.member_num = member_num;
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}
	
	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	@Override
	public String toString() {
		return "{'hno':" + hno + ", 'movie_num':" + movie_num + ", 'member_num':" + member_num + ", 'mno':" + mno + ", 'user_id':" + user_id + "}";
	}
	
}
