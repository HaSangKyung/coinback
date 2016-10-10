package com.lgcns.coinback.user.service;

import com.lgcns.coinback.history.vo.HistoryVO;
import com.lgcns.coinback.user.vo.UserVO;


public interface UserService {
	
	UserVO selectUserInfo(UserVO vo) throws Exception;
	
	void updateBalance(UserVO vo) throws Exception;
	
}
