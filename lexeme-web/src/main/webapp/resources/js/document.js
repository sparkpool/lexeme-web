/****
 * UI Will change on search
 * 
 */



/***
 * To-do: It will call every time .I need to figure-out how it will call only once.s
 * 
 * 
 */


	

function uiRenderingOnSearchBoxClicked(){
		   //Remove the class
		   document.getElementById("searchContent").className="";
		   document.getElementsByName("container").className="";
		   
		   //add new class
		   document.getElementById("searchContent").className="search-add-new";
		   document.getElementsByName("container").className="container-new";
		   
}


function searchBoxClicked(){
	   //Remove the class
	window.location.reload(true);
	document.getElementById("searchContent").className = "";
	document.getElementsByName("container").className = "";

	// add new class
	document.getElementById("searchContent").className = "search-add-new";
	document.getElementsByName("container").className = "container-new";
	
	
	
}

// OnChange event






