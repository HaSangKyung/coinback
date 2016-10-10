package com.lgcns.coinback.history.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lgcns.coinback.history.dao.HistoryDAO;
import com.lgcns.coinback.history.vo.HistoryVO;
import com.lgcns.coinback.user.vo.UserVO;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;

@Repository("historyDAO")
public class HistoryDAOImpl extends EgovAbstractMapper implements HistoryDAO {

	public void insertPayHistory(HistoryVO vo) throws Exception {
		insert("insertPayHistory", vo);
	}	

	public List<?> selectOrgList() throws Exception {
		return selectList("selectOrgList");
	}

	public List<?> selectPayHistoryByOrgName(HistoryVO vo) throws Exception {
		return selectList("selectPayHistoryByOrgName", vo);
	}
	
	
	public List<?> selectPayHistoryByBarcode(HistoryVO vo) throws Exception {
		return selectList("selectPayHistoryByBarcode", vo);
	}
	
	public UserVO selectUserInfoByBarcode(String barcodeNum) throws Exception {
		return (UserVO) selectOne("selectUserInfoByBarcode", barcodeNum);
	}

	@Override
	public HistoryVO sumPayHistory(HistoryVO vo) throws Exception {
		return selectOne("sumPayHistory", vo);
	}	
}
