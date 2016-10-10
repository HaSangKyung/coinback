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
		<%@ include file="/WEB-INF/jsp/common/adminMenu.jsp"%>
		<form:form commandName="historyVO" id="adminForm" action="saving.cb" method="post">
			<div class="input-group">
				<h3>바코드 번호</h3>
				<input type="text" name="barcodeNum" class="form-control">
			</div>
			<br>
			<div class="input-group">
				<h3>받은 금액</h3>
				<input type="text" name="totAmount" class="form-control">
			</div>
			<br>
			<div class="input-group">
				<h3>결제 금액</h3>
				<input type="text" name="payAmount" class="form-control">
			</div>
				<input type="hidden" name="amount" class="form-control">
				<input type="hidden" name="orgName" class="form-control" value="GS25">
				<input type="hidden" name="useYn" class="form-control" value="N">
			<br>
			<button id="pay-button" type="button" class="btn">결제</button>
		</form:form>
	</div>
	<%@ include file="/WEB-INF/jsp/common/adminScript.jsp"%>
</body>

</html>