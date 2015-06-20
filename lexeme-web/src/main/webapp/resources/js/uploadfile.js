

$(document).ready(function() {
    //your code here

	//Get  form
	var form = document.getElementById('uploadData');
	//Prepare the form data object
	var formData=new FormData(form);

	//On-load event
	window.onload = function(){
	    if(window.File && window.FileList && window.FileReader)
	    {
	    	//Get Number of Files
	    	var filesInput = document.getElementById("files");
	       
	    	//Add event Listner On change
	    	filesInput.addEventListener("change", function(event){
	          
	    		//Get liste of 
	    		var files = event.target.files; //FileList object
	            
	    		
	    		//append the form data
	    	    for(var j=0 ;j< files.length; j++)
	            {
	                var file = files[j];
	                //ignore this line
	              
	                
	                
	        		formData.append("file",file);

	                //picture Reader
	                var pictureReader = new FileReader();
	                
	              
	                //Add Event Listener
	                pictureReader.addEventListener("load",function(event){
	             
	                var picFile ;
	            	var div = document.createElement("div");
	                div.innerHTML = "<div class='col-md-8 col-md-offset-2' style='outline: 1px solid aqua;background-color:#ECF6FB;'>" 
					                    +"<div class='col-md-4 '><label>Document Name</label><br/><strong><img class='thumbnail' src='" + picFile.result + "'" 
			                            +"title='" + picFile.name + "'/>"
			                            +"</strong></div>"
	    			  					+"<div class='col-md-4'><label><strong>CourseID</strong> </label><input type='text' name='courseId' id='courseID' ng-model='formData.courseID'/></div>"
	    			  					+"<div class='col-md-4 '>"
	    			 					 +'<label><strong>Doument Type</strong></label> <select id="myselect" name="category"'
	    			  					+'<div class="form-control">'+
	    			  					<c:forEach items='<%=EnumDocumentCategory.values() %>' var='category'>
	    			  					+'<option value="${category.category}">${category.category}</option>'
	    			  					</c:forEach>		  
	    			  					+'</select></div></div><br/>';
	                  
	    			  					
	    			  //Get selected category
	    		  $(".result").append(div);            
	                });
	          	  var cat =$("#myselect option:selected").text();
				  console.log(cat);
				  formData.append("category",cat);
				
	                 //Read the image
	                pictureReader.readAsDataURL(file);
	            }                               
	        });
	    }

	}
	    
	    
	  

	//Submit form
	$( 'form' ).submit(function ( e ) {
		$.ajax({
			  //set the accept data
			  headers:{
				  Accept:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8"
			  },
			  
			  //set the server path
			  url: '${pageContext.request.contextPath}/doc/upload',
				
			  //set prepared form data
			  data: formData,
			  processData: false,
			  contentType: false,
			  type: 'POST',
			  
			  success: function(data){
				  //Show response
				  document.write(data);
			  }
			});
	});

});