var resize = function() {
	var d_height = $(window).height();
	var d_width = $(window).width();
	var document_height = parseInt($(window).width()*0.15, 10);
	var document_height_banner = parseInt($(window).width()*0.15, 10);
	var albumn = $('.albumn');
	var banner = $('.banner_image');
	var banner_img = $('.banner_image img');
	if ($(window).width() > 768) {
		albumn.css('height', document_height);
		$('.footer').css('height', d_height - $('.content').outerHeight());
	}
	else {
		albumn.css('height', 'auto');
	}
};
$(window).load(function(){
	resize();
});
$(window).resize(function(){
	resize();
});