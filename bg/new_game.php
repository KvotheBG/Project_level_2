<?php
include 'include/header.php';
session_start();

// picking word from the database

$_SESSION['random'] = rand(1 , 64);

// array for the incoming letters $_SESSION['letterXX']

$_SESSION['letterXX']=[NULL];
$_SESSION['moves_left']=7;
$_SESSION['num']=0;

$leaderboard_query= "SELECT users.user_name, SUM(history.points) AS points FROM users JOIN history ON history.user_id=users.user_id GROUP BY users.user_name ORDER BY points DESC";
$leaderboard_result=mysqli_query($conn, $leaderboard_query);


$n=0;
while($row_points = mysqli_fetch_assoc($leaderboard_result)){ 
	$n ++;
	if ($row_points['user_name']==$_SESSION['user']) {
		$_SESSION['rank']=$n;
		$_SESSION['points']=$row_points['points'];
		break;
		// if u are new player
	}else{
		$_SESSION['rank']=0;
		$_SESSION['points']=0;
	}
}		
?>

<!-- this are the categories -->

<div class="col-md-12 new_game">
	<div class="vertical">
		<a href="read.php?new_game=country"><img src="img/country.png"></a>
	</div>
	<div class="vertical">
		<a href="read.php?new_game=city"><img src="img/capital.png"></a>
	</div>
	<div class="vertical">
		<a href="read.php?new_game=animal"><img src="img/animal.png"></a>
	</div>
</div>
<?php
include 'include/footer.php';
