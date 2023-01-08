<?php
redirectToDetailBill($data['listIdBill'])

// show_array($_SESSION);

?>

<div class="grid wide mb-5">
	<nav>
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?= _WEB_ROOT . '/home' ?>">Trang chủ</a></li>
			<li class="breadcrumb-item active"><?= $data['title'] ?></li>
		</ol>
	</nav>

	<div>
		<h2 class="text-center text-uppercase text-color-main">Cảm ơn bạn đã đặt hàng, <b class="text-danger">hãy kiểm tra thật kĩ trước khi rời khỏi</b></h2>

		<div class="row" style="font-size: 1.6rem;">
			<div class="d-flex flex-column col-6">
				<div class="checkout-heading mb-3">Thông tin khách hàng</div>
				<div>
					<p>Họ và tên: <span class="text-color-main"><?= $data['bill']['fullname'] ?></span></p>
					<p>Số điện thoại: <span class="text-color-main"><?= $data['bill']['tel'] ?></span> </p>
				</div>
				<p>Email: <span class="text-color-main"><?= $data['bill']['email'] ?></span> </p>
				<p>Địa chỉ nhận hàng: <span class="text-color-main"><?= $data['bill']['address'] ?></span> </p>
				<p>Ghi chú: <?= $data['bill']['note'] ?: '...' ?></p>
				<h2 class="mt-5">Nếu có thắc mắc, vấn đề về đơn hàng, hãy
					<a class="btn btn-main fs-4" href="<?= _WEB_ROOT . '/contact' ?>">LIÊN HỆ</a>
				</h2>
			</div>
			<div class="col-6">
				<div class="checkout-heading">Thông tin đơn hàng</div>
				<?php
				if (isset($data['detailBill']) && $data['detailBill']) {

					foreach ($data['detailBill'] as $item) {
				?>
						<li class="row checkout-item-pro">
							<p class="col-2 m-0"><img width="60px" src="<?= _PATH_IMG_PRODUCT . $item['image'] ?>" alt=""></p>
							<div class="col-7">

								<p class="checkout-item-name"><?= $item['name_pro'] ?></p>
								<strong> x <?= $item['qty'] ?></strong>
							</div>
							<p class="m-0 col-3 d-flex justify-content-end align-items-center text-color-main fw-bold"><?= numberFormat($item['sub_total']) ?></p>
						</li>
				<?php
					}
				}
				?>
				<div class="fs-2 text-end mt-3">
					<span>Tổng giá:</span>
					<span class="text-color-main fw-bold">
						<?php if ($data['bill']) {
							echo numberFormat($data['bill']['total']);
						}
						?>
					</span>
				</div>
				<div class="row my-3">
					<div class="col text-start">Trạng thái đơn hàng: <span class="text-color-main"><?= getStatusBill($data['bill']['status']) ?></div>
					<div class="col text-end">Phương thức thanh toán: <span class="text-color-main"><?= $data['bill']['method'] ?></span></div>
				</div>
				<?= getMethodPayment($data['bill']['method']) ?>
			</div>
		</div>

	</div>

</div>