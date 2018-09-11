<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">   -->
 <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>

 $(document).ready(function() {
	$(".container").hide();
	

	$("#b1").click(function() {
		$(".container").hide();
		
		$("#search").show();
		
		
	});
	$("#b3").click(function() {
		$(".container").show();
		
		$("#search").hide();
		
		
	});
	
});
</script>
</head>
<style>
.one {
	margin: 90px auto;
    width: 88%;
    /* background: #82adbda6; */
    border: 3px solid #ccdbdc14;
    padding: 10px;
    height: 233px;
}
.bnav {
    background: Black;
    height: 72px;
    padding-top: 18px;
}


.modal-body {
    position: relative;
    -ms-flex: 1 1 auto;
    flex: 1 1 auto;
    padding: 1rem;
    min-height: 244px;
}
.nav2{
    width: 300px;
    background: black;
    text-color: white;
    color: white;

}

</style>
<body class="body1">

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Customer Mangment</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a type="button" href="createview" class="btn info">Add Customer</a></li>
      <li><a type="button" class="btn info">Primary</a></li>
      <li><a type="button" class="btn info">Primary</a></li>
    </ul>
  </div>
</nav>
  
	<form action="" method="post" class="one">
			
			<table class="table table-bordered" id="tab">
				<thead>
					<tr class="two">
						<th>Sr No</th>
						<th style="width: 155px;">Id</th>
						<th>First Name</th>
						<th>Mobile No</th>
						<th>Created Date</th>
						<th>Adress</th>
					</tr>
				</thead>
				<tbody id="myTable">
					<c:forEach var="row" items="${customer}">
						<tr>
							<td><a href="customeretails/<c:out value="${row.id}"/>"><c:out
										value="${row.id}" /></a></td>
							<td><c:out value="${row.firstname}" /></td>
							<td><c:out value="${row.phone}" /></td>
							<td><c:out value="${row.createddate}" /></td>
							<td><c:out value="${row.address}" /></td>

						</tr>


					</c:forEach>
			</table>
			<script type="text/javascript" charset="utf8"
				src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>
			<script type="text/javascript" charset="utf8"
				src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
			<script>
				$(function() {
					$("#tab").dataTable();
				})
			</script>
			<script>
				var tables = document.getElementsByTagName('table');
				var table = tables[tables.length - 1];
				var rows = table.rows;
				for (var i = 1, td; i < rows.length; i++) {
					td = document.createElement('td');
					td.appendChild(document.createTextNode(i + 0));
					rows[i].insertBefore(td, rows[i].firstChild);
				}
			</script>

	
	</form>

	<!-- The Modal -->
	<div class="modal" id="myModal1">
		<div class="modal-dialog modal-lg  modal-dialog-centered">
			<div class="modal-content" >

				<!-- Modal Header -->
				<div class="modal-header">
					<center><h3 class="modal-title" style="margin-left: 303px;">Create Customer</h3></center>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<div class="row">
						<div class="col-sm-6">
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="basic-addon1"  style="width: 84px;">Name</span>
								</div>
								<input type="text" class="form-control" name="Sname"
									aria-label="Sname" aria-describedby="basic-addon1"
									maxlength="40" value="" required>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="basic-addon1"
										style="width: 80px;">Email</span>
								</div>
								<input type="text" class="form-control" name="Semail"
									aria-label="Semail" value=""
									aria-describedby="basic-addon1" maxlength="20" required>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="basic-addon1" style="width: 84px;" >Phone</span>
								</div>
								<input type="text" class="form-control" name="Sname"
									aria-label="Sname" aria-describedby="basic-addon1"
									maxlength="40" value="" required>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="basic-addon1"
										style="width: 80px;">Address</span>
								</div>
								<input type="text" class="form-control" name="Semail"
									aria-label="Semail" value=""
									aria-describedby="basic-addon1" maxlength="20" required>
							</div>
						</div>
					</div>
<div class="row">
						<div class="col-sm-6">
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="basic-addon1">pincode</span>
								</div>
								<input type="text" class="form-control" name="Sname"
									aria-label="Sname" aria-describedby="basic-addon1"
									maxlength="40" value="" required>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="basic-addon1"
										style="width: 80px;">Area</span>
								</div>
								<input type="text" class="form-control" name="Semail"
									aria-label="Semail" value=""
									aria-describedby="basic-addon1" maxlength="20" required>
							</div>
						</div>
					</div>					
					
<div class="row">
						<div class="col-sm-6">
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="basic-addon1"style="width: 84px;" >Middle Name</span>
								</div>
								<input type="text" class="form-control" name="Sname"
									aria-label="Sname" aria-describedby="basic-addon1"
									maxlength="40" value="" required>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="basic-addon1"
										style="width: 84px;">Last Name</span>
								</div>
								<input type="text" class="form-control" name="Semail"
									aria-label="Semail" value=""
									aria-describedby="basic-addon1" maxlength="20" required>
							</div>
						</div>
					</div>					
					
					
					
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<a href="create" class="btn btn-info" style="width: 119px;     margin: inherit;">Create</a>
					<button type="button" class="btn btn-info" data-dismiss="modal" style="width: 119px;     margin-right: 263px;">Close</button>
				
				</div>

			</div>
		</div>
	</div>
 
</body>
</html>