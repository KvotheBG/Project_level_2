<?php
include 'include/header.php';
session_start();

// this is the selected category

$new_game		= $_GET['new_game'];

// picking the word from the datebase

$read_query 	= "SELECT `$new_game` FROM `categories_bgr` WHERE category_id=".$_SESSION['random'];
$read_result 	= mysqli_query($conn, $read_query);
$row 			= mysqli_fetch_assoc($read_result);

// this is the word

$word = $row[$new_game];

// making work in utf8 for bulgarian letters

$len = mb_strlen($word, 'UTF-8');
$word_bg = [];
for ($i = 0; $i < $len; $i++) {
    $word_bg[] = mb_substr($word, $i, 1, 'UTF-8');
}

// every letter from the form come in the array $_SESSION['letterXX']

if (empty($_POST['letter'])) {
	
}else{
	$_SESSION['letterXX'][]=$_POST['letter'];
}

// the hiden word
// hiding the word

$hide = [];

if (empty($hide)) {
	for ($i=0; $i < count($word_bg); $i++) { 
		$hide[$i] = " _ ";
	}
}

// replacing the corct letter
// changing the moves left

if (isset($_POST["letter"])) {
	$counter=count($_SESSION['letterXX']);
	for ($i=0; $i < count($word_bg); $i++) { 
		for ($j=0; $j < $counter; $j++) { 
			if ($_SESSION['letterXX'][$j]==$word_bg[$i]) {
				$hide[$i]=$word_bg[$i];
				if ($counter==$j+1) {
					if ($_SESSION['letterXX'][$j]==$word_bg[$i]) {
						$_SESSION['num']++;
					}
				}
			}
		}
	}

	// if the letter is not in word
	// moves -1

	if ($_SESSION['num']==0) {
		$_SESSION['moves_left']--;
	}else{

		// if the letter is in the word

		$_SESSION['num']=0;
	}
}

// converting the hiden word and the word in string

$word_hide= implode("", $hide);

?>
<div class="col-lg-12 center" >
	<div class="col-lg-6">
		<div class="h2 h3">
			<h3> Moves left: <?= $_SESSION['moves_left'] ?> </h3>
			<h2> <?= $word_hide ?> </h2>
			<form action="" method="post">
				<?php
				$understrike="_";
				$day = date("Y-m-d H:i:s");
				$win=strpos($word_hide, $understrike);

				// if u win
				// if 'strpos' dont find '_' in the hiden word

				if ($win===false) { 
					$win_end 		= $_SESSION['user'];
					$points			= $_SESSION['moves_left']+10;

					// selecting the user id from database

					$user_query		= "SELECT `user_id` FROM `users` WHERE `user_name`='$win_end'";

					$user_result	= mysqli_query($conn, $user_query);
					$row_win		= mysqli_fetch_assoc($user_result);

					// inserting the information from the game in the history on database

					$game_query 	= "INSERT INTO `history`(`user_id`, `points`, `word`, `date`) VALUES (".$row_win['user_id'].",".$points.", '".$word."', '".$day."')";
					$game_result	= mysqli_query($conn, $game_query);?>

					<img src="img/win.png" alt="win">

					<?php
				}else { 

					// if moves left ($_SESSION['moves_left'])=0
					// u lose

					if ($_SESSION['moves_left']==0) {
					$win_end 		= $_SESSION['user'];
					$points			= $_SESSION['moves_left'];

					$user_query		= "SELECT `user_id` FROM `users` WHERE `user_name`='$win_end'";

					$user_result	= mysqli_query($conn, $user_query);
					$row_win		= mysqli_fetch_assoc($user_result);

					// inserting the information from the game in the history on database

					$game_query 	= "INSERT INTO `history`(`user_id`, `points`, `word`, `date`) VALUES (".$row_win['user_id'].",".$points.", '".$word."', '".$day."')";
					$game_result	= mysqli_query($conn, $game_query);?>

						<img src="img/lose.png" alt="lose">

						<?php

						// This show the word that this player dint find

						echo "<h2>";
						echo "Думата е: ".$word;
						echo "</h2>";
					}else{ 
						
						// form for the letters u pick
						// if u pick ones some letter will go red
						
						$a = ["А","Б","В","Г","Д","Е","Ж","З","И","Й","К","Л","М","Н","О","П","Р","С","Т","У","Ф","Х","Ц","Ч","Ш","Щ","Ъ","Ь","Ю","Я"];
						
						for ($i=0; $i < 30; $i++) { 
							if (in_array($a[$i], $_SESSION['letterXX'], true)) {
								?>
								<button type="submit" class="btn btn-danger" name="letter" value="<?= $a[$i] ?>"><?= $a[$i] ?></button>
								<?php
							}else{
								?>
								<button type="submit" class="btn btn-warning" name="letter" value="<?= $a[$i] ?>"><?= $a[$i] ?></button>
								<?php
							}
							$a++;
						}
						?>
						<?php 
					}
				}
				?>
			</form>
		</div>
	</div>

	<!-- hanging visualisation for every wrong move -->

	<div class="col-lg-6">
		<img class="hangman" src="img/0h.png" alt="hangman">

		<?php
		if ($_SESSION['moves_left']==6) {
			?>
			<img class="hangman" src="img/1h.png" alt="hangman">
			<?php
		}
		elseif ($_SESSION['moves_left']==5) {
			?>
			<img class="hangman" src="img/2h.png" alt="hangman">
			<?php
		}
		elseif ($_SESSION['moves_left']==4) {
			?>
			<img class="hangman" src="img/3h.png" alt="hangman">
			<?php
		}
		elseif ($_SESSION['moves_left']==3) {
			?>
			<img class="hangman" src="img/4h.png" alt="hangman">
			<?php
		}
		elseif ($_SESSION['moves_left']==2) {
			?>
			<img class="hangman" src="img/5h.png" alt="hangman">
			<?php
		}
		elseif ($_SESSION['moves_left']==1) {
			?>
			<img class="hangman" src="img/6h.png" alt="hangman">
			<?php
		}
		elseif ($_SESSION['moves_left']==0) {
			?>
			<img class="hangman" src="img/hangman.png" alt="hangman">
			<?php
		}
		?>
	</div>
</div>

<?php
include 'include/footer.php';
?>