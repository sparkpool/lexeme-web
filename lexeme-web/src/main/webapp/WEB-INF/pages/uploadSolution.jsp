<%@page import="com.lexeme.web.enums.EnumDocumentCategory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!-- Add header -->
<style>
.thumbnail {
	height: 100px;
	margin: 10px;
}

.btn-file {
	position: relative;
	overflow: hidden;
}

.btn-file input[type="file"] {
	position: absolute;
	top: 0;
	right: 0;
	min-width: 100%;
	min-height: 100%;
	font-size: 100px;
	text-align: right;
	filter: alpha(opacity = 0);
	opacity: 0;
	outline: none;
	background: white;
	cursor: inherit;
	display: block;
}

.file-preview {
	border-radius: 5px;
	border: 1px solid #ddd;
	padding: 5px;
	width: 100%;
	margin-bottom: 5px;
}

.file-preview-frame {
	display: table;
	margin: 8px;
	height: 160px;
	border: 1px solid #ddd;
	box-shadow: 1px 1px 5px 0 #a2958a;
	padding: 6px;
	float: right;
	text-align: center;
	vertical-align: middle;
}

.file-thumbnail-footer .file-caption-name {
	padding-top: 4px;
	font-size: 11px;
	color: #777;
}
</style>


<%@ include file="header.jsp"%>

<!-- Upload solution form -->

<div id="page-content">
	<div class="container-fluid">
		<section id="content">
			<div class="right aligned column">
				<%@ include file="message.jsp"%>
			</div>

			<div class="responseMsg" style="font-size: 15px; text-align: center;">

			</div>

			<div class="feedback-form-center" align="center">
				<div class="feedback-support-text">
					<h1>Start Uploading Documents</h1>
					<hr>

					<p>If you’re not sure whether or not you’re the copyright owner
						for previous exam solutions, homework solutions, and course- or
						exam-specific study guides, please see our guidelines. Have
						questions or trouble uploading? See our FAQ!</p>
				</div>
			</div>
			<div class="form-group" align="center">
				<div class="row">
					<div class="col-lg-12">
						<form name="form" id="uploadData" class="ui form"
							enctype="multipart/form-data" role="form">

							<div class="row">
								<span class="btn btn-info btn-file">upload from computer
									<input type="file" id="files" name="file[]" multiple="multiple">
								</span>
							</div>

							<div class="row">
								<div class="result" />
							</div>
							<div class="row">
								<div class="col-md-12">
									<input class="ui orange save button" type="submit" name="SAVE"
										placeholder="Edit">
								</div>
							</div>
							<br>
						</form>
						<div class="row"></div>

					</div>
				</div>


			</div>




		</section>
		<!-- Button trigger modal -->


	</div>

</div>

<script type="text/javascript">
//Get  form
var form = document.getElementById('uploadData');
//Prepare the form data object
var formData=new FormData(form);
//fileList used to store number of selected file
var fileList=[];
//div identifier
var divID= 1;
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
                var getFile = files[j];
                fileList.push(getFile);
                var pictureReader = new FileReader();
                
                //Add Event Listener
                pictureReader.addEventListener("load",function(event){
             
                var picFile = event.target ;
                var srcImage;
                //check file type is image
                 if (getFile.type.match("image.*")) {
                	  picFile = event.target;
                	  srcImage=picFile.result;
                		console.log(srcImage);
                        
                }else{
                	var img = new Image();
                	
                	srcImage=_contextPath+"/resources/images/docImage.png";
                	img.src=srcImage;
                	console.log(srcImage);
                }
           
              	var div = document.createElement("div");
            	div.setAttribute("id", divID);
     			div.setAttribute("name", "uploadDiv");                     
    
                div.innerHTML = "<div class='col-md-8 col-md-offset-2' id='"+divID+"' name='uploadDiv' style='outline: 1px solid aqua;background-color:#ECF6FB;'>" 
				                    +"<div class='col-md-2 '><span class='glyphicon glyphicon-folder-close'><input type='checkbox' name='checked' id='"+divID+"'/></span></div>"
                					+"<div class='col-md-2 '><div class='file-preview-frame file-preview-initial'><label>Document Name</label><br/><strong>"
		                            +"<object data='"+picFile.result+"' width='160px' height='160px'></object></strong></div>"
		                            +"</div>"
    			  					+"<div class='col-md-2'><label><strong>CourseID</strong>"
    			  					+"</label><input type='text' name='courseId' class='courseID' id='courseId'  /></div>"
    			  					+"<div class='col-md-2 '>"
    			 					+"<label><strong>Doument Type</strong></label> "
    			 					+"<select class='myselect' name='category'>"
    			 					<c:forEach items="<%=EnumDocumentCategory.values() %>" var="category" >
    			 					+"<option value='${category.category}'>${category.category}</option>"
    			 					</c:forEach>			  
    			  					+'</select>'
    			  					+'</div><div class="col-md-3"><strong><label>Additional Information</label></strong><textarea name="description" class="description" rows="6" cols="4" required ></textarea></div></div><br/>';
    			  //Get selected category
    		   formData.append("uploadDiv", divID);
	            divID++;
    			 $(".result").append(div);            
                });
              
          	  //Read the image
              pictureReader.readAsDataURL(getFile);
            }   
    	    
          
        });
    }
   
}
    
 
//Remove the element 
$('div').click(function() { 
	//fire when the button is clicked
    var removeIndex=0;
	
	//get How many selected checkbox
	$('form input:checkbox').each(function() {
      var checkbox = $(this); 
	 
      var selectedDiv =document.getElementById($(this).attr('id'));
      if(checkbox.is(':checked')){ 
 		  //Remove Division  	  		  
    	  $(selectedDiv).remove();
 		  
 		  //Delete element and slice the array after deletion
    	  fileList.splice(removeIndex,1);
      }
      //Increment index
      removeIndex++;
    });
});


//Submit form
$( 'form' ).submit(function ( e ) {
	
	//append file here
	for(var fileIndex=0 ;fileIndex< fileList.length; fileIndex++){
		formData.append("file", fileList[fileIndex]);
	}
      
	//append Couser ID
	$('.courseID').each(function(){
		var course = $(this).val();
		formData.append("courseId", course);
	});
	
	//Append Category
	$('.myselect').each(function(){
		var category = $(this).val();
		formData.append("category", category);
	});
	
	//append description
	$('.description').each(function(){
		var description = $(this).val();
		formData.append("description", description);
	});
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
			  $(".form-group").empty();
			  $(".feedback-form-center").empty();
			  
			  //Thank you for your Contribution	
			  //You have successfully uploaded 1 documents for 1 courses.
			  //It takes up to 3 business days for your documents to be approved.
			  $(".responseMsg").html(data);   
			  $(".responseMsg").append("<div class='btn-group btn-group-info'>"

						+"<a href='' class='btn btn-info btn-lg'> Upload Documents</a>" 
						+"<div>");

		  }
		});
});

</script>


<!-- Add footer -->
<%@ include file="footer.jsp"%>
