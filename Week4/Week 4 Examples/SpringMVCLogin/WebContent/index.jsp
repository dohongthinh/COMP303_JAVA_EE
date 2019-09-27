<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login Form</title>

</head>
<body>
   <form action="${pageContext.request.contextPath}/login.html" method="post">  
    User Name:<input type="text" name="username"/>
    <br/><br/>  
    Password:<input type="password" name="password"/>
    <br/><br/>  
    <input type="submit" value="Sign In"/>  
    </form> 
</body>
</html>