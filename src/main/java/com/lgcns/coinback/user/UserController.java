package com.lgcns.coinback.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lgcns.coinback.history.service.HistoryService;
import com.lgcns.coinback.history.vo.HistoryVO;
import com.lgcns.coinback.user.service.UserService;
import com.lgcns.coinback.user.vo.UserVO;


@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	@Autowired
	private HistoryService historyService;

	@RequestMapping("/retrieveUserInfo.cb")
	public String retrieveUserInfo(@ModelAttribute("userVO") UserVO userVO, Model model) throws Exception {
		userVO.setPhoneNum("01074453683");
		System.out.println("retrieveUserInfo.cb PhoneNum Test " + userVO.getPhoneNum());
		UserVO result = userService.selectUserInfo(userVO);
		model.addAttribute("result", result);
		return "user/userInfo";
	}
	
	@RequestMapping("/goTransferPage.cb")
	public String goTransferPage(@ModelAttribute("userVO") UserVO userVO, Model model) throws Exception {
		System.out.println("goTransferPage PhoneNum Test " + userVO.getPhoneNum());
		UserVO result = userService.selectUserInfo(userVO);
		model.addAttribute("result", result);
		return "user/transfer";
	}	
	
	@RequestMapping("/goUserHistoryPage.cb")
	public String goUserHistoryPage(@ModelAttribute("userVO") UserVO userVO, Model model) throws Exception {
		System.out.println("goUserHistoryPage PhoneNum Test " + userVO.getPhoneNum());
		UserVO result = userService.selectUserInfo(userVO);
		
		model.addAttribute("result", result);
		return "user/userHistory";
	}	
	
	@RequestMapping("/transfer.cb")
	public String transferMoney(@ModelAttribute("userVO") UserVO userVO, Model model) throws Exception {
		// 거래내역 생성
		HistoryVO hisVO = new HistoryVO();
		hisVO.setAmount(userVO.getAmount());
		hisVO.setOrgName("ShinhanBank");
		hisVO.setBarcodeNum(userVO.getBarcodeNum());
		hisVO.setUseYn("Y");
		historyService.insertPayHistory(hisVO);
		
		// 이체
		userService.updateBalance(userVO);
		UserVO result = userService.selectUserInfo(userVO);
		model.addAttribute("result", result);		
		
		
		return "user/transfer";
	}	
	
	@RequestMapping("/goMain.cb")
	public String goMain() throws Exception {
		return "home";
	}	
	
	@RequestMapping("/test11.cb")
	public String test11() throws Exception {
		return "ui/posInit";
	}	
}
