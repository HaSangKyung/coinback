package com.lgcns.coinback.user.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lgcns.coinback.history.vo.HistoryVO;
import com.lgcns.coinback.user.dao.UserDAO;
import com.lgcns.coinback.user.service.UserService;
import com.lgcns.coinback.user.vo.UserVO;


@Service("userService")
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDAO userDAO;
	
	@Override
	public UserVO selectUserInfo(UserVO vo) throws Exception {
		return userDAO.selectUserInfo(vo);
	}

	@Override
	public void updateBalance(UserVO vo) throws Exception {
		userDAO.updateBalance(vo);
	}
	
}
