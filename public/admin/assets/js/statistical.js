$(function () {
	// const modalContent = $('.modal-content').html()
	// console.log(modalContent);
	var btnDetailBill = document.querySelectorAll('.btn-detail-bill')
	// var rs = Object.entries(btnDetailBill)
	var idDetailBill
	const modal = $('#Modal')
	console.log(modal);
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
					Swal.fire({
						width: 1200,
						html: `


			

							<div class="modal-body">
								<div class="row" style="font-size: 1rem;">
									<div class="d-flex flex-column col-6">
									<div>
										<div class="checkout-heading mb-3 text-primary font-weight-bold" style="font-size: 1.6rem;" >Thông tin khách hàng</div>
											<div class="pl-5">
												<p>Họ và tên: <span class="">${dataNew.fullname}</span></p>
												<p>Số điện thoại: <span class="">${dataNew.tel}</span> </p>
												<p>Email: <span class="">${dataNew.email}</span> </p>
												<p>Địa chỉ nhận hàng: <span class="">${dataNew.address}</span> </p>
												<p>Ghi chú: ${dataNew.note}</p>
											</div>
										</div>
										<div>
											<div class="checkout-heading mb-3 text-primary font-weight-bold" style="font-size: 1.6rem;" >Thông tin tài khoản</div>
											<div  class="pl-5">
											<p>ID: <span class="">${dataNew.user_id}</span></p>
											<p>Họ và tên: <span class="">${dataNew.name_user}</span></p>
										<p>Email: <span class="">${dataNew.email_user}</span> </p>
											
											</div>

										</div>
			
									</div>
									<div class="col-6 bill-info">
										<div class="checkout-heading mb-3 text-primary font-weight-bold" style="font-size: 1.6rem;" >Thông tin đơn hàng</div>
						` 
					})

				}
			});

		});
})



