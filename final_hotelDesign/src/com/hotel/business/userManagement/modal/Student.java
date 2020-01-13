package com.hotel.business.userManagement.modal;

public class Student {
	private int id, card;
	private String name, sex, address, birthday, beizhu;

	public int getId() {
		return id;
	}

	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Student(int id, int card, String name, String sex, String address, String birthday, String beizhu) {
		super();
		this.id = id;
		this.card = card;
		this.name = name;
		this.sex = sex;
		this.address = address;
		this.birthday = birthday;
		this.beizhu = beizhu;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCard() {
		return card;
	}

	public void setCard(int card) {
		this.card = card;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getBirthday() {
		return birthday;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", card=" + card + ", name=" + name + ", sex=" + sex + ", address=" + address
				+ ", birthday=" + birthday + ", beizhu=" + beizhu + "]";
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getBeizhu() {
		return beizhu;
	}

	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}

}
