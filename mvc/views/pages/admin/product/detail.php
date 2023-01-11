<div class="mx-4 my-2">
	<div class="row">
		<div class="col-2">
			<img style=" margin-top: 5px; max-width: 100%; object-fit: cover; object-position: center;" class="img-thumbnail" src="<?php echo _PATH_IMG_PRODUCT . $data['product']['image'] ?>"></td>
		</div>
		<div class="col-10">
			<p name="id_pro">#<?= $data['product']['id'] ?></p>
			<p class="" style="font-size: 1.4rem;"><?= $data['product']['name'] ?></p>
			<div class=" my-3">

				<span class="mr-3  "><?= $data['avgRating'] ?></span>
				<span class=" mr-5">
					<?= getRatingStarRound($data['avgRating']) ?>
				</span>

				<span class="mr-5">
					<i class="fs-2 fa-solid fa-heart px-2"></i>
					<span class=""><span class=""><?= $data['favorites'] ?></span> lượt thích</span>
				</span>
				<span class="mr-5"><span class=""><?= $data['sold'] ?></span> đã bán</span>
				<span class=""><span class=""><?= $data['countComment'] ?></span> đánh giá</span>
			</div>
			<p class="" style="font-size: 1.4rem;"><?php numberFormat($data['product']['price']) ?></p>
		</div>
	</div>
	<div class="table-comments mt-4">
		<h4>ĐÁNH GIÁ BÌNH LUẬN</h4>
		<div class="row">
			<div class="col-3">
				<p class="mb-0 text-center lh-1"><span class="" style="font-size: 1.3rem;"><?= $data['avgRating'] ?></span> trên 5</p>
				<p class="icon-main text-center">
					<?= getRatingStarRound($data['avgRating']) ?>
				</p>
			</div>
			<div class="col-9 d-flex align-items-center">
				<span class=""><span class=""><?= $data['countComment'] ?></span> đánh giá</span>

			</div>
		</div>
		<hr>
		<?php
		if (isset($data['comments']) && $data['comments']) {
			foreach ($data['comments'] as $item) {
		?>
				<div class="">
					<div class="row ">
						<div class="col-1">
							<img class=" rounded-circle" src="<?php if (!empty($item['avatar'])) {
																	echo _PATH_AVATAR . $item['avatar'];
																} else echo _PATH_IMG_PUBLIC . '/profile.jpg'; ?> ?> " alt="" style="width: 60px; height: 60px; max-width: 100%; object-fit: cover; object-position: center; margin-bottom: 5px;">
						</div>
						<div class="col-11 ">
							<span class="fs-3" style="white-space: nowrap;"><?= $item['name'] ?></span>
							<p class="">
								<?php getRatingStar($item['rating']) ?>
							</p>
						</div>
					</div>
					<div class="row">
						<div class="col-1"></div>
						<div class="col-11">
							<p class="" style="color: #666"><?= $item['created_at'] ?></p>
							<p class=""><?= $item['comment'] ?></p>
						</div>
					</div>
					<hr>
				</div>

		<?php
			}
		}
		?>

	</div>
</div>