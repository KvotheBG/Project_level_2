<?php
include 'database.php';
?>
<!DOCTYPE html>
<html >
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" integrity="sha384-PmY9l28YgO4JwMKbTvgaS7XNZJ30MK9FAZjjzXtlqyZCqBY6X6bXIkM++IkyinN+" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="../style/style.css">
	<title>HANGMAN</title>
</head>
<body>
<div>
	<div class="img-btn">
		<a href="new_game.php">
			<img src="img/new_game.png" alt="new game">
		</a>
	</div>
	<div class="img-btn">
		<a href="leaderboard.php">
			<img src="img/leader_board.png" alt="leader board">
		</a>
	</div>
	<div class="img-btn">
		<a href="history.php">
			<img src="img/history.png" alt="history">
		</a>
	</div>
	<div class="img-btn logout">
		<a href="../logout.php">
			<img src="img/logout.png" alt="logout">
		</a>
	</div>
</div>