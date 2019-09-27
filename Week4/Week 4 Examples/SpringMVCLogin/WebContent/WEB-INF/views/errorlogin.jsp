<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login Failure</title>
</head>
<body>
    <h2>This is an error page</h2>
	<h3>${message}</h3><br/></br>
	<h4>Type Your User Credentials Again</h4>
    <jsp:include page="/index.jsp"></jsp:include> 
</body>
</html>