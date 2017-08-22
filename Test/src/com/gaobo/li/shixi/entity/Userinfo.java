package com.gaobo.li.shixi.entity;

public class Userinfo {

	private String username;
	private int userpasswd;
	private int age;
	private String sex;
	private int tel;
	private String address;
	
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getUserpasswd() {
		return userpasswd;
	}
	public void setUserpasswd(int userpasswd) {
		this.userpasswd = userpasswd;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getTel() {
		return tel;
	}
	public void setTel(int tel) {
		this.tel = tel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Userinfo(String username, int userpasswd, int age, String sex, int tel, String address) {
		super();
		
		this.username = username;
		this.userpasswd = userpasswd;
		this.age = age;
		this.sex = sex;
		this.tel = tel;
		this.address = address;
	}
}
