/****
 * UI Will change on search
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


//OnChange event






