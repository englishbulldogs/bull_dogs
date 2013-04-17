$(function(){
	$('.best_in_place').best_in_place();
	$('.flash_msg').hover(function(){
		$(this).delay(1000).fadeOut();
	});
});