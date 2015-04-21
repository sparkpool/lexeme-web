$(document)
  .ready(function() {

	  
	  /****************************************************
	   * Tab transition
	   ****************************************************/
	  $('.menu .item')
	    .tab({
	    	 context: '.profile',
	    	 history:true
	    		 
	    })
	  ;  
	  
	 
	  $('.cookie.nag')
	  .nag({
	    key      : 'accepts-cookies',
	    value    : true
	  })
	;
});