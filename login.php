<?php
require 'connection.php';
require 'valid.php';;

if(isset($_POST['email'])&& isset($_POST['password'])){
	$username=$_POST['email'];
	$password=$_POST['password'];
	
if(!empty($username) && !empty($password)){
		$sql="select cust_id from customer where email='".$username."' and password='".$password."' limit 1";
		if($query=mysqli_query($conn,$sql)){
			$query_run=mysqli_num_rows($query);
			if($query_run==0)
			{
				echo "<script>alert('Invalid Username or Password')</script>";				
			}
		elseif($query_run==1)
		{
				echo $user_id=mysqli_fetch_array($query,MYSQLI_NUM);
				$_SESSION['user_id']=$user_id[0];//setting up session variables.
				Header('Location: search.php');
		}
	}
}
}
?>
<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html lang="zxx">

<head>
	<title>Validify Login Form Flat Responsive Widget Template :: w3layouts</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Validify Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"
	/>

	<!-- Meta tag Keywords -->
	<!-- css files -->
	<link rel="stylesheet" href="css/styles.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link rel="stylesheet" href="css/fontawesome-all.css">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->
	<!-- web-fonts -->
	<link href="//fonts.googleapis.com/css?family=Nova+Round" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	<!-- //web-fonts -->
</head>

<body>
	<!-- title -->
	<h1>
		<span>V</span>alidify
		<span>L</span>ogin
		<span>F</span>orm
	</h1>
	<!-- //title -->
	<!-- content -->
	<div class="sub-main-w3">
		<form id="demo" novalidate action="#" method="post">
			<h2>Login Your Account</h2>
			<div class="form-group">
				<input type="email" class="form-control textbox" name="email" placeholder="E-mail" required="">
			</div>
			<div class="form-group">
				<input type="password" class="form-control textbox" name="password" placeholder="Password" required="">
			</div>
			<div class="form-group-2">
				<button class="btn btn-default btn-osx btn-lg"  type="submit">
					<i class="fas fa-long-arrow-alt-right"></i>
				</button>
			</div>
			<div class="alert alert-success hidden" role="alert">You Have Successfully Logged In</div>
		</form>
		<!-- //switch -->
	</div>
	<!-- //content -->

	<!-- copyright -->
	<div class="footer">
		<p>&copy; 2018 Validify Login Form. All rights reserved | Design by
			<a href="http://w3layouts.com">W3layouts</a>
		</p>
	</div>
	<!-- //copyright -->

	<!-- Jquery -->
	<script src="js/jquery-2.2.3.min.js"></script>
	<!-- //Jquery -->

</body>

</html>