<div class="modal-dialog" style="max-width: 75%;">

<div class="modal-content">

	<div class="modal-header">
		<h5 class="modal-title" id="ModalLabel">Chi tiết đơn hàng</h5>
		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>
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
			</div>
`);

dataNew.detail.forEach(e => {
document.querySelector('.bill-info').innerHTML += `
	<div class="row checkout-item-pro">
		<p class="col-2 m-0"><img width="60px" height="60px" src="http://localhost/ZVHSHOP/upload/product/${e.image}" alt="" style="object-fit: cover; object-position: center;" ></p>
		<div class="col-7">

			<p class="checkout-item-name">${e.name_pro}</p>
			<strong> x ${e.qty}</strong>
		</div>
		<p class="m-0 col-3 d-flex justify-content-end align-items-center font-weight-bold text-primary">${e.price.toLocaleString('de-DE') + "₫"}</p>
	</div>

`

});
document.querySelector('.bill-info').innerHTML += `
<div class=" text-right mt-3 border-top border-primary pt-2" style="font-size: 1.2rem;">
	<span class="font-weight-bold text-primary">Tổng giá: ${dataNew.total.toLocaleString('de-DE') + "₫"}</span>
	<span class=" font-size-bold"></span>
</div>
<div class="row my-3">
	<div class="col text-right">Phương thức thanh toán: <span class="">${dataNew.method}</span></div>
</div>

`
document.querySelector('#Modal').innerHTML += `
</div >
</div >

</div >
</div >









					dataNew.detail.forEach(e => {
						document.querySelector('.bill-info').innerHTML += `
	<div class="row checkout-item-pro">
		<p class="col-2 m-0"><img width="60px" height="60px" src="http://localhost/ZVHSHOP/upload/product/${e.image}" alt="" style="object-fit: cover; object-position: center;" ></p>
		<div class="col-7">

			<p class="checkout-item-name">${e.name_pro}</p>
			<strong> x ${e.qty}</strong>
		</div>
		<p class="m-0 col-3 d-flex justify-content-end align-items-center font-weight-bold text-primary">${e.price.toLocaleString('de-DE') + "₫"}</p>
	</div>

`

					});
					document.querySelector('.bill-info').innerHTML += `
<div class=" text-right mt-3 border-top border-primary pt-2" style="font-size: 1.2rem;">
	<span class="font-weight-bold text-primary">Tổng giá: ${dataNew.total.toLocaleString('de-DE') + "₫"}</span>
	<span class=" font-size-bold"></span>
</div>
<div class="row my-3">
	<div class="col text-right">Phương thức thanh toán: <span class="">${dataNew.method}</span></div>
</div>

`










