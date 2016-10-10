<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>[CoinBack]</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<%
	String barcodeNum = request.getParameter("barcodeNum");
%>
</head>
<body>
	<div class="container">
		<h2>결제 페이지</h2>
		<ul id="myTab" class="nav nav-tabs" role="tablist">
			<li role="presentation" class="active"><a data-target="#pay"
				id="pay-tab" role="tab" data-toggle="tab" aria-expanded="false">POS
					결제</a></li>
			<li role="presentation" class=""><a data-target="#admin"
				role="tab" id="admin-tab" data-toggle="tab" aria-expanded="false">ADMIN</a></li>
			<li role="presentation" class=""><a data-target="#linkToUser"
				role="tab" id="linkToUser-tab" data-toggle="tab"
				aria-expanded="false"><u>사용자앱</u></a></li>
		</ul>

		<div id="myTabContent" class="tab-content">
			<div role="tabpanel" class="tab-pane fade active in" id="pay"
				aria-labelledby="pay-tab">
				<div class="input-group">
					<h3>바코드 번호</h3>
					<input type="text" name="barcode" class="form-control">
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
				<br>
				<button id="pay-button" type="button" class="btn">결제</button>
			</div>

			<div role="tabpanel" class="tab-pane fade" id="admin"
				aria-labelledby="admin-tab">
				${payHistoryList}
				<br>
				<div class="btn-group">
					<button class="btn btn-default btn-sm dropdown-toggle"
						type="button" data-toggle="dropdown" aria-expanded="false">
						조회기관 <span class="caret"></span>
					</button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="javascript:fn_retrievePayHistory('ALL');">전체</a></li>
						<li><a href="javascript:fn_retrievePayHistory();">GS25</a></li>

					</ul>
				</div>
				<br>
				<div class="panel panel-default">
					<div class="panel-heading">기관별 거래내역</div>
					<form name="myform" action="payHistoryOrg.do">
					<table class="table">
						<tr>
							<th>거래ID</th>
							<th>업체명</th>
							<th>바코드번호</th>
							<th>적립금액</th>
							<th>결제일시</th>
						</tr>
        				<!-- 안됨..;; -->
        				<tr>
        				
						
						<c:forEach var="result" items="${payHistoryList}" varStatus="status">
            				<td><c:out value="${result.orgName}"/></td>
        				</c:forEach>
        				</tr>
        				
					</table>
					</form>
					
				</div>

				<div role="tabpanel" class="tab-pane fade" id="linkToUser"
					aria-labelledby="linkToUser-tab"></div>
			</div>
			<script src="webjars/jQuery/2.2.3/dist/jquery.min.js"></script>
			<script src="webjars/bootstrap/3.3.6/dist/js/bootstrap.min.js"></script>
			<script>
$(function(){
	console.log('load');
	$('input[name=barcode]').val('<%=barcodeNum%>');
	getOrgList();
});

$('#pay-button').on('click', function() {
	var amount = $('input[name=totAmount]').val() - $('input[name=payAmount]').val();
	var barcodeNum = $('input[name=barcode]').val();

	if (amount < 0) {
		alert("결제 금액을 확인하십시오.")
	} else if (amount == 0) {
	} else {
		saving("GS25", barcodeNum, amount);
	}
})

$('#myTab a:last').click(function() {
	window.location.href = 'retrieveUserInfo.do';
})
 
function fn_retrievePayHistory(){
	document.myform.submit();
	/* $.post("payHistoryOrg.do", {
		
	}, function(jsonResult) {
		alert(jsonResult);
	}, 'json').done(function(jsonResult) {
		
		console.log(jsonResult);
	}).fail(function(jsonResult) {
		console.log(jsonResult);
	}); */
}
 
function getOrgList() {
	$.post("orgList.do", {
		
	}, function(jsonResult) {
		alert(jsonResult);
	}, 'json').done(function(jsonResult) {
		
		console.log(jsonResult);
	}).fail(function(jsonResult) {
		console.log(jsonResult);
	});
} 

function saving(orgName, barcodeNum, amount) {
	$.post("saving.do", {
		"orgName" : orgName,
		"barcodeNum" : barcodeNum,
		"amount" : amount
	}, function(jsonResult) {
		alert(jsonResult);
	}, 'json').done(function(jsonResult) {
		console.log(jsonResult);
	}).fail(function(jsonResult) {
		console.log(jsonResult);
	});
}
window.on
</script>
</body>

</html>