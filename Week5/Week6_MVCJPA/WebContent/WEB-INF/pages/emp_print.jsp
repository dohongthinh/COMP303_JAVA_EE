<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Print Employee Info</title>
</head>
<body>

<h1>Employees List</h1>  
<table border="2" width="70%" cellpadding="2">  
<tr><th>Id</th><th>Name</th><th>Job</th><th>Salary</th></tr>  
   <c:forEach var="emp" items="${employeeList}">   
   <tr>  
   <td>${emp.empId}</td>  
   <td>${emp.empName}</td>  
   <td>${emp.jobTitle}</td>  
   <td> <fmt:formatNumber value="${emp.salary}" type="currency"/></td>
   </tr>  
   </c:forEach>  
   </table>  
   <br/>
   	<a href="edit.jsp"> Go Edit</a><br><br>
	<a href="index.jsp"> Home </a>
</body>
</html>