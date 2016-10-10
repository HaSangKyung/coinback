<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
$(function(){
	
	$('input[name=phoneNum]').val("01074453683");
	$('input[name=barcodeNum]').val('${result.barcodeNum}');
	$('input[name=balance]').val('${result.balance}');
});

function fn_movePage(param){

	switch(param){
	case 'userInfo' :
		$("#userForm").attr("action", "retrieveUserInfo.cb");
		break;
	case 'transfer' :
		$("#userForm").attr("action", "goTransferPage.cb");
		break;
	case 'history' : 
		$("#userForm").attr("action", "retrieveUserPayHistory.cb");
		break;
	case 'admin' : 
		$("#userForm").attr("action", "goPay.cb");
		break;	
	}
	$("#userForm").submit();
}

