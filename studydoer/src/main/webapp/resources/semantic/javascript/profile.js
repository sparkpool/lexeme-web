$(document).ready(function() {

	/****************************************************
	 * Tab transition
	 ****************************************************/
	$('.ui.dropdown')
	  .dropdown()
	;
	
	$('.menu .item').tab({
		context : '.profile',
		history : true

	});
	
	

	$('.item.menu .item').tab({
		history : true
	});

	$('#multi-select')
	  .dropdown()
	;
	$('.ui.accordion').accordion();
	$('.cookie.nag').nag({
		key : 'accepts-cookies',
		value : true
	});

});