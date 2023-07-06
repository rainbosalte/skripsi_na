<div class="col-md-12">
	<div class="card card-primary">
		<div class="card-header">
			<h3 class="card-title">Data Pengguna</h3>

			<div class="card-tools">
				<button data-toggle="modal" data-target="#add" type="button" class="btn btn-primary btn-sm"><i class="fas fa-plus"></i> Tambah</button>
			</div>
			<!-- /.card-tools -->
		</div>
		<!-- /.card-header -->
		<div class="card-body">
			<?php
			if ($this->session->flashdata('pesan')) {
				echo '<div class="alert alert-success alert-dismissible">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<h5><i class="icon fas fa-check"></i>';
				echo $this->session->flashdata('pesan');
				echo '</h5></div>';
			}


			?>
			<table class="table table-bordered" id="example1">
				<thead class="text-center">
					<tr>
						<th>No</th>
						<th>Nama User</th>
						<th>Username</th>
						<th>Password</th>
						<th>Aksi</th>
					</tr>
				</thead>
				<tbody>
					<?php $no = 1;
					foreach ($user as $key => $value) { ?>
						<tr>
							<td class="text-center"><?= $no++; ?></td>
							<td><?= $value->nama_user ?></td>
							<td class="text-center"><?= $value->username ?></td>
							<td class="text-center"><?= $value->password ?></td>
							<td class="text-center">
							<button class="btn btn-warning btn-sm" data-toggle="modal" data-target="#edit<?= $value->id_user ?>"><i class="fas fa-edit"></i></button>

								<button class="btn btn-danger btn-sm" data-toggle="modal" data-target="#delete<?= $value->id_user ?>"><i class="fas fa-trash"></i></button>
							</td>
						</tr>
					<?php } ?>
				</tbody>
			</table>
		</div>
		<!-- /.card-body -->
	</div>
	<!-- /.card -->
</div>


<!--modal edit -->
<!--modal delete -->
<?php foreach ($user as $key => $value) { ?>
	<div class="modal fade" id="delete<?= $value->id_user?>">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Hapus <?= $value->nama_user ?></h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">


					Apakah Anda Yakin Ingin Menghapus Data Ini...?


				</div>
				<div class="modal-footer justify-content-between">
					<button type="button" class="btn btn-default" data-dismiss="modal">Kembali</button>
					<a href="<?= base_url('user/delete/' . $value->id_user) ?>" class="btn btn-primary">Hapus</a>
				</div>

			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
<?php } ?>



<!--modal add -->
<div class="modal fade" id="add">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">Tambah Pengguna</h4>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">

				<?php
				echo form_open('user/add');
				?>

				<div class="form-group">
					<label>Nama Pengguna</label>
					<input type="text" name="nama_user" class="form-control" placeholder="Nama user" required>
				</div>

				<div class="form-group">
					<label>Username</label>
					<input type="text" name="username" class="form-control" placeholder="Username" required>
				</div>

				<div class="form-group">
					<label>Password</label>
					<input type="text" name="password" class="form-control" placeholder="Passsword" required>
				</div>

			</div>
			<div class="modal-footer justify-content-between">
				<button type="button" class="btn btn-default" data-dismiss="modal">Kembali</button>
				<button type="submit" class="btn btn-primary">Simpan</button>

			</div>
			<?php
			echo form_close();
			?>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>



<!--modal edit -->
<?php foreach ($user as $key => $value) { ?>
	<div class="modal fade" id="edit<?= $value->id_user ?>">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Edit Pengguna</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">

					<?php
					echo form_open('user/edit/' . $value->id_user);
					?>

					<div class="form-group">
						<label>Nama Pengguna</label>
						<input type="text" name="nama_user" value="<?= $value->nama_user ?>" class="form-control" placeholder="Nama user" required>
					</div>

					<div class="form-group">
						<label>Username</label>
						<input type="text" name="username" value="<?= $value->username ?>" class="form-control" placeholder="Nama user" required>
					</div>

					<div class="form-group">
						<label>Nama Pengguna</label>
						<input type="text" name="password" value="<?= $value->password ?>" class="form-control" placeholder="Nama user" required>
					</div>

				</div>
				<div class="modal-footer justify-content-between">
					<button type="button" class="btn btn-default" data-dismiss="modal">Kembali</button>
					<button type="submit" class="btn btn-primary">Simpan</button>

				</div>
				<?php
				echo form_close();
				?>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
<?php } ?>
