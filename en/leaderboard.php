<?php
include 'include/header.php';
session_start();

$leaderboard_query= "SELECT users.user_name, SUM(history.points) AS points FROM users JOIN history ON history.user_id=users.user_id GROUP BY users.user_name ORDER BY points DESC";
$leaderboard_result=mysqli_query($conn, $leaderboard_query);
?>
<div class="col-lg-6 col-lg-offset-3">
	<table class="table">
		<thead>
			<tr>
				<th>Number</th>
				<th>Name</th>
				<th>Points</th>
			</tr>
		</thead>
		<tbody>

			<!-- Reading the info from the DB (this in the table)-->

			<?php
			$n=0;
			while($row_points = mysqli_fetch_assoc($leaderboard_result)){ 
				$n ++;	
				?>
				<tr>
					<td><?= $n ?></td>
					<td><?= $row_points['user_name'] ?></td>
					<td><?= $row_points['points'] ?></td>
				</tr>
	 		<?php } ?>
		</tbody>
	</table>
</div>
<?php
include 'include/footer.php';
?>