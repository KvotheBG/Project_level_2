<?php
include 'include/header.php';
session_start();
$win_end 		= $_SESSION['user'];
$user_query		= "SELECT `user_id` FROM `users` WHERE `user_name`='$win_end'";
$user_result	= mysqli_query($conn, $user_query);
$row 			= mysqli_fetch_assoc($user_result);

$read_query 	= "SELECT points, word, date FROM history WHERE user_id=".$row['user_id']." LIMIT 8";
$result 		= mysqli_query($conn, $read_query);
?>
<?php if(mysqli_num_rows($result) > 0){ ?>
<div class="col-lg-6 col-lg-offset-3">
	<table class="table">
		<thead>
			<tr>
				<th>Number</th>
				<th>Date</th>
				<th>Word</th>
				<th>Points</th>
			</tr>
		</thead>
		<tbody>

		<!-- Reading the info from the DB (this in the table)-->

			<?php
			$n=0;
			while($row_points = mysqli_fetch_assoc($result)){ 
			$n ++;
			?>
			<tr>
				<td><?= $n ?></td>
				<td><?= $row_points['date'] ?></td>
				<td><?= $row_points['word'] ?></td>
				<td><?= $row_points['points'] ?></td>
			</tr>
				<?php } ?>
		</tbody>
	</table>
</div>
<?php
}
include 'include/footer.php';
?>