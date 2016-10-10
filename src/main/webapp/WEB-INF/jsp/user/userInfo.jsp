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
	<Br><br>
	<section id="bar">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Barcode</h2>
                    <hr>
                    <img src="images/bar.jpg" class="img-responsive center-block">
                    
                    <form:form commandName="userVO" id="userForm" action="retrieveUserInfo.cb" method="post">
						<input type="hidden" name="phoneNum" class="form-control">
                      <!--   <div class="row control-group">
                            <div class="form-group col-xs-6 col-xs-offset-3 col-lg-4 col-lg-offset-4 
	                            col-md-4 col-md-offset-4 floating-label-form-group controls">
                                <label> 바코드 번호</label>
                                <input type="text" name="barcodeNum" class="form-control" disabled="true">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div> -->
                        <div class="row control-group">
                            <div class="form-group col-xs-6 col-xs-offset-3 col-lg-4 col-lg-offset-4 
	                            col-md-4 col-md-offset-4 floating-label-form-group controls">
                                <label> 잔액</label>
                                <input type="text" name="balance" class="form-control" disabled="true">
                            </div>
                        </div>
					</form:form>	
                </div>
            </div>
    </section>
	
</div>
<script>
<%@ include file="/WEB-INF/jsp/common/userScript.jsp" %>

</script>
</body>

</html>