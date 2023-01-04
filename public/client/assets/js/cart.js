// $(document).ready(function() {
// 	$(".num-order").change(function () { 
// 		var id = $(this).attr('data-id');
// 		var qty = $(this).val();
// 		var data = {id: id, qty: qty};

// 		$.ajax({
// 			url: 'cart/update_cart',
// 			method: 'POST',
// 			data: data,
// 			dataType: 'json',
// 			success: function(data) {
// 				$("#sub-total-"+id).text(data.sub_total);
// 				$("#total-price span").text(data.total);
// 				console.log(1);
// 			},
// 			error: function(xhr, ajaxOptions, throwError) {
// 				alert(xhr.status);
// 				alert(throwError);
// 			}
// 		});

// 	});
// })

var $url = window.location.href;

$(function () {
	// console.log(action);
	$(".num-order").change(function (e) {
		var action = document.querySelector('form.form-update-cart').action
		// e.preventDefault();
		var id = $(this).attr('data-id');
		var qty = $(this).val()
		var formPost = {
			id: id,
			qty: qty
		}
		// console.log(formPost.id);
		$.ajax({
			type: "POST",
			url: action,
			data: formPost,
			success: function (data) {
				var dataNew = JSON.parse(data);

				$("#sub_total-" + id).text(dataNew.sub_total.toLocaleString('de-DE') + "₫");
				$("#total-cart").text(dataNew.total.toLocaleString('de-DE') + "₫");
				$('.header-cart-notice').text(dataNew.num_order);
				$(`span[data-id='${id}']`).text(dataNew.qty);
			}
		});
		e.preventDefault();
	});


	$('.del-product').click(function (e) {
		e.preventDefault();
		var href = $(this).attr('href')
		var id = $(this).attr('data-id')
		// console.log(id);
		$.ajax({
			type: "GET",
			url: href,
			data: id,
			// dataType: "dataType",
			success: function (data) {
				var dataNew = JSON.parse(data);
				$("#total-cart").text(dataNew.total.toLocaleString('de-DE') + "₫");
				$(`tr[data-id='${id}']`).remove()
				$(`li[data-id='${id}']`).remove()
				$('.header-cart-notice').text(dataNew.num_order);
				console.log(dataNew.checkEmpty);
				if(dataNew.checkEmpty == 1) {
					document.querySelector('.section-render').innerHTML = `<span class="fs-3">Không có sản phẩm nào trong giỏ hàng, click <a href="home">vào đây</a> để về trang chủ</span>`;
					$('.have-product-cart').remove();


				}

			}
		});
	});

});