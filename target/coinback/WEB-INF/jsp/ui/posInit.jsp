<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="/WEB-INF/jsp/common/tagHead.jspf"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
  <head>
    <title>coinback</title>
    <%@include file="/WEB-INF/jsp/common/head.jspf"%>
  </head>
  <body>
    <h1>POS</h1>

    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<!--     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> -->
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<!--     <script src="http://localhost:8080/sample/bootstrap-3.3.2/dist/js/bootstrap.min.js"></script> -->
 <div id="cont">
 <form id="posInput" name="posInput" method="post" >
  <fieldset>
    <legend></legend>
    <div class="form-group">
      <label class="col-lg-2 control-label" for="inputId">ID(개인바코드)</label>
      <div class="col-lg-10">
        <input class="form-control" id="inputId" name="barcodeNum" type="text" placeholder="Id">
      </div>
    </div>
    <div class="form-group">
      <label class="col-lg-2 control-label" for="inputName">NAME(적립처)</label>
      <div class="col-lg-10">
        <input class="form-control" id="inputName" name="orgName" type="text" placeholder="Name">
      </div>
    </div>
    <div class="form-group">
      <label class="col-lg-2 control-label" for="inputAcount">ACOUNT(금액)</label>
      <div class="col-lg-10">
        <input class="form-control" id="inputAcount" name="amount" type="text" placeholder="Acount">
      </div>
    </div>
<!--     <div class="form-group"> -->
<!--       <label class="col-lg-2 control-label">적립/사용</label> -->
<!--       <div class="col-lg-10"> -->
<!--         <div class="radio"> -->
<!--           <label> -->
<!--             <input name="sgn" id="optionsRadios1" type="radio" checked="" value="P"> -->
<!--             	적립 -->
<!--           </label> -->
<!--         </div> -->
<!--         <div class="radio"> -->
<!--           <label> -->
<!--             <input name="sgn" id="optionsRadios2" type="radio" value="M"> -->
<!--             	사용 -->
<!--           </label> -->
<!--         </div> -->
<!--       </div> -->
<!--     </div> -->
<!--     <div class="form-group"> -->
<!--       <label class="col-lg-2 control-label" for="select">적립/사용</label> -->
<!--       <div class="col-lg-10"> -->
<!--         <select class="form-control" id="select"> -->
<!--           <option>사용</option> -->
<!--           <option>적립</option> -->
<!--           <option>기부</option> -->
<!--           <option>기타</option> -->
<!--         </select> -->
<!--         <br> -->
<!--       </div> -->
<!--     </div> -->
    <div class="form-group">
      <div class="col-lg-10 col-lg-offset-2">
        <button class="btn btn-default" type="reset">Cancel</button>
        <button class="btn btn-primary" type="button" id="saveBtn">Submit</button>
      </div>
    </div>
  </fieldset>
</form>
</div>
  </body>
</html>
 <script type="text/javaScript" language="javascript">
 $(document).ready(function(){
	 $("#saveBtn").on("click", function() {
		frm = $('#posInput');
		frm.attr("action", "/coinback/transferPosInfo.cb");
		frm.submit();
//        	var data = $('#posInput').serialize();
//        	$.ajax({
// 			type:"POST",
// 			url:"/coinback/transferPosInfo.cb",
// 			data:data,
// 			dataType:'html',
// 			success:function(a){
// 				console.log(a);
// 				$('html').html(a);
// 			},
// 			callback:function(b){
// 				console.log("4");
// 				alert("123123");
// 			}
// 		});
	 });
 });
 </script>