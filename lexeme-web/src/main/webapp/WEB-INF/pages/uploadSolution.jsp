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
</style>


<%@ include file="header.jsp"%>

<!-- Upload solution form -->

<div id="page-content">
	<div class="container-fluid">
		<section id="content">
			<div class="right aligned column">
				<%@ include file="message.jsp"%>

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

				<div class="form-group" align="center">
					<div class="row">
						<div class="col-lg-12">
							<form id="uploadData" class="ui form"
								enctype="multipart/form-data">

								<div class="row">
									<span class="btn btn-info btn-file">upload from computer
										<input type="file" id="files" name="file[]"
										multiple="multiple">
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


			</div>


		</section>
		<!-- Button trigger modal -->




	</div>

</div>

<script>


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
                //Append each file
        		formData.append("file",file);
                //picture Reader
                var pictureReader = new FileReader();
                
                //Add Event Listener
                pictureReader.addEventListener("load",function(event){
             
                var picFile = event.target ;
                var srcImage;
                //check file type is image
               /*  if (file.type.match("image.*")) {
                	  picFile = event.target;
                	  srcImage=picFile.result;
                		console.log(srcImage);
                        
                }else{
                	var img = new Image();
                	
                	srcImage=_contextPath+"/resources/images/docImage.png";
                	img.src=srcImage;
                	console.log(srcImage);
                }
           */
             	var div = document.createElement("div");
                div.innerHTML = "<div class='col-md-8 col-md-offset-2' style='outline: 1px solid aqua;background-color:#ECF6FB;'>" 
				                    +"<div class='col-md-4 '><label>Document Name</label><br/><strong><img class='thumbnail' src='" + picFile.result + "'" 
		                            +"title='" + picFile.name + "'/>"
		                            +"</strong></div>"
    			  					+"<div class='col-md-4'><label><strong>CourseID</strong> </label><input type='text' name='courseId' id='courseID' ng-model='formData.courseID'/></div>"
    			  					+"<div class='col-md-4 '>"
    			 					 +'<label><strong>Doument Type</strong></label> <select id="myselect" name="category"'
    			  					+'<div class="form-control">'+
    			  					<c:forEach items="<%=EnumDocumentCategory.values() %>" var="category">
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

</script>


<!-- Add footer -->
<%@ include file="footer.jsp"%>
