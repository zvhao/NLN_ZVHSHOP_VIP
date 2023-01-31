<?php
$lastMonth = date("Y-m", strtotime('-1 month', strtotime(date('Y-m'))));
?>
<form action="" method="post" class="">
	<div class="row">
		<div class="col-3 mb-3 p-3">
			<a href="<?= _WEB_ROOT . '/user' ?>" style="height: 200px;" class="d-flex p-3 align-items-center justify-content-around rounded-pill  text-center bg-success">
				<i class="display-3 fa-solid fa-coins"></i>
				<h5 class="display-5 m-0">DOANH THU <br> THÁNG TRƯỚC (<?php echo $lastMonth ?>)<p class="m-0"><?= numberFormat($data['statisticalBillByMonth']['sumBill']) ?></p>
					<p class="pt-2"><?= $data['statisticalBillByMonth']['countBill'] ?> ĐƠN HÀNG</p>
				</h5>
			</a>
		</div>
	</div>
	<div>
		<div class="d-flex mt-3">

			<div class="mr-3">
				<label for="date_start" class="form-label">Thời gian bắt đầu</label>
				<input type="date" name="date_start" id="date_start" class="form-control" value="<?php
																									if (isset($_POST['btn-statistical'])) {
																										echo $_POST['date_start'];
																									} else echo date("Y-m-01"); ?>">
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

	<div class="my-4 d-flex ">
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
							<button type="button" class="btn btn-primary btn-detail-bill" data-id="<?= $bill['id'] ?>" data-toggle="modal" data-target="#modal">Xem</button>




						</td>

					</tr>


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


	<!-- Modal -->
	<div class="modal fade" id="modal" tabindex="-1" aria-labelledby="modalLabel" aria-hidden="true">
		<div class="modal-dialog" style="max-width: 75%;">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modalLabel">ĐƠN HÀNG</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body row" style="font-size: 1rem;">
					<div class="d-flex flex-column col-5 bill-info-user">
					</div>

					<div class="col-7 bill-info-product">
						<div class="checkout-heading mb-3 text-primary font-weight-bold" style="font-size: 1.6rem;">Thông tin đơn hàng</div>
						<div class="bill-info-pro-list" style=" max-height: 40vh; overflow-y: auto;">

						</div>
						<div class="bill-info-bill row border-top border-primary pt-3 pr-3">

						</div>

					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>


<?php
}
?>