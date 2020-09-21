<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Welcome to InvestmentTracker</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script type="text/javascript">
  function validate()
  {
   var newpass=document.getElementbyId("psswd");
   var cnfpass=document.getElementbyId("cnfpsswd");
      if(newpass.equals(cnfpass))
	  {
	   document.getElementById("signupfooter").innerHTML = "Password not matching";
	  }
  }
  </script>
  <style>
body {
  background-image: url("././img/teahub.io-iram-name-wallpaper-3643010.png");
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;
}
img {
  
}
.carousel slide
{
margin-top:50px;
height: 50%;
position:absolute;
}
.container
{
margin-top:500px;
margin-left:750px;
margin-bottom: 100px;
text-align: center;
background-image: url('img_girl.jpg');
padding-top: 40px;
width: 250px;
height:100px
}

</style>
</head>
<body>

<img src="" >
<div class="container" style="background-color:#F0FFFF;">
  <!-- Button to Open the Modal -->
  <div class="inline">
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#LoginModal">
    Login
  </button><a>&nbsp&nbsp&nbsp&nbsp</a>
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#SignUpModal">
    SignUp
  </button>
  </div>
  ${inv}
  <!-- The Modal for LOGIN -->
  <div class="modal" id="LoginModal">
    <div class="modal-dialog">
      <div class="modal-content">
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Login to Track your Investments</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <!-- Modal body -->
        <div class="modal-body">
          <form action="/login" method="POST">
  			<div class="form-group">
    			<label for="email">Email address:</label>
    			<input type="email" class="form-control"  name="email" required>
  			</div>
  			<div class="form-group">
    			<label for="pwd">Password:</label>
    			<input type="password" class="form-control" name="password" required>
  			</div>
  			<button type="submit" class="btn btn-danger" value="Submit">Login</button>
		 </form>
        </div>
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
  <!-- The Modal for SIGN-UP -->
  <div class="modal" id="SignUpModal">
    <div class="modal-dialog">
      <div class="modal-content">
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">SignUp and get your Investments Tracked</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <!-- Modal body -->
        <div class="modal-body">
         <form action="/signup" method="POST">
  			<div class="form-group">
    			<label for="text">First Name:</label>
    			<input type="text" class="form-control" id="fname" name="FirstName" required>
  			</div>
  			<div class="form-group">
    			<label for="text">Last Name:</label>
    			<input type="text" class="form-control" id="lname" name="LastName" required>
  			</div>
  			<div class="form-group">
    			<label for="email">Email address:</label>
    			<input type="email" class="form-control" id="email" name="email" required>
  			</div>
  			<div class="form-group">
    			<label for="pwd">Password:</label>
    			<input type="password" class="form-control" id="passwd" name="password" required>
  			</div>
  			<div class="form-group">
    			<label for="pwd">Confirm Password:</label>
    			<input type="password" class="form-control" id="cnfpasswd" name="cnfpassword" required>
  			</div>
  			<button type="submit" class="btn btn-danger" onclick="return validate()">SignUp</button>
		 </form>
        </div>
        <!-- Modal footer -->
        <div class="modal-footer" >
        <b id="signupfooter"></b>
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
