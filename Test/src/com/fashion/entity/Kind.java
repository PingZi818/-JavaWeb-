package com.fashion.entity;
public class Kind {
	private int kid;
	private String kind;
	public int getKid() {
		return kid;
	}
	public void setKid(int kid) {
		this.kid = kid;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public Kind(int kid, String kind) {
		super();
		this.kid = kid;
		this.kind = kind;
	}
	
	}
