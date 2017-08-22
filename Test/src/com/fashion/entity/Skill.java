package com.fashion.entity;

public class Skill {
	private int sid;
	private String skill;
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getSkill() {
		return skill;
	}
	public void setSkill(String skill) {
		this.skill = skill;
	}
	public Skill(int sid, String skill) {
		super();
		this.sid = sid;
		this.skill = skill;
	}
	
}
