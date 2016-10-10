package com.lgcns.coinback.user.dao.impl;

import org.springframework.stereotype.Repository;

import com.lgcns.coinback.history.vo.HistoryVO;
import com.lgcns.coinback.user.dao.UserDAO;
import com.lgcns.coinback.user.vo.UserVO;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;


@Repository("userDAO")
public class UserDAOImpl extends EgovAbstractMapper implements UserDAO{
	
	public UserVO selectUserInfo(UserVO vo) throws Exception {
		return (UserVO) selectOne("selectUserInfo", vo);
	}
	
	public void updateBalance(UserVO vo) throws Exception {
		update("updateBalance", vo);
	}	

}
