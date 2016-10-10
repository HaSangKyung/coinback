package com.lgcns.coinback.user.dao;

import java.util.List;

import org.springframework.ui.ModelMap;

import com.lgcns.coinback.history.vo.HistoryVO;
import com.lgcns.coinback.user.vo.UserVO;

public interface UserDAO {
	
	public UserVO selectUserInfo(UserVO vo) throws Exception;
	
	public void updateBalance(UserVO vo) throws Exception;
}
