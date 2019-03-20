<?php
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
		
	<!-- LOGO, HOME BUTTON -->

	<div class="center">
		<a href="index.php"><img src="img/hangman.png" alt="HANGMAN" class="logo"></a>
		<h2>Create your account</h2>
	</div>
	<div>

		<!-- FORM FOR CREATING NEW USERS -->

		<form action="" method="post" class="form-horizontal col-lg-4 col-lg-offset-4 center">
			<input type="name" name="name" placeholder="Name" class="form-control">
			<p></p>
			<input type="password" name="password" placeholder="Password" class="form-control">
			<p></p>
				<input type="submit" name="submit" value="Create" class="btn btn-default">

			<!-- CREATE NEW ROW IN THE TABLE 'USER' (NEW USER) -->

			<?php
			if (isset($_POST['submit'])) {
				$name=$_POST['name'];
				$password=$_POST['password'];

				$insert_user="INSERT INTO `users`(`user_name`, `password`) VALUES ('$name','$password')";
				$result = mysqli_query($conn , $insert_user);
			
				if($result){
					echo "<h2> Success! </h2>";
				?>
				<a href="index.php" class="btn btn-default">Back</a>
				<?php
				}
			}
			?>
		</form>
	</div>
</body>
</html>