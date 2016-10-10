package com.lgcns.coinback.user.vo;

import org.springframework.stereotype.Component;

@Component
public class UserVO {

	private String phoneNum;
	private String barcodeNum;
	private int balance;
	private int changeBalance;
	private int amount;
	
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public String getBarcodeNum() {
		return barcodeNum;
	}
	public void setBarcodeNum(String barcodeNum) {
		this.barcodeNum = barcodeNum;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	public int getChangeBalance() {
		return changeBalance;
	}
	public void setChangeBalance(int changeBalance) {
		this.changeBalance = changeBalance;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	
	
}
