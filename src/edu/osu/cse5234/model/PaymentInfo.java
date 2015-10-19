package edu.osu.cse5234.model;

import java.io.Serializable;

public class PaymentInfo implements Serializable {
	
	public PaymentInfo() {
		super();
	}
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	String ccNo;
	String cvvNo;
	String expDate;
	String Owner;
	public String getCcNo() {
		return ccNo;
	}
	public void setCcNo(String ccNo) {
		this.ccNo = ccNo;
	}
	public String getCvvNo() {
		return cvvNo;
	}
	public void setCvvNo(String cvvNo) {
		this.cvvNo = cvvNo;
	}
	public String getExpDate() {
		return expDate;
	}
	public void setExpDate(String expDate) {
		this.expDate = expDate;
	}
	public String getOwner() {
		return Owner;
	}
	public void setOwner(String owner) {
		Owner = owner;
	}

}
