<?php
include 'include/header.php';
session_start();

$new_game		= $_GET['new_game'];

$read_query 	= "SELECT `$new_game` FROM `categories_eng` WHERE category_id=".$_SESSION['random'];
$read_result 	= mysqli_query($conn, $read_query);
$row 			= mysqli_fetch_assoc($read_result);

// this is the word

$word = str_split($row[$new_game]);

// array from all input letters

if (empty($_POST['letter'])) {
	
}else{
	$_SESSION['letterXX'][]=$_POST['letter'];
}

// counting our choises in the input form

$end_game=8;
$_SESSION['corect']=0;
if (count($_SESSION['letterXX'])>=$end_game) {
	$_SESSION['letterXX']=[NULL];
	$_SESSION['corect']=[NULL];
}

$moves_left=(7-(count($_SESSION['letterXX']))+$_SESSION['corect']);

// the hiden word

$hide = [];

if (empty($hide)) {
	for ($i=0; $i < count($word); $i++) { 
		$hide[$i] = " _ ";
	}
}

if (isset($_POST["letter"])) {
	
	for ($i=0; $i < count($word); $i++) { 
		for ($j=0; $j < count($_SESSION['letterXX']); $j++) { 
			if ($_SESSION['letterXX'][$j]==$word[$i]) {
				$hide[$i]=$word[$i];
				$_SESSION['corect'] ++;
			}
		}
	}	
}
echo "<p></p>";
$word_hide= implode("", $hide);
$word_str = implode("", $word);
var_dump($_SESSION['corect']);
?>
<div class="col-lg-12 center" >
	<div class="">
		<h3> Moves left: <?= $moves_left ?> </h3>
		<h2> <?= $word_hide ?> </h2>
		<form action="" method="post">
			<?php
			$understrike="_";
			$day = date("Y-m-d H:i:s");
			$win=strpos($word_hide, $understrike);
			if ($win===false) { 
				$win_end 		= $_SESSION['user'];
				$points			= $moves_left+10;

				$user_query		= "SELECT `user_id` FROM `users` WHERE `user_name`='$win_end'";

				$user_result	= mysqli_query($conn, $user_query);
				$row_win		= mysqli_fetch_assoc($user_result);

				$game_query 	= "INSERT INTO `history`(`user_id`, `points`, `word`, `date`) VALUES (".$row_win['user_id'].",".$points.", '".$word_str."', '".$day."')";
				$game_result	= mysqli_query($conn, $game_query);?>

				<img src="img/win.png" alt="win">

				<?php
			}else { 
				if ($moves_left==0) {
				$win_end 		= $_SESSION['user'];
				$points			= $moves_left;

				$user_query		= "SELECT `user_id` FROM `users` WHERE `user_name`='$win_end'";

				$user_result	= mysqli_query($conn, $user_query);
				$row_win		= mysqli_fetch_assoc($user_result);

				$game_query 	= "INSERT INTO `history`(`user_id`, `points`, `word`, `date`) VALUES (".$row_win['user_id'].",".$points.", '".$word_str."', '".$day."')";
				$game_result	= mysqli_query($conn, $game_query);?>
					<img src="img/lose.png" alt="lose">
					<?php
					var_dump($word_str);
				}else{ ?>
					
					<input type="text" size="1" name="letter">
					<input type="submit" name="submit">
					<?php 
				}
			}
				?>
		</form>
	</div>
</div>
<?php
include 'include/footer.php';
?>