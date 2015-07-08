/****
 * UI Will change on search
 * 
 */

/***
 * To-do: It will call every time .I need to figure-out how it will call only once.s
 * 
 * 
 */
$(document)
		.ready(
				function() {

					
				        
					var divHide = $('#divHide').val();
					
					
					
					/*************************************
					 * Activated link selected
					 **************************************/
					function stripTrailingSlash(str) {
					    if(str.substr(-1) == '/') {
					      return str.substr(0, str.length - 1);
					    }
					    return str;
					  }

					
					  var url = window.location.pathname;  
					  var activePage = stripTrailingSlash(url);

					  $('.nav li a').each(function(){  
					    var currentPage = stripTrailingSlash($(this).attr('href'));

					    if (activePage == currentPage) {
					    	console.log(activePage);
					      $(this).parent().addClass('active'); 
					    } 
					  });


					if (divHide=="true") {
						document.getElementById("searchContent").style.display = 'none';
						document.getElementById("banner").className='searchbanner';
						document.getElementsByName("container").className = "container-new";
					} 
					
					else if(divHide=="false"){
						document.getElementsByName("container-new").display = '';
						document.getElementsByName("container-new").className = "container-new";

					}else{
						
						//do nothing
					}

					 $(".tabs-menu a").click(function(event) {
					     event.preventDefault();
					      $(this).parent().addClass("current");
					      var removedClass=$(this).parent().siblings().removeClass("current");
					      console.log(removedClass);
					      var tab = $(this).attr("href");
					      $(".tab-content").not(tab).css("display", "none");
				 
					        $(tab).fadeIn();
					    });
					
				});

