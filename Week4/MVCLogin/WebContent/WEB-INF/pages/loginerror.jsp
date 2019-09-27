<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error page</title>
</head>
<body>
 <h2 style="color:red">This is an error page</h2>
	<h3>${message}</h3><br/></br>
	<h4>Type Your User Credentials Again</h4>
    <jsp:include page="/index.jsp"></jsp:include> 
</body>
</html>