var resizebody = function () {
		if ($(document).height() > $(window).height()) {
			$('body').css('height', 'auto');
		}
		else {
			$('body').css('height', $(window).height()-($('.header-container').outerHeight()+10));
		}
	};
$(window).load(function(){
	resizebody();
});
$(window).resize(function(){
	resizebody();
});
$(function() {
	var img = $('.back-img');
	$(img).load(function(){
		/*
		if(img.width() < $('.body-img').width()) {
			$(img).css({'margin-left': - img.innerWidth()/2, 'left': 50 + "%"});
			$('.body-img-desc').css({'width': img.width(), 'left': 50 + '%', 'margin-left': - img.width()/2});
		}
		else {
			$(img).css('left', 0);
		}
		*/
		if ((img).css('height') < $('.body-img').css('height')) {
			$(img).css({'top': - img.height()/5});
		}
	});
	if ($(window).width() >= '460') {
		$('.main-article').css({'width': $('.other-dog').outerWidth() * $('.other-dog').size(), 'margin': "0 auto"});
	}
	else {
		$('.main-article').css({'width':'auto'});
	}
});