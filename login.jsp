<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<!--<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">-->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<title>Login</title>

</head>
<style>
input:focus ~ .floating-label,
input:not(:focus):valid ~ .floating-label{
     top: 115px;
      left:515px;
   bottom:2px;
  font-size: 11px;
  opacity: 1;

}

.inputText {
  font-size: 14px;
  width: 200px;
  height: 35px;
}

.floating-label {
  position: absolute;
  pointer-events: none;
     left:515px;
       top: 127px;
  transition: 0.2s ease all;
}
input:focus ~ .floating-label1,
input:not(:focus):valid ~ .floating-label1{
      left: 515px;
   top: 190px;
   bottom:2px;
  font-size: 11px;
  opacity: 1;
}

.inputText{
  font-size: 14px;
  width: 200px;
  height: 35px;
}

.floating-label1{
  position: absolute;
  pointer-events: none;
       left: 515px;
   top: 206px;
  transition: 0.2s ease all;
 
}

.one {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	transition: 0.3s;
	width: 37%;
	min-height: 376px;
		margin-top: 26px;
	border-top-left-radius: 19px;
	border-top-right-radius: 19px;
	border-bottom-right-radius: 19px;
	border-bottom-left-radius: 19px;
	border-top: 1px solid lightgrey;
	background: white;
}

.cen {
	margin-left: 24px;
	padding-top: 50px;
}

.inp {
	 width: 360px;
	border-bottom: 3px solid lightgrey;
	border-top: 0;
	border-right: 0;
	border-left: 0;
}

.title {
	display: block;
	font-family: Poppins-Bold;
	font-size: 39px;
	color: #333333;
	line-height: 1.2;
	text-align: center;
	
	font-family: Poppins-Regular, sans-serif;
}

.input-group-addon:first-child {
	border-right: 0;
	border-left: 0;
	border-bottom: 0;
	border-top: 0;
	background: white;
}

.body1 {
	/* 	background: #8e9ea5a6;
 */
	/* background: url(https://colorlib.com/etc/lf/Login_v4/images/bg-01.jpg);
	background-attachment: fixed;
	background-size: cover; */
}

.form-control:focus {
	border-color: #e60fd6;
	box-shadow: 0px 0px 1px rgba(0, 0, 0, 0) inset, 0px 0px 0px
		rgba(0, 0, 0, 0);
}
.inp:focus {
	border-color: #e60fd6;
	background:white;
	box-shadow: 0px 0px 1px rgba(0, 0, 0, 0) inset, 0px 0px 0px
		rgba(0, 0, 0, 0);
}
.btn-primary {
    /* color: #fff;
    background-color: #337ab7;
    border-color: #2e6da4; */
        height: 48px;
    background: url(https://colorlib.com/etc/lf/Login_v4/images/bg-01.jpg);
	background-attachment: fixed;
	background-size: cover;
}
.form-control {
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0);
}

 input {
	outline: none;
	border: none;
	width: 100%;
	box-sizing: border-box;
	border-bottom: 3px solid lightgrey;
}
</style>
<body class="body1">

	<form action="login" method="post">
		<div class="container">
			<center>
				<div class="one">
					<span class="title"> Login </span>
					<center>
						<div class="cen">
							<!-- <div class="input-group">
								<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> <input id="username"
									type="text" class="form-control inp inputText" name="username"
									placeholder="Email" style="width: 361px;"> <span class="floating-label">Your email address</span>
							</div> -->
								<div>
  <input type="text" name="username"  class="inputText inp" required/>
  <span class="floating-label">Email</span>
</div>
							<!-- <div class="input-group" style="padding-top: 53px;">
								<span class="floating-label">Your email address</span><input id="password"
									type="text" class="form-control inp" name="password"
									placeholder="Password" style="width: 361px;">
							</div> -->	</br></br><div>
  <input type="text" name="password" class="inputText inp" required/>
  <span class="floating-label1">Password</span>
</div>
						</div>
											
						<div style="    padding-top: 73px;">
						<button type="submit" class="btn btn-primary" style="width: 86%;">Login</button>

						
				</div>
			</center>
		</div>
		</center>
		</div>
	</form>
</body>
</html>