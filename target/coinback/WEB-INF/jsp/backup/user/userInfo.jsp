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
	<form:form commandName="userVO" id="userForm" action="retrieveUserInfo.cb" method="post">
	<input type="hidden" name="phoneNum" class="form-control">
	<div class="input-group">
	  <h3> 바코드 번호 </h3>
	  <input type="text" name="barcodeNum" class="form-control" disabled="true">
	</div>
	<br>
	<div class="input-group">
	  <h3> 잔액 </h3>
	  <input type="text" name="balance" class="form-control" disabled="true">
	</div>	
	</form:form>	
</div>
<script>
<%@ include file="/WEB-INF/jsp/common/userScript.jsp" %>

</script>
</body>

</html>