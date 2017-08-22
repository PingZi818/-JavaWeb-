package com.zhxy.entity;

public class DingDan {
	private int orderid;
	private String ordertitle;
	private int orderprice;
	private int ordernumber;
	private String ordername;
	private String orderadd;

	public int getOrderid() {
		return orderid;
	}
	
	
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	
	
	public String getOrdername() {
		return ordername;
	}
	
	
	public void setOrdername(String ordername) {
		this.ordername = ordername;
	}
	
	
	public int getOrdernumber() {
		return ordernumber;
	}
	
	
	public void setOrdernumber(int ordernumber) {
		this.ordernumber = ordernumber;
	}
	
	
	public int getOrderprice() {
		return orderprice;
	}
	
	
	public void setOrderprice(int orderprice) {
		this.orderprice = orderprice;
	}
	
	
	public String getOrderadd() {
		return orderadd;
	}
	
	
	public void setOrderadd(String orderadd) {
		this.orderadd = orderadd;
	}
	
	
	public String getOrdertitle() {
		return ordertitle;
	}
	
	
	public void setOrdertitle(String ordertitle) {
		this.ordertitle = ordertitle;
	}
	

	public DingDan(int orderid,String ordertitle,  int orderprice,int ordernumber,String ordername,  String orderadd) {
		super();
		this.orderid = orderid;
		this.ordername = ordername;
		this.ordernumber = ordernumber;
		this.orderprice = orderprice;
		this.orderadd = orderadd;
		this.ordertitle = ordertitle;
	}
}
