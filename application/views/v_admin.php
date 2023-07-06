<div class="col-lg-4 col-7">
	<!-- small box -->
	<div class="small-box bg-info">
		<div class="inner">
			<h3><?= $total_pesanan_masuk ?></h3>

			<p>Pesanan Masuk</p>
		</div>
		<div class="icon">
			<i class="ion ion-bag"></i>
		</div>
		<a href="<?= base_url('admin/pesanan_masuk') ?>" class="small-box-footer">Info lebih lanjut <i class="fas fa-arrow-circle-right"></i></a>
	</div>
</div>

<div class="col-lg-4 col-7">
	<!-- small box -->
	<div class="small-box bg-success">
		<div class="inner">
			<h3><?= $total_barang ?></h3>

			<p>Barang</p>
		</div>
		<div class="icon">
			<i class="fas  fa-cubes"></i>
		</div>
		<a href="<?= base_url('barang') ?>" class="small-box-footer">Info lebih lanjut <i class="fas fa-arrow-circle-right"></i></a>
	</div>
</div>

<div class="col-lg-4 col-7">
	<!-- small box -->
	<div class="small-box bg-danger">
		<div class="inner">
			<h3><?= $total_kategori ?></h3>

			<p>Kategori</p>
		</div>
		<div class="icon">
			<i class="fas fa-list"></i>
		</div>
		<a href="<?= base_url('kategori') ?>" class="small-box-footer">Info lebih lanjut <i class="fas fa-arrow-circle-right"></i></a>
	</div>
</div>

