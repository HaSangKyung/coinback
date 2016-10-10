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
	                <br>
					<form:form commandName="historyVO" id="adminForm" action="payHistoryOrg.cb" method="post">
						<div align="center">
						 	<label for="orgName" class="col-sm-3 col-xs-3 col-lg-3 col-md-3 control-label" style="top: 5px">업체명 : </label>
						    <div class="col-sm-4 col-xs-4 col-lg-3 col-md-4">
							    <input type="text" id="orgName" name="orgName" class="form-control">
						    </div>
						 	<label for="orgName" class="col-sm-3 col-xs-3 col-lg-2 col-md-3 control-label" style="top: 5px">바코드 : </label>
						    <div class="col-sm-4 col-xs-4 col-lg-3 col-md-4">
							    <input type="text" id="barcodeNum" name="barcodeNum" class="form-control">
						    </div>
						 	<label for="orgName" class="col-sm-3 col-xs-3 col-lg-3 col-md-3 control-label" style="top: 5px">시작일자 : </label>
						    <div class="col-sm-4 col-xs-4 col-lg-3 col-md-4">
							    <input type="date" id="strtDt" name="strtDt" class="form-control">
						    </div>
						 	<label for="orgName" class="col-sm-3 col-xs-3 col-lg-2 col-md-3 control-label" style="top: 5px">종료일자 : </label>
						    <div class="col-sm-4 col-xs-4 col-lg-3 col-md-4">
							    <input type="date" id="endDt" name="endDt" class="form-control">
						    </div>
						    <br>
							<button id="search-button" type="button" class="btn btn-warning">조회</button>
                        </div>
						<div id="hiddenArea">
						<div class="panel-heading"><h2>총 거래내역</h2></div>
						<table class="table">
							<colgroup>
								<col width="10%">
								<col width="10%">
								<col width="15%">
								<col width="15%">
								<col width="15%">
							</colgroup>
							<tr>
								<td><strong>순서</strong></td>
								<td><strong>업체</strong></td>
								<td><strong>바코드</strong></td>
								<td><strong>적립금액</strong></td>
								<td><strong>결제일시</strong></td>
							</tr>
							<c:forEach var="result" items="${payHistoryList}" varStatus="status">
								<tr>
									<td>
										<c:out value="${status.index+1}" />
										<%-- <c:choose>
											<c:when test="${result.payHistoryId == -1}">
												합계
											</c:when>
											<c:otherwise>
												<c:out value="${status.index+1}" />
											</c:otherwise>
								       </c:choose> --%>
			       					</td>
									<td><c:out value="${result.orgName}" /></td>
									<td><c:out value="${result.barcodeNum}" /></td>
									<td>
										<c:if test="${result.useYn eq 'N' }">
											<span class="text-primary"><strong><c:out value="+${result.amount}" /></strong></span>
										</c:if>	
										<c:if test="${result.useYn eq 'Y'}">
											<span class="text-danger"><Strong><c:out value="-${result.amount}" /></Strong></span>
										</c:if>	
									</td>
									<td><c:out value="${result.payDttm}" /></td>
								</tr>
							</c:forEach>
							<tr>
								<td><strong>합계</strong></td>
								<td></td>
								<td></td>
								<td><span class="text-info"><strong>
								<c:if test="${sumPayHistory.amount > 0 }">
									<c:out value="+${sumPayHistory.amount}" />
								</c:if>
								<c:if test="${sumPayHistory.amount < 0 }">
									<c:out value="${sumPayHistory.amount}" />
								</c:if>	
								</strong></span></td>
								<td></td>
							</tr>
						</table>
					</div>	
					</form:form>	                    
	                </div>
	            </div>
	    </section>
		
	</div>
	<%@ include file="/WEB-INF/jsp/common/adminScript.jsp"%>
</body>

</html>