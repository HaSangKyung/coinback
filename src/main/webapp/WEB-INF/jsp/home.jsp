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
	<h2>CoinBack</h2>
	<form:form commandName="userVO" id="loginForm" action="retrieveUserInfo.cb" method="post">
		<h3> 핸드폰 번호 </h3>
		<input type="text" name="phoneNum" class="form-control">
		<br>
		<button type="submit">로그인</button>
	</form:form>
</div>

<script>

</script>
</body>

</html>