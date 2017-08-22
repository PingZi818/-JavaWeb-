package com.geminno.shop.entity;

public class GoodsShow {
	private String product_name;
    private double price;
    private int number;
    
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public GoodsShow(String product_name, double price, int number) {
		super();
		this.product_name = product_name;
		this.price = price;
		this.number = number;
	}
	
    

}
