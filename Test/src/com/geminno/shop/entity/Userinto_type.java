package com.geminno.shop.entity;

public class Userinto_type {

	private int type_id;
	private String type_name;
	public Userinto_type() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public Userinto_type(int type_id,String type_name) {
		super();
		// TODO Auto-generated constructor stub
		this.type_id=type_id;
		this.type_name=type_name;
	}
	
	
	public int getType_id() {
		return type_id;
	}
	public void setType_id(int typeId) {
		type_id = typeId;
	}
	public String getType_name() {
		return type_name;
	}
	public void setType_name(String typeName) {
		type_name = typeName;
	}
	
	
	
	
}
