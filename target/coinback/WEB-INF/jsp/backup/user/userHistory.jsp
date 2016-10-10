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
	
	<form:form commandName="historyVO" id="historyForm" action="retrieveUserPayHistory.cb" method="post">
			<input type="text" name="barcodeNum" class="form-control">
			<button id="search-button" type="button" class="btn">조회</button>
		
			<div class="panel-heading">사용자 거래내역</div>
			<table class="table">
				<tr>
					<th>거래ID</th>
					<th>업체명</th>
					<th>바코드번호</th>
					<th>적립금액</th>
					<th>입/출금 여부</th>
					<th>결제일시</th>
				</tr>
				<c:forEach var="result" items="${payHistoryList}" varStatus="status">
					<tr>
						<td>
							<c:choose>
								<c:when test="${result.payHistoryId == -1}">
									합계
								</c:when>
								<c:otherwise>
									<c:out value="${result.payHistoryId}" />
								</c:otherwise>
					       </c:choose>
       					</td>
						<td><c:out value="${result.orgName}" /></td>
						<td><c:out value="${result.barcodeNum}" /></td>
						<td><c:out value="${result.amount}" /></td>
						<td><c:out value="${result.useYn}" /></td>
						<td><c:out value="${result.payDttm}" /></td>
					</tr>
				</c:forEach>

			</table>
		</form:form>
</div>
<script>
<%@ include file="/WEB-INF/jsp/common/userScript.jsp" %>
$('#search-button').on('click', function() {
	$("#historyForm").submit();
});
</script>
</body>

</html>