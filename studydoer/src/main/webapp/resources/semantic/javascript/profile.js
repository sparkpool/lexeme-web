$(document).ready(function() {

	/****************************************************
	 * Tab transition
	 ****************************************************/
	$('.menu .item').tab({
		context : '.profile',
		history : true

	});
	
	$('.special.cards .image').dimmer({
		  on: 'hover'
		});

	$('.item.menu .item').tab({
		history : true
	});

	$('.ui.accordion').accordion();
	$('.cookie.nag').nag({
		key : 'accepts-cookies',
		value : true
	});
});