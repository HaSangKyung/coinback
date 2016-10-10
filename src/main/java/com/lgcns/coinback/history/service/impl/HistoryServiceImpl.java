package com.lgcns.coinback.history.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lgcns.coinback.history.dao.HistoryDAO;
import com.lgcns.coinback.history.service.HistoryService;
import com.lgcns.coinback.history.vo.HistoryVO;
import com.lgcns.coinback.user.vo.UserVO;


@Service("historyService")
public class HistoryServiceImpl implements HistoryService {

	@Autowired
	private HistoryDAO historyDAO;
	
	@Override
	public void insertPayHistory(HistoryVO vo) throws Exception {
		historyDAO.insertPayHistory(vo);
	}

	@Override
	public List<?> selectOrgList() throws Exception {
		return historyDAO.selectOrgList();
	}	
	
	@Override
	public List<?> selectPayHistoryByOrgName(HistoryVO vo) throws Exception{
		return historyDAO.selectPayHistoryByOrgName(vo);
	}
	
	@Override
	public List<?> selectPayHistoryByBarcode(HistoryVO vo) throws Exception{
		return historyDAO.selectPayHistoryByBarcode(vo);
	}

	@Override
	public UserVO selectUserInfoByBarcode(String barcodeNum) throws Exception {
		return historyDAO.selectUserInfoByBarcode(barcodeNum);
	}

	@Override
	public HistoryVO sumPayHistory(HistoryVO vo) throws Exception {
		return historyDAO.sumPayHistory(vo);
	}	

}
