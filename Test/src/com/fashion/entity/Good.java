package com.fashion.entity;

public class Good {
	private int gid;
	private String good;
	private String brand;
	private String kind;
	private String skill;
	private Double price;
	private String gphoto;
	

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
public Double getPrice() {
	return price;
}
public void setPrice(Double price) {
	this.price = price;
}
public String getGphoto() {
	return gphoto;
}
public void setGphoto(String gphoto) {
	this.gphoto = gphoto;
}
public Good(int gid, String good, String brand, String kind, String skill, Double price,String gphoto) {
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