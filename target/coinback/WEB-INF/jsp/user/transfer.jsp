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
	<Br><Br>
	<section id="bar">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Transfer</h2>
                    <hr>
	                    <form:form commandName="userVO" id="transferForm" method="post">
	                    	<input type="hidden" name="barcodeNum" class="form-control">
							<input type="hidden" name="phoneNum" class="form-control">
							<input type="hidden" name="changeBalance" class="form-control">
	                        <div class="row control-group">
	                            <div class="form-group col-xs-6 col-xs-offset-3 col-lg-4 col-lg-offset-4 
	                            col-md-4 col-md-offset-4 floating-label-form-group controls">
	                                <label>잔액</label>
	                                <input type="text" name="balance" class="form-control" disabled="true">
	                            </div>
	                        </div>
	                        <div class="row control-group">
	                            <div class="form-group col-xs-6 col-xs-offset-3 col-lg-4 col-lg-offset-4 
	                            col-md-4 col-md-offset-4 floating-label-form-group controls">
	                                <label>이체금액</label>
	                                <input type="text" name="amount" class="form-control">
	                            </div>
	                              <br>
	                        </div>
	                        <button id="transfer-button" type="button" class="btn btn-info">이체</button>		
						</form:form>	
                </div>
            </div>
    </section>
</div>
<script>
<%@ include file="/WEB-INF/jsp/common/userScript.jsp" %>

$('#transfer-button').on('click', function() {
	var balance = $('input[name=balance]').val();
	var trAmount = $('input[name=amount]').val();	
	if(Number(trAmount) > Number(balance)){
		alert("이체하려는 금액이 잔액보다 큽니다.")
	}else{
		$("#transferForm").attr("action", "transfer.cb");
		$('input[name=changeBalance]').val(Number(balance)-Number(trAmount));
		if(confirm("이체하시겠습니까?")){
			$("#transferForm").submit();
		}else{
			
		}
	}
});

</script>
</body>

</html>