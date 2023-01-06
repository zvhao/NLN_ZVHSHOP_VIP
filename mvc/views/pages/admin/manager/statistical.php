<form action="" method="post" class="">
	<div>
		<div class="d-flex mt-3">

			<div class="mr-3">
				<label for="date_start" class="form-label">Thời gian bắt đầu</label>
				<input type="date" name="date_start" id="date_start" class="form-control" value="<?php
																									if (isset($_POST['btn-statistical']))
																										echo $_POST['date_start']; ?>">
			</div>

			<div class="mr-5">
				<label for="date_end" class="form-label">Thời gian kết thúc</label>
				<input type="date" name="date_end" id="date_end" class="form-control" value="<?php
																								if (isset($_POST['btn-statistical'])) {
																									echo $_POST['date_end'];
																								} else echo date("Y-m-d"); ?>">

			</div>
			<div class="d-flex align-items-end">

				<button type="submit" class="btn btn-primary px-5" name="btn-statistical">Thống kê</button>
				<span class="text-danger ml-4">* Chỉ thống kê các đơn hàng đã giao</span>
			</div>
		</div>
		<div>

		</div>
</form>





<?php
// show_array($_SESSION);
if (isset($_SESSION['msg'])) {
?>
	<div class="mt-2">
		<span class="text-danger"><?= $_SESSION['msg']; ?></span>
	</div>
<?php
}

if (isset($_POST['btn-statistical']) && !isset($_SESSION['msg'])) {
?>
	<div class="d-flex">

	</div>
	<div class="mt-4 d-flex ">
		<h4 class=" mr-5"><?= 'Thống kê từ ngày ' . date("d-m-Y", strtotime($_POST['date_start'])) . ' đến ' . date("d-m-Y", strtotime($_POST['date_end'])) . ' có ' . $data['countBillStatistical'] . ' đơn hàng' ?> </h4>
		<h4>Tổng doanh thu là <b class="text-primary"><?= numberFormat($data['sumBillStatistical']) ?></b></h4>
	</div>

	<table class="table table-striped table_bill">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">TÀI KHOẢN</th>
				<th scope="col">THANH TOÁN</th>
				<th scope="col">TỔNG ĐƠN HÀNG</th>
				<th scope="col" colspan="2">THỜI GIAN TẠO</th>
			</tr>
		</thead>
		<tbody>
			<?php
			if (!empty($data['billsNew'])) {
				foreach ($data['billsNew'] as $bill) {

			?>
					<tr>
						<th scope="row" class="align-middle"><?php echo $bill['id'] ?></th>
						<td class="align-middle"><?= $bill['user_id'] . "</br>" ?>
							<p style="width:150px; overflow: hidden; white-space: wrap; text-overflow:ellipsis; margin: 0;"><?= $bill['email_user'] . "</br>" . $bill['name_user']; ?></p>
						</td>
						<td class="align-middle"><?= $bill['method'] ?></td>
						<td class="align-middle text-right pr-5"><?= numberFormat($bill['total']) ?></td>
						<td class="align-middle"><?php echo $bill['created_at'] ?></td>
						<td class="align-middle">
							<input type="hidden" name="bill" value="<?= $bill['id'] ?>">
							<button type="submit" class="btn btn-primary btn-detail-bill" data-toggle="modal" data-target="#Modal" data-id="<?= $bill['id'] ?>">Xem</button>




						</td>

					</tr>

					<!-- Modal -->

				<?php


				}
			} else {
				?>
				<tr>
					<td colspan="8" class="text-center">KHÔNG CÓ DỮ LIỆU</td>
				</tr>
			<?php
			}

			?>
		</tbody>
	</table>


	<div class="modal fade" id="Modal" tabindex="-1" aria-labelledby="ModalLabel" aria-hidden="true">
		<div class="modal-dialog" style="max-width: 75%;">

			<div class="modal-content">

				<div class="modal-header">
					<h5 class="modal-title" id="ModalLabel">Chi tiết đơn hàng</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body fs-3">
					<div class="row" style="font-size: 1rem;">
						<div class="d-flex flex-column col-6">
							<div class="checkout-heading mb-3">Thông tin khách hàng</div>
							<div>
								<p>Họ và tên: <span class=""><?= $bill['name_user'] ?></span></p>
								<p>Số điện thoại: <span class=""><?= $bill['tel'] ?></span> </p>
							</div>
							<p>Email: <span class=""><?= $bill['email_user'] ?></span> </p>
							<p>Địa chỉ nhận hàng: <span class=""><?= $bill['address'] ?></span> </p>
							<p>Ghi chú: <?= $bill['note'] ?></p>

						</div>
						<div class="col-6">
							<div class="checkout-heading">Thông tin đơn hàng</div>

							<?php
							if ($bill['detail']) {
								foreach ($bill['detail'] as $item) {
							?>
									<div class="row checkout-item-pro">
										<p class="col-2 m-0"><img width="60px" src="<?= _PATH_IMG_PRODUCT . $item['image'] ?>" alt=""></p>
										<div class="col-7">

											<p class="checkout-item-name"><?= $item['name_pro'] ?></p>
											<strong> x <?= $item['qty'] ?></strong>
										</div>
										<p class="m-0 col-3 d-flex justify-content-end adivgn-items-center  fw-bold"><?= numberFormat($item['price']) ?></p>
									</div>

							<?php
								}
							}
							?>

							<div class="fs-2 text-right mt-3">
								<span>Tổng giá: <?= numberFormat($item['price']) ?></span>
								<span class=" fw-bold"></span>
							</div>
							<div class="row my-3">
								<div class="col text-right">Phương thức thanh toán: <span class=""><?= $bill['method'] ?></span></div>
							</div>

						</div>
					</div>
				</div>

			</div>
		</div>
	</div>


<?php
}
?>