package com.prototype.file.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Stocks {
	@Id
	@Column(name="CompId")
	private String CompId;
	@Column(name="CompanyName")
	private String CompanyName;
	@Column(name="dividend")
	private long dividend;
	@Column(name="StockExchange")
	private String StockExchange;
	public String getCompId() {
		return CompId;
	}
	public void setCompId(String compId) {
		CompId = compId;
	}
	public String getCompanyName() {
		return CompanyName;
	}
	public void setCompanyName(String companyName) {
		CompanyName = companyName;
	}
	public long getDividend() {
		return dividend;
	}
	public void setDividend(long dividend) {
		this.dividend = dividend;
	}
	public String getStockExchange() {
		return StockExchange;
	}
	public void setStockExchange(String stockExchange) {
		StockExchange = stockExchange;
	}
}
