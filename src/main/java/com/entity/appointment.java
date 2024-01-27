package com.entity;

public class appointment {
private int id;
private int user_id;
private String fullName;
private String gender;
private String age;
private String appoinDate;
private String email;
private String phno;
private String diseases;
private int doctor_id;
private String address;
private String status;
public appointment() {
	super();
	
}
public appointment(int user_id, String fullName, String gender, String age, String appoinDate, String email,
		String phno, String diseases, int doctor_id, String address, String status) {
	super();
	this.user_id = user_id;
	this.fullName = fullName;
	this.gender = gender;
	this.age = age;
	this.appoinDate = appoinDate;
	this.email = email;
	this.phno = phno;
	this.diseases = diseases;
	this.doctor_id = doctor_id;
	this.address = address;
	this.status = status;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getUser_id() {
	return user_id;
}
public void setUser_id(int user_id) {
	this.user_id = user_id;
}
public String getFullName() {
	return fullName;
}
public void setFullName(String fullName) {
	this.fullName = fullName;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getAge() {
	return age;
}
public void setAge(String age) {
	this.age = age;
}
public String getAppoinDate() {
	return appoinDate;
}
public void setAppoinDate(String appoinDate) {
	this.appoinDate = appoinDate;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPhno() {
	return phno;
}
public void setPhno(String phno) {
	this.phno = phno;
}
public String getDiseases() {
	return diseases;
}
public void setDiseases(String diseases) {
	this.diseases = diseases;
}
public int getDoctor_id() {
	return doctor_id;
}
public void setDoctor_id(int doctor_id) {
	this.doctor_id = doctor_id;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}


	
}
