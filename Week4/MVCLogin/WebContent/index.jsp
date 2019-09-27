<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form</title>
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