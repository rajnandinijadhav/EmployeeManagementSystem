<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>add Employees</title>
<link href='https://fonts.googleapis.com/css?family=Didact Gothic'
	rel='stylesheet'>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
	integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
	integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<style>
.navbar .navbar-nav .nav-item {
	font-family: 'Didact Gothic';
	font-size: 12px;
}

.navbar .navbar-nav .nav-item a {
	color: white;
}

.navbar .navbar-nav .nav-item a:hover {
	color: gold;
}

a {
	font-size: 14px;
	font-weight: 700
}

.superNav {
	font-size: 13px;
}

.form-control {
	outline: none !important;
	box-shadow: none !important;
}

@media screen and (max-width:540px) {
	.centerOnMobile {
		text-align: center
	}
}

.navbar .container .nav-item .nav-link {
	color: white;
}

.navbar .container .nav-item .nav-link:hover {
	color: yellow;
}
</style>
</head>
<body style="background-color:#f0f8ff">
	<nav
		class="navbar navbar-expand-lg bg-dark sticky-top navbar-light p-3 shadow-sm">
		<div class="container">
			<a class="navbar-brand" style="color: gold;" href="home"><i
				class="fa-solid fa-shop me-2"></i> <strong>EMP MGM</strong></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
				aria-controls="navbarNavDropdown" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="mx-auto my-3 d-lg-none d-sm-block d-xs-block">
				<div class="input-group">
					<span class="border-warning input-group-text bg-warning text-white"><i
						class="fa-solid fa-magnifying-glass"></i></span> <input type="text"
						class="form-control border-warning" name="ch"
						style="color: #7a7a7a">
					<button class="btn btn-warning text-white">Search</button>
				</div>
			</div>
			<form action="search.jsp">
				<div class=" collapse navbar-collapse" id="navbarNavDropdown">
					<div class="ms-auto d-none d-lg-block">
						<div class="input-group">
							<span
								class="border-warning input-group-text bg-warning text-white"><i
								class="fa-solid fa-magnifying-glass"></i></span> <input type="text"
								class="form-control border-warning" name="ch"
								style="color: #7a7a7a">
							<button class="btn btn-warning text-white">Search</button>
						</div>
					</div>
				</div>
			</form>



			<ul class="navbar-nav ms-auto ">

				<li class="nav-item"><a class="nav-link mx-2 text-uppercase"
					href="home"><i class="fa-solid fa-house"></i> Home</a></li>




				<c:if test="${not empty loginuser }">

					<li class="nav-item "><a class="nav-link mx-2 text-uppercase "
						href="login.jsp"><i class="fa-solid fa-user fa-1x text-info"
							aria-hidden="true"></i> ${loginuser.fullname} </a></li>


					<li class="nav-item">
					<li class="nav-item"><a class="nav-link mx-2 text-uppercase"
						href="logout">LogOut <i class="fa-solid fa-right-from-bracket"></i></a>
					</li>

				</c:if>



			</ul>

		</div>


	</nav>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center text-danger">--- Add Employee ---</h4>

						<c:if test="${not empty msg }">
							<h6 class="text-success">${msg }</h6>
							<c:remove var="msg" />
						</c:if>
						<form action="createEmp" method="post">
						
						
						

							<div class="form-group p-2">
								<label for="exampleInputEmail1">Enter Employee Name*</label><input
									name="fullName" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">
							</div>

							<div class="form-group p-2">
								<label for="exampleInputEmail1">Enter Address*</label><input
									name="address" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1"> Enter Email</label><input
									name="email" type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1"> Enter Password*</label><input
									name="password" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1"> Enter Designation*</label><input
									name="designation" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">
							</div>

							<!-- div class="form-group p-2">
								<label for="inputState"> Enter Department</label><select
									id="inputState" name="department" class="form-control">

									<option selected>--select--</option>
									<option value="hr">HR</option>
									<option value="it">IT</option>
									<option value="bs">Business</option>
									<option value="ts">Testing</option>
									<option value="dt">Development</option>
									<option value="fn">Finance</option>
								</select>
							</div>-->
							<div class="form-group">
								<label for="exampleInputEmail1"> Enter Salary*</label><input
									name="salary" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">
							</div>
							<!--  div class="form-group">
								<label for="exampleInputEmail1"> Enter Mobile*</label><input
									name="mobileno" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">
							</div>-->
							<div class="text-center">
							<button type="submit" class="btn btn-primary">ADD Employee</button>
							</div>
						</form>
						</div>
				
				
				</div>
			
			</div>
		
		
		</div>
	
	
	</div>
</body>
</html>