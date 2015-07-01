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
						document.getElementById("searchContent").className = "";
						document.getElementsByName("container").className = "";
						document.getElementById("searchContent").className = "search-add-new";
						document.getElementsByName("container").className = "container-new";
					} 
					
					else {
						document.getElementById("search-add-new").className = "";
						document.getElementsByName("container-new").className = "";
						document.getElementById("search-add-new").className = "searchContent";
						document.getElementsByName("container-new").className = "container-new";

					}

				});

