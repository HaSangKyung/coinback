<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
dfkadjflajkld
<c:if test="${not empty resultList }">dddddddddddddddddddd</c:if>
<c:forEach var="user" items="${resultList}">
	<div>${ user.phoneNumber }</div>
</c:forEach>
</body>
</html>
