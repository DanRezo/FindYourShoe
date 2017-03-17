package com.sd.shoefinder;

public class Shoe {

	private String brand;
	private String type;
	private String run;
	private String picture;
	private String name;

	public Shoe(){}


	public Shoe(String brand, String name, String type, String run, String picture) {

		this.brand = brand;
		this.name = name;
		this.type = type;
		this.run = run;
		this.picture = picture;
	}



	public String getBrand() {
		return brand;
	}



	public void setBrand(String brand) {
		this.brand = brand;
	}



	public String getType() {
		return type;
	}



	public void setType(String type) {
		this.type = type;
	}



	public String getPicture() {
		return picture;
	}



	public void setPicture(String picture) {
		this.picture = picture;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}
	



	public String getRun() {
		return run;
	}



	public void setRun(String run) {
		this.run = run;
	}



	@Override
	public String toString() {
		return "Shoe:" + brand +" " + ", name=" + name + " " + ",type=" + type + " " + ",run " + run + ", picture=" + picture;
	}
	
	
	
}
