<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
$(function(){
	if('${sucsYn}' == "Y"){
		alert("결제 및 적립이 정상적으로 처리 되었습니다.")
	}
});

function fn_movePage(param){
	var id = "adminForm";
	switch(param){
	case 'pay' :
		$("#adminForm").attr("action", "goPay.cb");
		break;
	case 'history' : 
		$("#adminForm").attr("action", "goHistory.cb");
		break;
	case 'user' : 
		$("#linkForm").attr("action", "retrieveUserInfo.cb");
		id = "linkForm";
		break;
	}
	$("#"+id).submit();
}

$('#pay-button').on('click', function() {
	$('input[name=amount]').val($('input[name=totAmount]').val() - $('input[name=payAmount]').val());
	amount = $('input[name=amount]').val();
	if (amount < 0) {
		alert("결제 금액을 확인하십시오.")
	} else if (amount == 0) {
	} else {
		$("#adminForm").submit();
	}	
});

$('#search-button').on('click', function() {
	$("#adminForm").submit();
});
</script>