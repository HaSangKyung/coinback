package com.lgcns.coinback.history.dao;

import java.util.List;

import com.lgcns.coinback.history.vo.HistoryVO;
import com.lgcns.coinback.user.vo.UserVO;

public interface HistoryDAO {

	void insertPayHistory(HistoryVO vo) throws Exception;

	List<?> selectOrgList() throws Exception;

	List<?> selectPayHistoryByOrgName(HistoryVO vo) throws Exception;

	List<?> selectPayHistoryByBarcode(HistoryVO vo) throws Exception;

	public UserVO selectUserInfoByBarcode(String barcodeNum) throws Exception;	
	
	HistoryVO sumPayHistory(HistoryVO vo) throws Exception;
}