<div class="col-lg-12 footer">
	<div class="col-lg-3">
		<h2>User:  
			<span class="color">
				<?= $_SESSION['user'] ?>
			</span>
		</h2>
	</div>
	<div class="col-lg-2">
		<h2>Rank: <?= $_SESSION['rank'] ?></h2>
	</div>
	<div class="col-lg-2">
		<h2>Score: <?= $_SESSION['points'] ?></h2>
	</div>
</div>
</body>
</html>