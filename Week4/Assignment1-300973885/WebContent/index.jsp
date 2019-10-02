<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
<style>
div.myForm{
 position: absolute;
  left: 300px;
  width: 300px;
  height: 120px;
  }
div.submitBtn{
 position: absolute;
  left: 150px;
  width: 200px;
  height: 120px;
}
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=email], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=number], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
</style>
<title>Login Form</title>
</head>
<body>
  <form action="${pageContext.request.contextPath}/registration.html" method="post">  
    <h1 align="center"><font color="red">Yoga Class Registration</font></h1>
    <div class="myForm">
    <div class="input">
    <h3><b><font color="red">Name:</font></b></h3>
    <input type="text" name="name" placeholder="Your Name" required />
    <br/> 
    <h3><b><font color="red">Email:</font></b></h3>
    <input type="email" name="email" placeholder="Email Id" required />
    <br/> 
    <h3><b><font color="red">Contact Number:</font></b></h3>
    <input type="number" name="contactNumber" placeholder="Contact Number" required/>
    <br/> 
    <h3><b><font color="red">Age:</font></b></h3>
    <input type="number" name="age" placeholder="Age" required/>
    <br/>
    <h3><b><font color="red">City:</font></b></h3>
    <input type="text" name="city" placeholder="City" required/>
    <br/>
    </div>
    <div class="genderRadio">
    <h3><b><font color="red">Gender:</font></b></h3>
    <input type="radio" name="gender" id="male" value="Male">
	<label for="male">Male</label><br>
  	<input type="radio" name="gender" id="female" value="Female">
  	<label for="female">Female</label><br>
    </div>
    <div class="batchRadio">
    <h3><b><font color="red">Batch that fits your timing!</font></b></h3>
  	<input type="radio" name="batch" id="mor6to8" value="Morning: 6:30 to 8:30">
	<label for="mor6to8">Morning: 6:30 to 8:30</label><br>
  	<input type="radio" name="batch" id="mor8to10" value="Morning: 8:30 to 10:30">
  	<label for="mor8to10">Morning: 8:30 to 10:30</label><br>
  	<input type="radio" name="batch" id="eve4to6" value="Evening: 4:30 to 6:30">
	<label for="eve4to6">Evening: 4:30 to 6:30</label><br>
  	<input type="radio" name="batch" id="eve6to8" value="Evening: 6:30 to 8:30">
  	<label for="eve6to8">Evening: 6:30 to 8:30</label><br>
    </div>
    <div class="yogaTypeCheckbox">   
    <h3><b><font color="red">Yoga you want to register for!</font></b></h3>
  	<input type="checkbox" name="yogaType" value="Anusara">Anusara<br>
  	<input type="checkbox" name="yogaType" value="Ashtanga">Ashtanga<br>
  	<input type="checkbox" name="yogaType" value="Bikram">Bikram<br>
  	<input type="checkbox" name="yogaType" value="Power">Power<br>
  	<input type="checkbox" name="yogaType" value="Jivamukti">Jivamukti<br>
  	<input type="checkbox" name="yogaType" value="Kundlini">Kundlini<br>
    </div>
    <br>
    <div class="submitBtn">
    <input type="submit" value="Confirm Registration!" id="submitBtn"/>  
    </div>
    </div>
    </form> 
    
   <script type="text/javascript">
   
   $(document).ready(function () {
       $('#submitBtn').click(function() {
         checked = $("input[name=gender]:checked").length;
         if(!checked) {
           alert("You must choose your gender.");
           return false;
         }
       });    
   });  
   
   $(document).ready(function () {
       $('#submitBtn').click(function() {
         checked = $("input[name=batch]:checked").length;
         if(!checked) {
           alert("You must choose your timing!");
           return false;
         }
       });    
   });  
   
	//get the checkbox validation
    $(document).ready(function () {
        $('#submitBtn').click(function() {
          checked = $("input[type=checkbox]:checked").length;
          if(!checked) {
            alert("You must check at least one checkbox.");
            return false;
          }
        });    
    });  
	
    </script>
</body>
</html>