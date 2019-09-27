<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login Form</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/registration" method="post">  
	<h1>Yoga Class Registration</h1>
    <input type="text" name="name" placeholder="Your Name" />
    <br/><br/>  
    <input type="email" name="email" placeholder="Email Id" />
    <br/><br/>  
    <input type="number" name="contactNumber" placeholder="Contact Number" />
    <br/><br/>  
    <input type="number" name="age" placeholder="Age" />
    <br/><br/>
    <input type="text" name="city" placeholder="City" />
    <br/><br/>
    <p>Gender</p>
    <input type="radio" name="gender" id="male" value="male">
	<label for="male">Male</label><br>
  	<input type="radio" name="gender" id="female" value="female">
  	<label for="female">Female</label><br>
  	<p>Batch that fits your timing!</p>
  	<input type="radio" name="batch" id="mor6to8" value="mor6to8">
	<label for="mor6to8">Morning: 6:30 to 8:30</label><br>
  	<input type="radio" name="batch" id="mor8to10" value="mor8to10">
  	<label for="mor8to10">Morning: 8:30 to 10:30</label><br>
  	<input type="radio" name="batch" id="eve4to6" value="eve4to6">
	<label for="eve4to6">Evening: 4:30 to 6:30</label><br>
  	<input type="radio" name="batch" id="eve6to8" value="eve6to8">
  	<label for="eve6to8">Evening: 6:30 to 8:30</label><br>
  	<p>Yoga you want to register for!</p>
  	<input type="checkbox" name="yogaType" value="anusara">Anusara<br>
  	<input type="checkbox" name="yogaType" value="ashtanga">Ashtanga<br>
  	<input type="checkbox" name="yogaType" value="bikram">Bikram<br>
  	<input type="checkbox" name="yogaType" value="power">Power<br>
  	<input type="checkbox" name="yogaType" value="jivamukti">Jivamukti<br>
  	<input type="checkbox" name="yogaType" value="kundlini">Kundlini<br>
    <input type="submit" value="Confirm Registration!"/>  
    </form> 
</body>
</html>