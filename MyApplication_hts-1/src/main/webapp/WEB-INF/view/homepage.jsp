
<!DOCTYPE html >

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>

<meta charset="utf-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta http-equiv="Pragma" content="no-cache">

<meta http-equiv="Cache-Control" content="no-cache">

<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">

<title>Home-tab| home</title>

<link href="static/css/bootstrap.min.css" rel="stylesheet">

<link href="static/css/style.css" rel="stylesheet">

<!--[if lt IE 9]>

      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>

      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

    <![endif]-->

<SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
</SCRIPT>

</head>

<body onload="noBack();" 
	onpageshow="if (event.persisted) noBack();" onunload="">

	<div role="navigation">

		<div class="navbar navbar-inverse">

			<a href="/welcome" class="navbar-brand">HTS</a>

			<div class="navbar-collapse collapse">

				<ul class="nav navbar-nav">

					<li><a href="/show-users-user">All Student</a></li>

					<li><a>"User name ${user.username}"</a></li>
				</ul>

			</div>
		</div>

	</div>




	<div class="container" id="homediv">

		<div class="jumbotron text-center">

			<h1>Welcome to Student Portal</h1>

			<h3>Some Important Links</h3>

		</div>

	</div>



	<div class="container text-centered">

		<div class="alert alert-success">

			<h4>Face Book Login</h4>

		</div>

		<iframe width="400" height="200" src="https://www.facebook.com"></iframe>

	</div>



	<!-- Optional JavaScript -->

	<!-- jQuery first, then Popper.js, then Bootstrap JS -->

	<script src="static/js/jquery-1.11.1.min.js"></script>

	<script src="static/js/bootstrap.min.js"></script>

</body>

</html>