package com.lgcns.coinback.history;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lgcns.coinback.history.service.HistoryService;
import com.lgcns.coinback.history.vo.HistoryVO;
import com.lgcns.coinback.user.service.UserService;
import com.lgcns.coinback.user.vo.UserVO;

@Controller
public class HistoryController {

	@Autowired
	private HistoryService historyService;
	@Autowired
	private UserService userService;
	
	@RequestMapping("/saving.cb")
	public String savingMoney(HistoryVO payVO, Model model) throws Exception {
		System.out.println("saving.cb barcodeNum :"+payVO.getBarcodeNum());
		
		//잔액 조회/업데이트
		UserVO userVO = historyService.selectUserInfoByBarcode(payVO.getBarcodeNum());
		userVO.setChangeBalance(payVO.getAmount()+userVO.getBalance());
		userService.updateBalance(userVO);
		//거래내역 생성
		historyService.insertPayHistory(payVO);
		model.addAttribute("sucsYn", "Y");
		return "history/pay";
	}	
	
	@RequestMapping("/goPay.cb")
	public String goTransferPage() throws Exception {
		return "history/pay";
	}		
	
	@RequestMapping("/goHistory.cb")
	public String goHistoryPage() throws Exception {
		return "history/payHistory";
	}		
	////////////////////////////////////////////////////////////////////
	@RequestMapping("/payHistoryOrg.cb")
	public String retrievePayHistoryByOrgName(HistoryVO payVO, Model model) throws Exception {
		List<?> resultList = historyService.selectPayHistoryByOrgName(payVO);
		HistoryVO getSumVo = historyService.sumPayHistory(payVO);
		model.addAttribute("sumPayHistory", getSumVo);
		model.addAttribute("payHistoryList", resultList);
		return "history/payHistory";
	}		
	
	@RequestMapping("/retrieveUserPayHistory.cb")
	public String retrieveUserPayHistory(HistoryVO payVO, Model model) throws Exception {
		try{
			System.out.println("rUPH:"+payVO);
			UserVO result = historyService.selectUserInfoByBarcode(payVO.getBarcodeNum());
			model.addAttribute("result", result);
		}catch(Exception e){
			e.printStackTrace();
		}
		List<?> resultList = historyService.selectPayHistoryByBarcode(payVO);
		model.addAttribute("payHistoryList", resultList);
		return "user/userHistory";
	}

}
