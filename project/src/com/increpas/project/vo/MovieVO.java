package com.increpas.project.vo;

public class MovieVO {
	private int  mno, year, hour, platform1, platform2, platform3, rating, posno;
	private String title, director, actor1, actor2, actor3, genre, plot, music, url, age_grade, savename, dir;
	public String getDir() {
		return dir;
	}
	public void setDir(String dir) {
		this.dir = dir;
	}
	private int gmno, gnum, mnum, gno, cnt;
	private String name;
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public int getPosno() {
		return posno;
	}
	public void setPosno(int posno) {
		this.posno = posno;
	}
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getHour() {
		return hour;
	}
	public void setHour(int hour) {
		this.hour = hour;
	}
	public int getPlatform1() {
		return platform1;
	}
	public void setPlatform1(int platform1) {
		this.platform1 = platform1;
	}
	public int getPlatform2() {
		return platform2;
	}
	public void setPlatform2(int platform2) {
		this.platform2 = platform2;
	}
	public int getPlatform3() {
		return platform3;
	}
	public void setPlatform3(int platform3) {
		this.platform3 = platform3;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	
	public String getAge_grade() {
		return age_grade;
	}
	public void setAge_grade(String age_grade) {
		this.age_grade = age_grade;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getActor1() {
		return actor1;
	}
	public void setActor1(String actor1) {
		this.actor1 = actor1;
	}
	public String getActor2() {
		return actor2;
	}
	public void setActor2(String actor2) {
		this.actor2 = actor2;
	}
	public String getActor3() {
		return actor3;
	}
	public void setActor3(String actor3) {
		this.actor3 = actor3;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getPlot() {
		return plot;
	}
	public void setPlot(String plot) {
		this.plot = plot;
	}
	public String getMusic() {
		return music;
	}
	public void setMusic(String music) {
		this.music = music;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
	public int getGno() {
		return gno;
	}
	public void setGno(int gno) {
		this.gno = gno;
	}
	
	public int getGmno() {
		return gmno;
	}
	public void setGmno(int gmno) {
		this.gmno = gmno;
	}
	public int getGnum() {
		return gnum;
	}
	public void setGnum(int gnum) {
		this.gnum = gnum;
	}
	public int getMnum() {
		return mnum;
	}
	public void setMnum(int mnum) {
		this.mnum = mnum;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSavename() {
		return savename;
	}
	public void setSavename(String savename) {
		this.savename = savename;
	}
	@Override
	public String toString() {
		return "MovieVO  :mno=" + mno + ", year=" + year + ", hour=" + hour + ", platform1=" + platform1 + ", platform2="
				+ platform2 + ", platform3=" + platform3 + ", rating=" + rating + ", posno=" + posno + ", title="
				+ title + ", director=" + director + ", actor1=" + actor1 + ", actor2=" + actor2 + ", actor3=" + actor3
				+ ", genre=" + genre + ", plot=" + plot + ", music=" + music + ", url=" + url + ", age_grade="
				+ age_grade + ", savename=" + savename + ", dir=" + dir + ", gmno=" + gmno + ", gnum=" + gnum
				+ ", mnum=" + mnum + ", gno=" + gno + ", cnt=" + cnt + ", name=" + name;
	}
	
	
	
	
	
}
