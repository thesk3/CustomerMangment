<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Parecl</title>
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
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
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	transition: 0.3s;
	width: 80%;
	margin-top: 67px;
	margin-left: 170px;
	min-height: 366px;
	border-top-left-radius: 19px;
	border-top-right-radius: 19px;
	border-bottom-right-radius: 19px;
	border-bottom-left-radius: 19px;
}

.card:hover {
	box-shadow: 23px 41px 76px 23px rgba(0, 0, 0, 0.2);
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
	<form action="save" method="post">
	<c:forEach var="row" items="${customer}">
		<div class="container">
			<div class="card">
				<div class="card-header">
					<center>
						<h3>Create Customer</h3>
					</center>
				</div>
				<div class="card-body">
					<h4>
						Customer Details
						</br>Customer ID:<c:out value="${row.id}" />
						<h4>
<input type="hidden" value="<c:out value="${row.id}" />" name="id"> 
							<div class="row">
								<div class="col-sm-6">
									<div class="input-group mb-3" style="width: 414px">
										<div class="input-group-prepend">
											<span class="input-group-text" id="basic-addon1"
												style="width: 116px">Name</span>
										</div>
										<select class="form-control" name="pstauts" id="sel1"
												style="width: 0%;">
												<option value="Active"><c:out value="${row.nameTitle}" /></option>
												<option value="Active">Mr</option>
												<option value="Inactive">Mrs</option>

											</select>
										<input type="text" class="form-control" name="fname"
											aria-label="Sname" aria-describedby="basic-addon1"
											maxlength="40" value="<c:out value="${row.firstname}" />" required>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="input-group mb-3" style="width: 414px">
										<div class="input-group-prepend">
											<span class="input-group-text" id="basic-addon1"
												style="width: 120px;">Email</span>
										</div>
										<input type="text" class="form-control" name="email"
											 value="<c:out value="${row.email}" />"
											aria-describedby="basic-addon1" maxlength="20" required>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6">
									<div class="input-group mb-3" style="width: 414px">
										<div class="input-group-prepend">
											<span class="input-group-text" id="basic-addon1"
												style="width: 116px">Middle Name</span>
										</div>
										<input type="text" class="form-control" name="mname"
											id="Sphone" aria-label="Sphone" value="<c:out value="${row.middleName}" />"
											aria-describedby="basic-addon1" maxlength="10" required></input>
										<h6>
											<div id="sperror" style="width: 339px; color: red;"></div>
										</h6>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="input-group mb-3" style="width: 414px">
										<div class="input-group-prepend">
											<span class="input-group-text" id="basic-addon1"
												style="width: 116px">Phone</span>
										</div>
										<input type="text" class="form-control" name="phone"
											id="Sphone" aria-label="Sphone" value="<c:out value="${row.phone}" />"
											aria-describedby="basic-addon1" maxlength="10" required></input>
										<h6>
											<div id="sperror" style="width: 339px; color: red;"></div>
										</h6>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6">
									<div class="input-group mb-3" style="width: 414px">
										<div class="input-group-prepend">
											<span class="input-group-text" id="basic-addon1"
												style="width: 116px">Last Name</span>
										</div>
										<input type="text" class="form-control" name="lname"
											id="Sphone" aria-label="Sphone" value="<c:out value="${row.lastName}" />"
											aria-describedby="basic-addon1" maxlength="10" required></input>
										<h6>
											<div id="sperror" style="width: 339px; color: red;"></div>
										</h6>
									</div>
								</div>
<div class="col-sm-6">
									<div class="input-group mb-3" style="width: 414px">
										<div class="input-group-prepend">
											<span class="input-group-text" id="basic-addon1"
												style="width: 116px">Landline No</span>
										</div>
										<input type="text" class="form-control" name="landlineno"
											id="Sphone" aria-label="Sphone" value="<c:out value="${row.landlineNO}" />"
											aria-describedby="basic-addon1" maxlength="10" required></input>
										<h6>
											<div id="sperror" style="width: 339px; color: red;"></div>
										</h6>
									</div>
								</div>
								
							</div>


							<div class="row">

								<div class="col-sm-6">
									<div class="input-group mb-3" style="width: 414px">
										<div class="input-group-prepend">
											<span align="right" class="input-group-text"
												id="basic-addon1" style="width: 116px">Pincode</span>
										</div>
										<input type="text" class="form-control" name="pincode"
											id="Sphone" aria-label="Sphone" value="<c:out value="${row.pincode}" />"
											aria-describedby="basic-addon1" maxlength="10" required></input>
										<h6>
											<div id="sperror" style="width: 339px; color: red;"></div>
										</h6>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="input-group mb-3" style="width: 414px">
										<div class="input-group-prepend">
											<span class="input-group-text" id="basic-addon1"
												style="width: 120px;">Area</span>
										</div>
										<input rows="1" type="textarea" class="form-control"
											name="area" value="<c:out value="${row.area}" />"
											 maxlength="200" required>
									</div>
								</div>
							</div>
							<div class="row">
<div class="col-sm-6">
									<div class="input-group mb-3">
										<div class="input-group-prepend">
											<span class="input-group-text" id="basic-addon1"
												style="width: 120px">Address</span>
										</div>
										<input type="text" class="form-control" name="address"
											id="Sphone" aria-label="Sphone"
											value="<c:out value="${row.address}" />"
											aria-describedby="basic-addon1" maxlength="10" required></input>
									</div>
								</div>
								
								<div class="col-sm-6">
									<div class="input-group mb-3" style="width: 414px">
										<div class="input-group-prepend">
											<span class="input-group-text" id="basic-addon1"
												style="height: 38px; width: 120px;">Address type </span>
										</div>
										<div class="form-group">

											<select class="form-control" name="addresstype" id="sel1"
												style="width: 202%;">
												<option value="Active">Permamnt</option>
												<option value="Inactive">Residinational</option>

											</select>
										</div>
									</div>
								</div>
							</div>



							<center>
								<button onclick="return func()" type="submit"
									class="btn btn-info">Update</button>
								<!-- id="myBtn" -->
								<a  href="/CustomerManagament/dashboard" class="btn btn-info" role="button">Cancel</a>
<a href="delete/${row.id}" class="btn btn-info">Delete</a> 
							</center>
				</div>
			</div>
		</div>
		</div>

		</div>
</c:forEach>
	</form>



</body>
</html>

									