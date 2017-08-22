package com.geminno.shop.entity;

public class AddShopCar {
	private int id;
	private String product_name;
    private double price;
    private int number;
        
        public AddShopCar(int id,  String product_name,double price,int number) {
			super();
			// TODO Auto-generated constructor stub
			this.id=id;
			this.product_name=product_name;
			this.price=price;
			this.number=number;
			
		}
        public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
        
		public String getProduct_name() {
			return product_name;
		}
		public void setProduct_name(String productName) {
			product_name = productName;
		}
	
		public int getNumber() {
			return number;
		}
		public void setNumber(int number) {
			this.number = number;
		}
		public double getPrice() {
			return price;
		}
		public void setPrice(int price) {
			this.price = price;
		}
		
}
