<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success Login</title>
<style>
h3.getName{
	text-transform: uppercase;
}
div.display{
 position: absolute;
  left: 300px;
  width: 500px;
  height: 120px;
  }
 div.extraText{
 position: absolute;
  left: 30px;
  width: 500px;
  height: 100px;
  }
</style>
</head>
<body>
<h1 class="getName" align="center"><font color="blue">Hi ${name}</font></h1>
<div class="display">
	<div class="details" style="color:Tomato">
	<h3><i>Your registration details are as follows:</i></h3>
	<ul>
  		<li><b>Email address:</b> ${email}</li>
  		<li><b>Phone number:</b> ${contactNumber}</li>
  		<li><b>Gender:</b> ${gender}</li>
  		<li><b>Age:</b> ${age}</li>
  		<li><b>Batch:</b> ${batch}</li>
  		<li><b>Yoga:</b> ${yogaType}</li>
  		<li style="text-transform: capitalize"><b>City:</b> ${city}</li>
	</ul>
	</div>
	<div class="extraText">
		<h3 align="center"><font color="blue">Your online registration is completed.</font></h3>
		<h3 align="center"><font color="blue">Class will be starting soon</font></h3>
	</div>
</div>

</body>
</html>