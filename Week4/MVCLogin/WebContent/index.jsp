<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form</title>
</head>
<body>
  <form action="${pageContext.request.contextPath}/registration.html" method="post">  
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
    <input type="radio" name="gender" id="male" value="Male">
	<label for="male">Male</label><br>
  	<input type="radio" name="gender" id="female" value="Female">
  	<label for="female">Female</label><br>
  	<p>Batch that fits your timing!</p>
  	<input type="radio" name="batch" id="mor6to8" value="Morning: 6:30 to 8:30">
	<label for="mor6to8">Morning: 6:30 to 8:30</label><br>
  	<input type="radio" name="batch" id="mor8to10" value="Morning: 8:30 to 10:30">
  	<label for="mor8to10">Morning: 8:30 to 10:30</label><br>
  	<input type="radio" name="batch" id="eve4to6" value="Evening: 4:30 to 6:30">
	<label for="eve4to6">Evening: 4:30 to 6:30</label><br>
  	<input type="radio" name="batch" id="eve6to8" value="Evening: 6:30 to 8:30">
  	<label for="eve6to8">Evening: 6:30 to 8:30</label><br>
  	<p>Yoga you want to register for!</p>
  	<input type="checkbox" name="yogaType" value="Anusara">Anusara<br>
  	<input type="checkbox" name="yogaType" value="Ashtanga">Ashtanga<br>
  	<input type="checkbox" name="yogaType" value="Bikram">Bikram<br>
  	<input type="checkbox" name="yogaType" value="Power">Power<br>
  	<input type="checkbox" name="yogaType" value="Jivamukti">Jivamukti<br>
  	<input type="checkbox" name="yogaType" value="Kundlini">Kundlini<br>
    <input type="submit" value="Confirm Registration!"/>  
    </form> 
</body>
</html>