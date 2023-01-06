$(function (param) {
	const modalContent = $('.modal-content').html()
	// console.log(modalContent);
	var btnDetailBill = document.querySelectorAll('.btn-detail-bill')
	// var rs = Object.entries(btnDetailBill)
	var idDetailBill
	btnDetailBill.forEach(element =>
		element.onclick = function(e) {
			idDetailBill = e.target.dataset.id;
			e.preventDefault()
			console.log(idDetailBill);
	
		});
})


