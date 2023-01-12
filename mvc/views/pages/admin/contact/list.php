<div>
	<div class="row font-weight-bold">
		<div class="col-6">
			<div class="row">
				<h4 class="col-5 font-weight-bold">Thông tin liên hệ</h4>
				<h4 class="col-7 font-weight-bold">Nội dung liên hệ</h4>
			</div>
		</div>
		<h4 class="col-6 font-weight-bold">Phản hồi liên hệ</h4>
	</div>
	<hr>
	<?php
	if (isset($data['contacts']) && $data['contacts']) {
		foreach ($data['contacts'] as $contact) {
	?>
			<p style="color: #777"><?= $contact['created_at'] ?></p>
			<form action="<?= _WEB_ROOT . '/contact/respond' ?>" method="POST" data-id="<?= $contact['id'] ?>">
				<div class="row p-2">
					<div class="col-6">
						<div class="row mt-3">
							<div class="col-5">
								<p><?= $contact['name'] ?></p>
								<p><?= $contact['email'] ?></p>
								<p><?= $contact['phone'] ?></p>
							</div>
							<div class="col-7 border-left border-primary pr-3">
								<?= $contact['content'] ?>

							</div>
						</div>
					</div>
					<div class="col-6">
						<fieldset <?= $contact['responded'] ? 'disabled' : '' ?>>
							<p class="pl-3">Phản hồi đến email: <?= $contact['email'] ?></p>
							<textarea class="form-control" name="respond" id="" rows="3" data-id="<?= $contact['id'] ?>"></textarea>
							<div class="d-flex justify-content-end align-items-center mt-3">
								<i class="mr-3 text-primary icon-check <?= $contact['responded'] ? 'fa-regular fa-circle-check' : '' ?>" style="font-size: 1.8rem;"></i>
								<input type="hidden" name="id_contact" value="<?= $contact['id'] ?>">
								<input type="hidden" name="email" value="<?= $contact['email'] ?>">
								<input type="hidden" name="name" value="<?= $contact['name'] ?>">
								<input type="hidden" name="content" value="<?= $contact['content'] ?>">
								<button type="submit" class="btn btn-primary" name="btn_respond" data-id="<?= $contact['id'] ?>"><?= $contact['responded'] ? 'Đã phản hồi' : 'Gửi phản hồi' ?></button>
							</div>
						</fieldset>

					</div>
				</div>
			</form>
			<hr>
	<?php
		}
	}
	?>

</div>