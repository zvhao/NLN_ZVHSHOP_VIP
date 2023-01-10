$(function () {
	// const modalContent = $('.modal-content').html()
	// console.log(modalContent);
	var btnDetailBill = document.querySelectorAll('.btn-detail-bill')
	// var rs = Object.entries(btnDetailBill)
	var idDetailBill
	btnDetailBill.forEach(element =>
		element.onclick = function (e) {
			idDetailBill = e.target.dataset.id;
			e.preventDefault()
			console.log(idDetailBill);
			var formData = {
				id: idDetailBill
			}

			$.ajax({
				type: "POST",
				url: "http://localhost/ZVHSHOP/statistical/show_detail",
				data: formData,
				// dataType: "dataType",
				success: function (data) {
					dataNew = JSON.parse(data)
					console.log(dataNew);

					document.querySelector('.bill-info-user').innerHTML = `
						<div>
							<div class="checkout-heading mb-3 text-primary font-weight-bold" style="font-size: 1.6rem;">Thông tin khách
								hàng</div>
							<div class="pl-5">
								<p>Họ và tên: <span class="">${dataNew.fullname}</span></p>
								<p>Số điện thoại: <span class="">${dataNew.tel}</span> </p>
								<p>Email: <span class="">${dataNew.email}</span> </p>
								<p>Địa chỉ nhận hàng: <span class="">${dataNew.address}</span> </p>
								<p>Ghi chú: ${dataNew.note}</p>
							</div>
						</div>
						<div>
							<div class="checkout-heading mb-3 text-primary font-weight-bold" style="font-size: 1.6rem;">Thông tin tài
								khoản</div>
							<div class="pl-5">
								<p>ID: <span class="">${dataNew.user_id}</span></p>
								<p>Họ và tên: <span class="">${dataNew.name_user}</span></p>
								<p>Email: <span class="">${dataNew.email_user}</span> </p>
				
							</div>
						</div>
					`
					document.querySelector('.bill-info-pro-list').innerHTML = ''
					dataNew.detail.forEach(e => {

						document.querySelector('.bill-info-pro-list').innerHTML += `
						<div class="row checkout-item-pro" style="width: 95%!important;">
							<p class="col-2 m-0"><img width="60px" height="60px" src="http://localhost/ZVHSHOP/upload/product/${e.image}" alt="" style="object-fit: cover; object-position: center;" ></p>
							<div class="col-7">
					
								<p class="checkout-item-name">${e.name_pro}</p>
								<strong> x ${e.qty}</strong>
							</div>
							<p class="m-0 col-3 d-flex justify-content-end align-items-center font-weight-bold text-primary">${e.price.toLocaleString('de-DE') + "₫"}</p>
						</div>
						`
					});

					document.querySelector('.bill-info-bill').innerHTML = `
							<div class="text-right border-top border-primary pt-3 pr-3" style="font-size: 1.2rem;">
								<span class="font-weight-bold text-primary">Tổng giá: ${dataNew.total.toLocaleString('de-DE') + "₫"}</span>
								<p class="py-2">Phương thức thanh toán: <span class="text-primary">${dataNew.method}</span></p>
							</div>

						`






				}

			});

		});
})



