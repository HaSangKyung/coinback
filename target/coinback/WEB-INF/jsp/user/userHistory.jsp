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
                    <form:form commandName="historyVO" id="historyForm" action="retrieveUserPayHistory.cb" method="post">
						<input type="hidden" name="barcodeNum" class="form-control">
						<!-- <button id="search-button" type="button" class="btn">조회</button> -->
					
						<div class="panel-heading"><h2>My 거래내역</h2></div>
						<div class="table-responsive">
						<table class="table">
							<tr>
								<td><strong><c:out value="일시" /></strong></td>
								<td><strong><c:out value="업체" /></strong></td>
								<td><strong><c:out value="적립금액" /></strong></td>
							</tr>
							<c:forEach var="result" items="${payHistoryList}" varStatus="status">
								<tr>
									<td><c:out value="${result.payDttm}" /></td>
									<td><c:out value="${result.orgName}" /></td>
									<td>
									<c:if test="${result.useYn eq 'N' }">
										<span class="text-primary"><strong><c:out value="+${result.amount}" /></strong></span>
									</c:if>	
									<c:if test="${result.useYn eq 'Y'}">
										<span class="text-danger"><Strong><c:out value="-${result.amount}" /></Strong></span>
									</c:if>	
									</td>
								</tr>
							</c:forEach>
						</table>
						</div>
					</form:form>
                </div>
            </div>
    </section>
</div>
<script>
<%@ include file="/WEB-INF/jsp/common/userScript.jsp" %>

$('#search-button').on('click', function() {
	$("#historyForm").submit();
});
</script>
</body>

</html>