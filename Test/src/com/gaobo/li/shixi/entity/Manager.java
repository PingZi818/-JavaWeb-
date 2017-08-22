package com.gaobo.li.shixi.entity;

public class Manager {
	private String mname;
	public Manager(String mname, String mpasswd) {
		super();
		this.mname = mname;
		this.mpasswd = mpasswd;
	}
	private String mpasswd;
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMpasswd() {
		return mpasswd;
	}
	public void setMpasswd(String mpasswd) {
		this.mpasswd = mpasswd;
	}
	
	
	
}
