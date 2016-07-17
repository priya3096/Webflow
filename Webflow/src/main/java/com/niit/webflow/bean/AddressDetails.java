package com.niit.webflow.bean;
import java.io.Serializable;

public class AddressDetails implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private String houseNo;
	private String laneNo;
	private String location;
	public String getHouseNo() {
		return houseNo;
	}
	public void setHouseNo(String houseNo) {
		this.houseNo = houseNo;
	}
	public String getLaneNo() {
		return laneNo;
	}
	public void setLaneNo(String laneNo) {
		this.laneNo = laneNo;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	

}
