<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="javascript:fn_movePage('admin');">COINBACK</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="page-scroll">
                        <a href="javascript:fn_movePage('userInfo');">사용자 정보</a>
                    </li>
                    <li class="page-scroll">
                        <a href="javascript:fn_movePage('transfer');">이체</a>
                    </li>
                    <li class="page-scroll">
                        <a href="javascript:fn_movePage('history');">거래내역 조회</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

	<form:form commandName="userVO" id="userForm" method="post">
		<input type="hidden" name="phoneNum" class="form-control">
		<input type="hidden" name="barcodeNum" class="form-control">
		<input type="hidden" name="balance" class="form-control">
	</form:form>