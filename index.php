<?php
session_start();
include 'include/database.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" integrity="sha384-PmY9l28YgO4JwMKbTvgaS7XNZJ30MK9FAZjjzXtlqyZCqBY6X6bXIkM++IkyinN+" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="style/style.css">
	<title>HANGMAN</title>
</head>
<body>
	<div class="center">
		<img src="img/hangman.png" alt="HANGMAN" class="logo">
	</div>
	<div>

		<!-- LOGIN FORM -->

		<form action="" method="post" class="form-horizontal col-lg-4 col-lg-offset-4 center">
			<input type="name" name="name" placeholder="Name" class="form-control">
			<p></p>
			<input type="password" name="password" placeholder="Password" class="form-control">
			<p></p>
			<input type="submit" name="submit" value="Login" class="btn btn-default">
		</form>

		<!-- CHECK FOR EXISTING USER IN THE TABLE 'USERS' -->

		<?php
		if (isset($_POST['submit'])) {
			$check = "SELECT * FROM users";
			$result = mysqli_query($conn , $check);

			while ($row = mysqli_fetch_assoc($result) ) {
				if ($_POST['name']==$row['user_name'] && $_POST['password']==$row['password']) {
					header('Location: languages.php');
					$_SESSION['user'] = strip_tags($_POST['name']);
				}else {
					$answer = "Incorrect username or password. Please try again!!!";
				}
			}
			echo "<div class='center background col-lg-12'>".$answer."</div>";
		}
		?>
	</div>

		<!-- FORM FOR CREATING ACCOUNT AND LOGIN IN EXISTING ACCOUNT -->

	<div class="center">
		<form class="col-lg-12">
			<p>You don`t have Account?</p>
			<a href="create_acc.php" class="btn btn-default btn-primary"> CREATE ACCOUNT </a>
		</form>
	</div>
</body>
</html>