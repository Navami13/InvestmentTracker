package com.prototype.file.entity;

import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.*;
@Entity
public class Bank {
	@Id
	@Column(name="BankName")
	private String BankName;
	@Column(name="IFSC")
	private String IFSC;
	@Column(name="AccountNumber")
	private String AccountNumber;
	//Interest rate per annum on Savings Account
	@Column(name="InterestRateSB")
	private long InterestRateSB;
	@Column(name="InterestRateFD")
	private long InterestRateFD;
	public String getBankName() {
		return BankName;
	}
	public void setBankName(String bankName) {
		BankName = bankName;
	}
	public String getIFSC() {
		return IFSC;
	}
	public void setIFSC(String iFSC) {
		IFSC = iFSC;
	}
	public String getAccountNumber() {
		return AccountNumber;
	}
	public void setAccountNumber(String accountNumber) {
		AccountNumber = accountNumber;
	}
	public long getInterestRateSB() {
		return InterestRateSB;
	}
	public void setInterestRateSB(long interestRateSB) {
		InterestRateSB = interestRateSB;
	}
	public long getInterestRateFD() {
		return InterestRateFD;
	}
	public void setInterestRateFD(long interestRateFD) {
		InterestRateFD = interestRateFD;
	}
	
}
