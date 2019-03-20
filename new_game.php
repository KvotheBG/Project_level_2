<?php
include 'include/header.php';
session_start();

$_SESSION['random'] = rand(1 , 132);
$_SESSION['letterXX']=[NULL];
?>
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
