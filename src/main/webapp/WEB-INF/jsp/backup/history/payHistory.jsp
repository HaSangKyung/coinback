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
		
		<form:form commandName="historyVO" id="adminForm" action="payHistoryOrg.cb" method="post">
			<span>기관명 : </span>
			<input type="text" name="orgName" class="form-control">
			<button id="search-button" type="button" class="btn">조회</button>
		
			<div class="panel-heading">기관별 거래내역</div>
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
	<%@ include file="/WEB-INF/jsp/common/adminScript.jsp"%>
</body>

</html>