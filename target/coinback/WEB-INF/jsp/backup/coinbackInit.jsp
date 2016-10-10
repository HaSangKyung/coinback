<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%-- <%@include file="/WEB-INF/jsp/common/tagHead.jspf"%> --%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<%@include file="/WEB-INF/jsp/common/head.jspf"%>
    <title>COINBACK</title>
</head>
<body id="page-top" class="index">
    <!-- Navigation -->
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
                <a class="navbar-brand" href="#page-top">COINBACK</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="page-scroll">
                        <a href="#bar">Barcode</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#about">About</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#contact">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header -->
    <header>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
<!--                     <img class="" src="" alt=""> -->
                    <div class="intro-text">
                        <span class="name">Coin Back</span>
                        <hr class="star-light">
                        <span class="skills"></span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Portfolio Grid Section -->
    <section id="bar">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Bar</h2>
                    <hr>
                    <img src="images/bar.jpg">
                </div>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section class="success" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>About</h2>
                    <hr>
                </div>
            </div>
            <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <form name="coinInfo" id="coinInfo" method="post" >
                    <div class="row control-group">
                        <div class="form-group col-xs-4 floating-label-form-group controls">
                            <label>start date</label>
                            <input type="date" class="form-control" placeholder="strtDt" id="strtDt" name="strtDt" required data-validation-required-message="starDt" >
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="form-group col-xs-4 floating-label-form-group controls">
                            <label>end date</label>
                            <input type="date" class="form-control" placeholder="endDt" id="endDt" name="endDt" required data-validation-required-message="endDt" >
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="form-group col-xs-4 floating-label-form-group controls">
                            <label>bar id</label>
                            <input type="text" class="form-control" placeholder="barcodeNum" id="barcodeNum" name="barcodeNum" required data-validation-required-message="barId" value="${barId}" >
                            <p class="help-block text-danger"></p>
                        </div>
                    </div>
                    <br>
<!--                     <div id="success"></div> -->
                    <div class="form-group">
                        <div class="col-lg-10 col-lg-offset-2">
                            <button type="button" class="btn btn-primary" id="sltBtn">Send</button>
                        </div>
                    </div>
                    <div id="table">
        		<table class="table table-hover" summary="테이블">
<!--         			<caption style="visibility:hidden">테이블</caption> -->
<!--         			<colgroup> -->
<!--         				<col width="40"/> -->
<!--         				<col width="60"/> -->
<!--         				<col width="60"/> -->
<!--         				<col width="80"/> -->
<!--         				<col width="?"/> -->
<!--         			</colgroup> -->
				<thead>
        			<tr>
<!--         				<th align="center">No</th> -->
        				<th align="center">거래ID</th>
        				<th align="center">적립처</th>
        				<th align="center">금액</th>
        				<th align="center">날짜</th>
        			</tr>
				</thead>
				<tbody id="tableBody">
        			<c:forEach var="result" items="${resultList}" varStatus="status">
            			<tr>
<%--             				<td align="center" class="listtd"><c:out value="${paginationInfo.totalRecordCount+1 - ((searchVO.pageIndex-1) * searchVO.pageSize + status.count)}"/></td> --%>
<%--             				<td align="center" class="listtd"><a href="javascript:fn_egov_select('<c:out value="${result.id}"/>')"><c:out value="${result.id}"/></a></td> --%>
            				<td align="left" class="listtd">${result.payHistoryId}&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.orgName}"/>&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.amount}"/>&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.payDttm}"/>&nbsp;</td>
            			</tr>
        			</c:forEach>
        		</tbody>
        		</table>
        	</div>
        	<!-- /List -->
<!--         	<div id="paging"> -->
<%--         		<ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="fn_egov_link_page" /> --%>
<!--         		<form:hidden path="pageIndex" /> -->
<!--         	</div> -->
                </form>
        </div>
    </section>

    <!-- Contact Section -->
<!--     <section id="contact"> -->
<!--         <div class="container"> -->
<!--             <div class="row"> -->
<!--                 <div class="col-lg-12 text-center"> -->
<!--                     <h2>Contact Us</h2> -->
<!--                     <hr> -->
<!--                 </div> -->
<!--             </div> -->
<!--             <div class="row"> -->
<!--                 <div class="col-lg-8 col-lg-offset-2"> -->
<!--                     To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
<!--                     The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
<!--                     <form name="sentMessage" id="contactForm" novalidate> -->
<!--                         <div class="row control-group"> -->
<!--                             <div class="form-group col-xs-12 floating-label-form-group controls"> -->
<!--                                 <label>Name</label> -->
<!--                                 <input type="text" class="form-control" placeholder="Name" id="name" required data-validation-required-message="Please enter your name."> -->
<!--                                 <p class="help-block text-danger"></p> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="row control-group"> -->
<!--                             <div class="form-group col-xs-12 floating-label-form-group controls"> -->
<!--                                 <label>Email Address</label> -->
<!--                                 <input type="email" class="form-control" placeholder="Email Address" id="email" required data-validation-required-message="Please enter your email address."> -->
<!--                                 <p class="help-block text-danger"></p> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="row control-group"> -->
<!--                             <div class="form-group col-xs-12 floating-label-form-group controls"> -->
<!--                                 <label>Phone Number</label> -->
<!--                                 <input type="tel" class="form-control" placeholder="Phone Number" id="phone" required data-validation-required-message="Please enter your phone number."> -->
<!--                                 <p class="help-block text-danger"></p> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="row control-group"> -->
<!--                             <div class="form-group col-xs-12 floating-label-form-group controls"> -->
<!--                                 <label>Message</label> -->
<!--                                 <textarea rows="5" class="form-control" placeholder="Message" id="message" required data-validation-required-message="Please enter a message."></textarea> -->
<!--                                 <p class="help-block text-danger"></p> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <br> -->
<!--                         <div id="success"></div> -->
<!--                         <div class="row"> -->
<!--                             <div class="form-group col-xs-12"> -->
<!--                                 <button type="submit" class="btn btn-success btn-lg">Send</button> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </form> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </div> -->
<!--     </section> -->
    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-top page-scroll visible-xs visble-sm">
        <a class="btn btn-primary" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>
<!--     <div class="lr"> -->
<!--         <div class="rl"> -->
<!--         </div> -->
<!--     </div> -->
<script type="text/javascript">
$(document).ready(function(){
//     $(".form_datetime").datetimepicker({
//         format: "dd MM yyyy"
//     });
    
    $("#sltBtn").on("click", function(){
    	alert("start");
//     	var list = [];
//     	var data = $('#coinInfo').serialize();
//        	$.ajax({
// 			type:"POST",
// 			url:"/coinback/selectHistoryInfoList.cb",
// 			data:data,
// // 			dataType:'json',
// 			success:function(a){
// // 				alert("ss");
// // 				console.log(a);
// // 				console.log(a.resultList);
// // 				list = a.resultList;
// 			$.each(function(){
// 				$("#tableBody")
// 			});
// 			}
// 		});
//        	return list;
    	frm = $('#coinInfo');
		frm.attr("action", "/coinback/selectHistoryInfoList.cb");
		frm.submit();

    });
});
</script>

</body>

</html>
