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

					if (divHide=="true") {
						document.getElementById("searchContent").style.display = 'none';
						document.getElementById("banner").className='searchbanner';
						document.getElementsByName("container").className = "container-new";
					} 
					
					else if(divHide=="false"){
						document.getElementById("search-add-new").display = '';
						document.getElementsByName("container-new").display = '';
						document.getElementById("search-add-new").className = "searchContent";
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

