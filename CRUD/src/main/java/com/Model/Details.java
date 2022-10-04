package com.Model;

public class Details {
     private int id;
     private String name;
     private int age;
     private String course;
     private int fee;
     private int listid;
     public Details(int id, String name, int age, String course, int fee,int listid) {
 		this.id = id;
 		this.name = name;
 		this.age = age;
 		this.course = course;
 		this.fee = fee;
 		this.listid=listid;
 	}
	public Details(int id, String name, int age, String course, int fee) {
		this.id = id;
		this.name = name;
		this.age = age;
		this.course = course;
		this.fee = fee;
	}
	public Details(String name, int age, String course, int fee) {
		this.name = name;
		this.age = age;
		this.course = course;
		this.fee = fee;
	}
	public int getListid() {
		return listid;
	}
	public void setListid(int listid) {
		this.listid = listid;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public int getFee() {
		return fee;
	}
	public void setFee(int fee) {
		this.fee = fee;
	}    
}
