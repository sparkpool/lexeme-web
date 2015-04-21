$(document)
  .ready(function() {

	  
	  /****************************************************
	   * Tab transition
	   ****************************************************/
	  $('.profile .menu .item').tab(
			  
			  {
				
				   
			  }
			  
	  );
	  
	  
	  $('.cookie.nag')
	  .nag({
	    key      : 'accepts-cookies',
	    value    : true
	  })
	;
});