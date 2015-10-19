package edu.osu.cse5234.model;

import java.io.Serializable;

public class ShippingInfo implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	String Name;
	String AddressLine1;
	String AddressLine2;
	public ShippingInfo() {
		super();
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getAddressLine1() {
		return AddressLine1;
	}
	public void setAddressLine1(String addressLine1) {
		AddressLine1 = addressLine1;
	}
	public String getAddressLine2() {
		return AddressLine2;
	}
	public void setAddressLine2(String addressLine2) {
		AddressLine2 = addressLine2;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	String State;
	String zip;
}
