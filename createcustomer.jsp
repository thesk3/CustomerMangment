<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Parecl</title>
<meta charset="utf-8">
<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<script>
	$(document).ready(function() {
		$('#deletesuccess').delay(9000).fadeOut();

	});
	$("perror").focusout(function() {
		$(this).hide();
	});
</script>



<script>
	function func() {
		var sphone = document.getElementById("Sphone").value;
		var rphone = document.getElementById("Rphone").value;
		var txt1 = document.getElementById('Scity').value;
		var txt2 = document.getElementById('Rcity').value;
		if (txt1 == "Select") {
			document.getElementById("cerror").innerHTML = "this is an invalid city";
			return false;
		} else if (txt1 != null) {
			document.getElementById("cerror").innerHTML = "";

		}
		if (txt2 == "Select") {
			document.getElementById("rcerror").innerHTML = "this is an invalid city";
			return false;
		} else if (txt2 != null) {
			document.getElementById("rcerror").innerHTML = "";

		}
		if (isNaN(sphone) && (sphone.length == "0")) {
			document.getElementById("sperror").innerHTML = "this is an invalid Phone no";
			return false;

		}
		if (sphone.length == "0") {
			alert("3");
			document.getElementById("sperror").innerHTML = "this is an invalid Phone no";
			return false;

		}
		if (sphone.length != null) {

			document.getElementById("sperror").innerHTML = "";
			return true;

		}
		if (isNaN(rphone)) {
			alert("4");
			document.getElementById("rperror").innerHTML = "this is an invalid Phone no";
			return false;

		}
		return true;
	}

	function jsFunction() {
		// set text box value here
		var txt = document.getElementById('Source');
		var txt1 = document.getElementById('Scity').value;
		txt.value = txt1;

		var txt = document.getElementById('Destination');
		var txt1 = document.getElementById('Rcity').value;
		txt.value = txt1;
	}
	function jsFunction1() {
		// set text box value here

		var txt = document.getElementById('Destination');
		var txt1 = document.getElementById('Rcity').value;
		txt.value = txt1;
	}
</script>
</head>
<style>
.one {
	margin: 20px auto;
	width: 80%;
	/* background: #82adbda6; */
	border: 3px solid #ccdbdc14;
	padding: 10px;
	min-height: 233px;
	background: whitesmoke;
}

.two {
	background: #1c202191;
	color: #ffffffed;
}

.card {
	box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.1);
	transition: 0.3s;
	width: 86%;
	padding:2px 19px 0px 34px;
	margin-top: 67px;
	margin-left: 170px;
	min-height: 366px;
	border-top-left-radius: 19px;
	border-top-right-radius: 19px;
	border-bottom-right-radius: 19px;
	border-bottom-left-radius: 19px;
	    border-top: 1px solid rgb(0, 0, 0, 0.1);
}

.card:hover {
	box-shadow: 2px 21px 21px 9px rgba(0, 0, 0, 0.2);
}

.container {
	padding: 2px 16px;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	padding-top: 100px; /* Location of the box */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
	background-color: #fefefe;
	margin: auto;
	padding: 20px;
	border: 1px solid #888;
	width: 80%;
}

/* The Close Button */
.close {
	color: #aaaaaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: #000;
	text-decoration: none;
	cursor: pointer;
}
</style>
<body>
	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Customer Mangment</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="dashboard">Home</a></li>
			<li><a type="button" href="createview" class="btn info">Add
					Customer</a></li>
			<li><a type="button" class="btn info">Primary</a></li>
			<li><a type="button" class="btn info">Primary</a></li>
		</ul>
	</div>
	</nav>
	<form action="create" method="post">
		<div class="container">
			<div class="card">
				<div class="card-header">
					<center>
						<h3>Create Customer</h3>
					</center>
				</div>
				<div class="card-body">

					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<div class="row" style="margin-top: 20px;">
									<div class="col-sm-3">
										<label for="name">Name:</label>
									</div>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="name" name="name"
											placeholder="Enter name"></input>
										<div id="nameerror" style="color: red;"></div>
									</div>
								</div>
								<div id=nameerror"></div>


								<div class="row" style="margin-top: 20px;">
									<div class="col-sm-3">
										<label for="dob">Middle Name</label>
									</div>
									<div class="col-sm-9">
										<input type="text"  class="form-control"
											id="mname" name="mname" />
									</div>
								</div>

								<div class="row" style="margin-top: 20px;">
									<div class="col-sm-3">
										<label for="dob">Last Name</label>
									</div>
									<div class="col-sm-9">
										<input type="text"  class="form-control"
											id="lname" name="lname" />
									</div>
								</div>

								<div class="form-group">
									<div class="row" style="margin-top: 20px;">
										<div class="col-sm-3">
											<label for="adharno">Landline No</label>
										</div>
										<div class="col-sm-9">
											<input type="number" class="form-control" id="Address"
												name="lindlineno" placeholder=""></input>
											<div id="demo" style="color: red;"></div>
										</div>
									</div>
								</div>

								<div class="form-group">
									<div class="row" style="margin-top: 20px;">
										<div class="col-sm-3">
											<label for="mobileno">Mobile No:</label>
										</div>
										<div class="col-sm-9">
											<input type="number" class="form-control" id="mobileno"
												name="mobileno" placeholder=""></input>
											<div id="moberror" style="color: red;"></div>
										</div>
									</div>
								</div>
							</div>

						</div>
						
						
						
						
						
						<div class="col-md-6">
							<div class="form-group">
								<div class="row" style="margin-top: 20px;">
									<div class="col-sm-3">
										<label for="name">Email:</label>
									</div>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="email" name="email"
											placeholder="Enter name"></input>
										<div id="nameerror" style="color: red;"></div>
									</div>
								</div>
								<div id=nameerror"></div>


								<div class="row" style="margin-top: 20px;">
									<div class="col-sm-3">
										<label for="dob">Pincode</label>
									</div>
									<div class="col-sm-9">
										<input type="text"  class="form-control"
											id="phoneno" name="phoneno" />
									</div>
								</div>

								<div class="row" style="margin-top: 20px;">
									<div class="col-sm-3">
										<label for="dob">Address</label>
									</div>
									<div class="col-sm-9">
										<input type="text"  class="form-control"
											id="address" name="address" />
									</div>
									
								</div>

								<div class="form-group">
									<div class="row" style="margin-top: 20px;">
										<div class="col-sm-3">
											<label for="adharno">Area</label>
										</div>
										<div class="col-sm-9">
											<input type="number" class="form-control" id="adharno"
												name="adharno" placeholder=""></input>
											<div id="demo" style="color: red;"></div>
										</div>
									</div>
								</div>

								<div class="form-group">
									<div class="row" style="margin-top: 20px;">
										<div class="col-sm-3">
											<label for="mobileno">Addres Type</label>
										</div>
										<div class="col-sm-9">
										<select class="form-control" id="gender" name="gender">
											<option value="Select">Select</option>
											<option value="male">Male</option>
											<option value="female">Female</option>
										</select>
										<div id="gen" style="color: red;"></div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>

			</div>
	</form>



</body>
</html>

