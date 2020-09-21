package com.prototype.file.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.*;
import java.util.Date;

@Entity
public class InvestmentDetails {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="No")
	private int InvestmentNumber;
	@Column(name="Type")
	private String Type;
	@Temporal(TemporalType.TIMESTAMP)
	private Date Date;
	@Column(name="PurchasePrice")
	private String PurchasePrice;
	@Column(name="CurrentPrice")
	private String CurrentPrice;
	public int getInvestmentNumber() {
		return InvestmentNumber;
	}
	public void setInvestmentNumber(int investmentNumber) {
		InvestmentNumber = investmentNumber;
	}
	public String getType() {
		return Type;
	}
	public void setType(String type) {
		Type = type;
	}
	public Date getDate() {
		return Date;
	}
	public void setDate(Date date) {
		Date = date;
	}
	public String getPurchasePrice() {
		return PurchasePrice;
	}
	public void setPurchasePrice(String purchasePrice) {
		PurchasePrice = purchasePrice;
	}
	public String getCurrentPrice() {
		return CurrentPrice;
	}
	public void setCurrentPrice(String currentPrice) {
		CurrentPrice = currentPrice;
	}
}
