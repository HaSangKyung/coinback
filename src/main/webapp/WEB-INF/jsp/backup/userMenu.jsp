<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<ul class="nav nav-pills">
	  <li role="presentation" id="userInfoMenu"><a href="javascript:fn_movePage('userInfo');">사용자 정보</a></li>
	  <li role="presentation" id="transferMenu"><a href="javascript:fn_movePage('transfer');">이체</a></li>
	  <li role="presentation" id="historyMenu"><a href="javascript:fn_movePage('history');">거래내역 조회</a></li>
	</ul>

	<form:form commandName="userVO" id="userForm" method="post">
		<input type="text" name="phoneNum" class="form-control">
		<input type="text" name="barcodeNum" class="form-control">
		<input type="text" name="balance" class="form-control">
	</form:form>