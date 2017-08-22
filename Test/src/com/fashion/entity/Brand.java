package com.fashion.entity;

/**
 * Êý¾ÝÔØÌå
 * @author sun
 *
 */
public class Brand {
	private int bid;
	private String brand;
	private String bphoto;
	
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getBphoto() {
		return bphoto;
	}
	public void setBphoto(String bphoto) {
		this.bphoto = bphoto;
	}
	
	
	public Brand(int bid, String brand, String bphoto) {
		super();
		this.bid = bid;
		this.brand = brand;
		this.bphoto = bphoto;
	}
}
