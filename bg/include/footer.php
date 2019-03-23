<div class="col-lg-12 footer">
	<div class="col-lg-3">
		<h2>Име:  
			<span class="color">
				<?= $_SESSION['user'] ?>
			</span>
		</h2>
	</div>
	<div class="col-lg-3">
		<h2>Класиране: <?= $_SESSION['rank'] ?></h2>
	</div>
	<div class="col-lg-3">
		<h2>Резултат: <?= $_SESSION['points'] ?></h2>
	</div>
</div>
</body>
</html>