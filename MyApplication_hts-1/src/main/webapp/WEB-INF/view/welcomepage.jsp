<!DOCTYPE html >

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>

<meta charset="utf-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta http-equiv="Pragma" content="no-cache">

<meta http-equiv="Cache-Control" content="no-cache">

<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">

<title>Welcome | home</title>

<link href="static/css/bootstrap.min.css" rel="stylesheet">

<link href="static/css/style.css" rel="stylesheet">

<!--[if lt IE 9]>

      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>

      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

    <![endif]-->



</head>

<body>

	<div role="navigation">

		<div class="navbar navbar-inverse">

			<a href="/welcome" class="navbar-brand">HTS</a>

			<div class="navbar-collapse collapse">

				<ul class="nav navbar-nav">

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						id="navbarDropdownMenuLink" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> Login </a>
						<div class="dropdown-menu"
							aria-labelledby="navbarDropdownMenuLink">
							<div><a class="dropdown-item" href="/login">Student</a></div>
								<div> <a class="dropdown-item" href="/admin-login">Admin</a></div>
						</div></li>

				<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#"
						id="navbarDropdownMenuLink" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> Register </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
							<div><a class="dropdown-item" href="/register">Student</a></div>
							<div> <a class="dropdown-item" href="/register-admin">Admin</a></div>
						</div></li>
					<li><a href="/show-users-user">All Students</a></li>
					</ul>
			

				
        

			</div>

		</div>

	</div>




	<c:choose>
		<c:when test="${mode=='MODE_HOME'}">

			<div class="container" id="homediv">

				<div class="jumbotron text-center">

					<h1>Welcome</h1>

					<h3></h3>

				</div>

			</div>


		</c:when>




		<c:when test="${mode=='MODE_REGISTER'}">
			<div class="container text-center">

				<h3>New Registration</h3>

				<hr>

				<form class="form-horizontal" method="POST" action="save-user">

					<input type="hidden" name="id" value="${user.id }" />

					<div class="form-group">

						<label class="control-label col-md-3">Username</label>

						<div class="col-md-7">

							<input type="text" class="form-control" name="username"
								value="${user.username }" />

						</div>

					</div>

					<div class="form-group">

						<label class="control-label col-md-3">First Name</label>

						<div class="col-md-7">

							<input type="text" class="form-control" name="firstname"
								value="${user.firstname }" />

						</div>

					</div>

					<div class="form-group">

						<label class="control-label col-md-3">Last Name</label>

						<div class="col-md-7">

							<input type="text" class="form-control" name="lastname"
								value="${user.lastname }" />

						</div>

					</div>

					<div class="form-group">

						<label class="control-label col-md-3">Age </label>

						<div class="col-md-3">

							<input type="text" class="form-control" name="age"
								value="${user.age }" />

						</div>

					</div>

					<div class="form-group">

						<label class="control-label col-md-3">Password</label>

						<div class="col-md-7">

							<input type="password" class="form-control" name="password"
								value="${user.password }" />

						</div>

					</div>

					<div class="form-group ">

						<input type="submit" class="btn btn-primary" value="Register" />

					</div>

				</form>

			</div>
		</c:when>

		<c:when test="${mode=='ALL_USER_ADMIN' }">
		
			<div class="container text-center" id="tasksDiv">

				<h3>All Users</h3>

				<hr>

				<div class="table-responsive">

					<table class="table table-striped table-bordered">

						<thead>

							<tr>

								<th>Id</th>

								<th>UserName</th>

								<th>First Name</th>

								<th>LastName</th>

								<th>Age</th>

								<th>Delete</th>

								<th>Edit</th>

							</tr>

						</thead>

						<tbody>

							<c:forEach var="user" items="${users }">

								<tr>
									<td>${user.id}</td>
									
									<td>${user.username}</td>

									<td>${user.firstname}</td>

									<td>${user.lastname}</td>

									<td>${user.age}</td>
									<td><a href="/delete-user?id=${user.id}"><span
											class="glyphicon glyphicon-trash"></span></a></td>
									<td><a href="/edit-user?id=${user.id }"><span
											class="glyphicon glyphicon-pencil"></span></a></td>
								</tr>

							</c:forEach>

						</tbody>

					</table>

				</div>

			</div>
		</c:when>
		
		<c:when test="${mode=='ALL_USER_USER' }">
			<div class="container text-center" id="tasksDiv">

				<h3>All Students</h3>

				<hr>

				<div class="table-responsive">

					<table class="table table-striped table-bordered">

						<thead>

							<tr>

								<th>First Name</th>

								<th>LastName</th>

								<th>Age</th>
							</tr>

						</thead>

						<tbody>

							<c:forEach var="user" items="${users }">

								<tr>

									<td>${user.firstname}</td>

									<td>${user.lastname}</td>

									<td>${user.age}</td>
								</tr>

							</c:forEach>

						</tbody>

					</table>

				</div>

			</div>
		</c:when>

		<c:when test="${mode=='MODE_UPDATE' }">

			<div class="container text-center">

				<h3>Update User</h3>

				<hr>

				<form class="form-horizontal" method="POST" action="save-user">

					<input type="hidden" name="id" value="${user.id }" />

					<div class="form-group">

						<label class="control-label col-md-3">Username</label>

						<div class="col-md-7">

							<input type="text" class="form-control" name="username"
								value="${user.username }" />

						</div>

					</div>

					<div class="form-group">

						<label class="control-label col-md-3">First Name</label>

						<div class="col-md-7">

							<input type="text" class="form-control" name="firstname"
								value="${user.firstname }" />

						</div>

					</div>

					<div class="form-group">

						<label class="control-label col-md-3">Last Name</label>

						<div class="col-md-7">

							<input type="text" class="form-control" name="lastname"
								value="${user.lastname }" />

						</div>

					</div>

					<div class="form-group">

						<label class="control-label col-md-3">Age </label>

						<div class="col-md-3">

							<input type="text" class="form-control" name="age"
								value="${user.age }" />

						</div>

					</div>

					<div class="form-group">

						<label class="control-label col-md-3">Password</label>

						<div class="col-md-7">

							<input type="password" class="form-control" name="password"
								value="${user.password }" />

						</div>

					</div>

					<div class="form-group ">

						<input type="submit" class="btn btn-primary" value="Update" />

					</div>

				</form>

			</div>

		</c:when>

		<c:when test="${mode=='MODE_LOGIN' }">

			<div class="container text-center">

				<h3>Student Login</h3>

				<hr>

				<form class="form-horizontal" method="POST" action="/loging-user">

					<c:if test="${not empty error }">

						<div class="alert alert-danger">

							<c:out value="${error}"></c:out>

						</div>

					</c:if>

					<div class="form-group">

						<label class="control-label col-md-3">Username</label>

						<div class="col-md-7">

							<input type="text" class="form-control" name="username"
								value="${user.username }" />

						</div>

					</div>

					<div class="form-group">

						<label class="control-label col-md-3">Password</label>

						<div class="col-md-7">

							<input type="password" class="form-control" name="password"
								value="${user.password }" />

						</div>

					</div>

					<div class="form-group ">

						<input type="submit" class="btn btn-primary" value="Login" />

					</div>

				</form>

			</div>

		</c:when>
	
	
		
		<c:when test="${mode=='MODE_ADMIN_REGISTER'}">
			<div class="container text-center">

				<h3>New Registration</h3>

				<hr>

				<form class="form-horizontal" method="POST" action="save-admin">

					<input type="hidden" name="id" value="${admin.id }" />

					<div class="form-group">

						<label class="control-label col-md-3">Unique Id</label>

						<div class="col-md-7">

							<input type="text" class="form-control" name="uniqueId"
								value="${admin.uniqueId }" />

						</div>

					</div>

					<div class="form-group">

						<label class="control-label col-md-3">First Name</label>

						<div class="col-md-7">

							<input type="text" class="form-control" name="firstname"
								value="${admin.firstname }" />

						</div>

					</div>

					<div class="form-group">

						<label class="control-label col-md-3">Last Name</label>

						<div class="col-md-7">

							<input type="text" class="form-control" name="lastname"
								value="${admin.lastname }" />

						</div>

					</div>

					<div class="form-group">

						<label class="control-label col-md-3">Age </label>

						<div class="col-md-3">

							<input type="text" class="form-control" name="age"
								value="${admin.age }" />

						</div>

					</div>

					<div class="form-group">

						<label class="control-label col-md-3">Password</label>

						<div class="col-md-7">

							<input type="password" class="form-control" name="password"
								value="${admin.password }" />

						</div>

					</div>

					<div class="form-group ">

						<input type="submit" class="btn btn-primary" value="Register" />

					</div>

				</form>

			</div>
		</c:when>
		
		
		
		
		
	<c:when test="${mode=='MODE_ADMIN_HOME'}">

			<div class="container" id="homediv">

				<div class="jumbotron text-center">

					<h1>Welcome</h1>

					<h3>Welcome to Student Register Portal</h3>

				</div>

			</div>


		</c:when>


<c:when test="${mode=='MODE_ADMIN_LOGIN' }">

			<div class="container text-center">

				<h3>Admin Login</h3>

				<hr>

				<form class="form-horizontal" method="POST" action="/loging-admin">

					<c:if test="${not empty error }">

						<div class="alert alert-danger">

							<c:out value="${error}"></c:out>

						</div>

					</c:if>

					<div class="form-group">

						<label class="control-label col-md-3">Unique ID</label>

						<div class="col-md-7">

							<input type="text" class="form-control" name="uniqueId"
								value="${admin.uniqueId}" />

						</div>

					</div>

					<div class="form-group">

						<label class="control-label col-md-3">Password</label>

						<div class="col-md-7">

							<input type="password" class="form-control" name="password"
								value="${admin.password }" />

						</div>

					</div>

					<div class="form-group ">

						<input type="submit" class="btn btn-primary" value="Login" />

					</div>

				</form>

			</div>

		</c:when>

	</c:choose>




	<!-- Optional JavaScript -->

	<!-- jQuery first, then Popper.js, then Bootstrap JS -->

	<script src="static/js/jquery-1.11.1.min.js"></script>

	<script src="static/js/bootstrap.min.js"></script>

</body>

</html>