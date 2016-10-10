package com.lgcns.coinback.history.vo;

import org.springframework.stereotype.Component;

@Component
public class HistoryVO {

	private int payHistoryId;
	private String orgName;
	private String barcodeNum;
	private int amount;
	private String useYn;
	private String payDttm;
	private String strtDt;
	private String endDt;
	
	public int getPayHistoryId() {
		return payHistoryId;
	}
	public void setPayHistoryId(int payHistoryId) {
		this.payHistoryId = payHistoryId;
	}
	public String getOrgName() {
		return orgName;
	}
	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}
	public String getBarcodeNum() {
		return barcodeNum;
	}
	public void setBarcodeNum(String barcodeNum) {
		this.barcodeNum = barcodeNum;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getUseYn() {
		return useYn;
	}
	public void setUseYn(String useYn) {
		this.useYn = useYn;
	}
	public String getPayDttm() {
		return payDttm;
	}
	public void setPayDttm(String payDttm) {
		this.payDttm = payDttm;
	}
	public String getStrtDt() {
		return strtDt;
	}
	public void setStrtDt(String strtDt) {
		this.strtDt = strtDt;
	}
	public String getEndDt() {
		return endDt;
	}
	public void setEndDt(String endDt) {
		this.endDt = endDt;
	}

	
}
