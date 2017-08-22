package com.gaobo.li.shixi.entity;

public class Good {
	private String brand;
	private String kind;
	private String skill;
	private String price;
	private String gphoto;
	private int gid;
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	
	public String getGood() {
		return good;
	}
	public void setGood(String good) {
		this.good = good;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getSkill() {
		return skill;
	}
	public void setSkill(String skill) {
		this.skill = skill;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getGphoto() {
		return gphoto;
	}
	public void setGphoto(String gphoto) {
		this.gphoto = gphoto;
	}
	private String good;
	public Good(int gid, String good, String brand, String kind, String skill, String price, String gphoto) {
		super();
		this.gid = gid;
		this.good = good;
		this.brand = brand;
		this.kind = kind;
		this.skill = skill;
		this.price = price;
		this.gphoto = gphoto;
	}
	

}
