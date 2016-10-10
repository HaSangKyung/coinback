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
		<Br><Br>
		<form id="linkForm" action="retrieveUserInfo.cb" method="post">
		</form>
		<section id="bar">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>POS</h2>
                    <hr>
	                    <form:form commandName="historyVO" id="adminForm" action="saving.cb" method="post">
	                        <div class="row control-group">
	                            <div class="form-group col-xs-6 col-xs-offset-3 col-lg-4 col-lg-offset-4 
	                            col-md-4 col-md-offset-4 floating-label-form-group controls">
	                                <label>바코드 번호</label>
	                                <input type="text" name="barcodeNum" class="form-control">
	                            </div>
	                        </div>
	                        <div class="row control-group">
	                            <div class="form-group col-xs-6 col-xs-offset-3 col-lg-4 col-lg-offset-4 
	                            col-md-4 col-md-offset-4 floating-label-form-group controls">
	                                <label>받은 금액</label>
	                                <input type="text" name="totAmount" class="form-control">
	                            </div>
	                              <br>
	                        </div>
	                        <div class="row control-group">
	                            <div class="form-group col-xs-6 col-xs-offset-3 col-lg-4 col-lg-offset-4 
	                            col-md-4 col-md-offset-4 floating-label-form-group controls">
	                                <label>결제 금액</label>
	                                <input type="text" name="payAmount" class="form-control">
	                            </div>
	                              <br>
	                        </div>
							<input type="hidden" name="amount" class="form-control">
							<input type="hidden" name="orgName" class="form-control" value="GS25">
							<input type="hidden" name="useYn" class="form-control" value="N">
							<br>
							<button id="pay-button" type="button" class="btn btn-info">결제</button>
						</form:form>	
                </div>
            </div>
	    </section>
	</div>
	<%@ include file="/WEB-INF/jsp/common/adminScript.jsp"%>
</body>

</html>