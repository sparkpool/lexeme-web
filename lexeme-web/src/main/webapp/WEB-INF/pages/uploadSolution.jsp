<%@page import="com.lexeme.web.enums.EnumDocumentCategory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!-- Add header -->
<style>
.thumbnail{

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
    filter: alpha(opacity=0);
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
							<form id="uploadData" class="ui form" enctype="multipart/form-data"
								action="${pageContext.request.contextPath}/doc/upload"
								method="POST">

								<div class="row">
									<span class="btn btn-info btn-file">upload from computer
									<input type="file" id="files" >
									</span>
								</div>

								<div class="row">
				   				<div class="result" />
								</div>
								<div class="row">
								<div class="col-md-12">
								<input class="ui orange save button" type="submit"
												name="SAVE" placeholder="Edit" 
												>
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

<script type="text/javascript">

var fileList = [];
var index = 0;
var formData=new FormData();

window.onload = function(){
    
    //Check File API support
    if(window.File && window.FileList && window.FileReader)
    {
        var filesInput = document.getElementById("files");
        
        filesInput.addEventListener("change", function(event){
            var files = event.target.files; //FileList object
            //var output = document.getElementById("result");
            console.log("Size: "+fileList);
            for(var j=0 ;j< files.length; j++)
            {
                var file = files[j];
                
                //ignore this line
                fileList.push(file);
         
                
                var picReader = new FileReader();
         
                picReader.addEventListener("load",function(event){
                	
                    var picFile = event.target;
             	    var div = document.createElement("div");
                    div.innerHTML = "<div class='col-md-8 col-md-offset-2' style='outline: 1px solid aqua;background-color:#ECF6FB;'>" 
				                    +"<div class='col-md-4 '><label>Document Name</label><br/>"
				                    + "<strong><img class='thumbnail' src='" + picFile.result + "'" 
		                            +"title='" + picFile.name + "' />"
		                            +"</strong>"
		                            + "<input type='file' name=file[" + (index++) + "] value='" + file + "' />" 
		                            +"</div>"
    			  					+"<div class='col-md-4'><label><strong>CourseID</strong> </label><input type='text' name='courseId' id='courseID' ng-model='formData.courseID'/></div>"
    			  					+"<div class='col-md-4 '>"
    			 					 +'<label><strong>Doument Type</strong></label> <select name="category"'
    			  					+'<div class="form-control">'+
    			  					<c:forEach items="<%=EnumDocumentCategory.values() %>" var="category">
    			  					+'<option value="${category.category}">${category.category}</option>'
    			  					</c:forEach>			  
    			  					+'</select></div></div><br/>';
                    $(".result").append(div);            
                
                });
                 //Read the image
                picReader.readAsDataURL(file);
            }                               
           
        });
    }
    else
    {
        console.log("Your browser does not support File API");
    }
}
    
    

</script>


<!-- Add footer -->
<%@ include file="footer.jsp"%>
