<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page language="java" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>success</title>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<style>


.one {
	margin: 20px auto;
	width: 390px;
	background: whitesmoke;
	border: 3px solid #ccdbdc14;
	padding: 10px;
	min-height: 261px
}
</style>
<body>
<body style="background: #8e9ea5a6; ">
	<div class="container">

		<form method="get" class="one" style="margin-top: 110px;" class="one">
			<label for="title" style=""><center style="margin-left: 134px; font-family: Poppins-Regular; font-size: 30px;">SUCESS</center></label>
			<center><br><br>Tracking ID :<%out.println(request.getAttribute("id"));%></br> is  <%out.println(request.getAttribute("msg"));%> successfully</br>
</center>
			<a href="/CustomerManagament/dashboard">
				<button type="button" class="btn btn-info"
					style="margin-left: 136px; margin-top: 93px; width: 121px;">ok</button>
			</a>
		</form>
	</div>
</body>
</html>