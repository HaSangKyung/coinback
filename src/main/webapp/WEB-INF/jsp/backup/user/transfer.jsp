<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/tagHead.jspf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/WEB-INF/jsp/common/head.jspf"%>
<title>[CoinBack]</title>
</head>
<body>
<div class="container">
	<br>
	<%@ include file="/WEB-INF/jsp/common/userMenu.jsp" %>
	
	<form:form commandName="userVO" id="transferForm" method="post">
		<input type="hidden" name="phoneNum" class="form-control">
		<input type="hidden" name="changeBalance" class="form-control">
		<div class="input-group">
		  <h3> 잔액 </h3>
	  	  <input type="text" name="balance" class="form-control">
		</div>
		  <br>
		<div class="input-group">  
		  <h3> 이체금액 </h3>
		  <input type="text" name="transferAmount" class="form-control">
		</div>
		  <br>
		  <button id="transfer-button" type="button" class="btn">이체</button>
	</form:form>
</div>
<script>
<%@ include file="/WEB-INF/jsp/common/userScript.jsp" %>

$('#transfer-button').on('click', function() {
	var balance = $('input[name=balance]').val();
	var trAmount = $('input[name=transferAmount]').val();	
	if(Number(trAmount) > Number(balance)){
		alert("이체하려는 금액이 잔액보다 큽니다.")
	}else{
		$("#transferForm").attr("action", "transfer.cb");
		$('input[name=changeBalance]').val(Number(balance)-Number(trAmount));
		$("#transferForm").submit();
	}
});

</script>
</body>

</html>