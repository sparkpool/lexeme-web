/*******************************************************************************
 * Uploader
 * 
 * 
 * 
 ********************************************************************************/

$(document)
.ready(
		function() {
			// Get form
			var form = document.getElementById('uploadData');
			// Prepare the form data object
			var formData = new FormData(form);
			// fileList used to store number of selected file
			var fileList = [];
			// div identifier
			var divID = 1;
			// On-load event
			window.onload = function() {
				if (window.File && window.FileList && window.FileReader) {
					// Get Number of Files
					var filesInput = document.getElementById("files");

					// Add event Listner On change
					filesInput
					.addEventListener(
							"change",
							function(event) {

								// Get liste of
								var files = event.target.files; // FileList
								// object

								// append the form data
								for (var j = 0; j < files.length; j++) {
									var getFile = files[j];
									fileList.push(getFile);
									var pictureReader = new FileReader();

									// Add Event Listener
									pictureReader
									.addEventListener(
											"load",
											function(
													event) {

												var picFile = event.target;
												var srcImage;
												// check
												// file
												// type
												// is
												// image
												if (getFile.type
														.match("image.*")) {
													picFile = event.target;
													srcImage = picFile.result;
													console
													.log(srcImage);

												} else {
													var img = new Image();

													srcImage = _contextPath
													+ "/resources/images/docImage.png";
													img.src = srcImage;
													console
													.log(srcImage);
												}

												var div = document
												.createElement("div");
												div
												.setAttribute(
														"id",
														divID);
												div
												.setAttribute(
														"name",
												"uploadDiv");

												div.innerHTML = "<div class='col-md-8 col-md-offset-2' id='"
													+ divID
													+ "' name='uploadDiv' style='outline: 1px solid aqua;background-color:#ECF6FB;'>"
													+ "<div class='col-md-2 '><input type='checkbox' name='checked' id='"
													+ divID
													+ "'/></span></div>"
													+ "<div class='col-md-2 '><div class='file-preview-frame file-preview-initial'><label style='color:orange;'>"
													+ getFile.name
													+ "</label><br/><strong>"
													+ "<object data='"
													+ picFile.result
													+ "' width='100px' height='100px'></object></strong></div>"
													+ "</div>"
													+ "<div class='col-md-2'><label><strong>CourseID</strong>"
													+ "</label><input type='text' name='courseId' class='courseID' id='courseId'  /></div>"
													+ "<div class='col-md-2 '>"
													+ "<label><strong>Doument Type</strong></label> "
													+ "<select class='myselect' name='category'>"
													+ "<option value='Homework'>Homework</option>"
													+ "<option value='Notes'>Notes</option>"
													+ "<option value='Essay'>Essay</option>"
													+ "<option value='Other'>Other</option>"
													+ '</select>'
													+ '</div><div class="col-md-3"><strong><label>Additional Information</label></strong><textarea name="description" class="description" rows="6" cols="4"  ></textarea></div></div><br/>';
												// Get
												// selected
												// category
												formData
												.append(
														"uploadDiv",
														divID);
												divID++;
												$(
														".result")
														.append(
																div);
											});

									// Read the image
									pictureReader
									.readAsDataURL(getFile);
								}

							});
				}

			}

			// Remove the element
			$('div')
			.click(
					function() {
						// fire when the button is clicked
						var removeIndex = 0;

						// get How many selected checkbox
						$('form input:checkbox')
						.each(
								function() {
									var checkbox = $(this);

									var selectedDiv = document
									.getElementById($(
											this)
											.attr(
													'id'));
									if (checkbox
											.is(':checked')) {
										// Remove
										// Division
										$(selectedDiv)
										.remove();

										// Delete
										// element and
										// slice the
										// array after
										// deletion
										fileList
										.splice(
												removeIndex,
												1);
									}
									// Increment index
									removeIndex++;
								});
					});

			// Submit form
			$('form')
			.submit(
					function(e) {

						// append file here
						for (var fileIndex = 0; fileIndex < fileList.length; fileIndex++) {
							formData.append("file",
									fileList[fileIndex]);
						}

						// append Couser ID
						$('.courseID').each(
								function() {
									var course = $(this).val();
									formData.append("courseId",
											course + ' ');
								});

						// Append Category
						$('.myselect').each(
								function() {
									var category = $(this)
									.val();
									formData.append("category",
											category);
								});

						//append description
						$('.description').each(
								function() {
									var description = $(this)
									.val();
									formData.append(
											"description",
											description + ' ');
								});
						$
						.ajax({
							//set the accept data
							headers : {
								Accept : "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8"
							},

							//set the server path
							url : _contextPath
							+ '/doc/upload',

							//set prepared form data
							data : formData,
							processData : false,
							contentType : false,
							type : 'POST',

							success : function(data) {
								//Show response
								$(".form-group")
								.empty();
								$(
								".feedback-form-center")
								.empty();

								var output="";
								for(var i=0;i<fileList.length;i++){
									output=output + "<li align='center'>"+fileList[i].name+"</li></ul>";
								 };
								//Thank you for your Contribution	
								//You have successfully uploaded 1 documents for 1 courses.
								//It takes up to 3 business days for your documents to be approved.
								$(".responseMsg").html(
										"");
								$(".responseMsg")
								.append("<p style='font-size:20px;'><strong>Thank you for your Contribution</strong></p><br/>" 
										+"<p>You have successfully uploaded "+fileList.length+" documents for "+fileList.length+" courses</p>"
										+"<p>It takes up to 3 business days for your documents to be approved</p>"
										+"List of uploaded Files:"+
										output
										+"<div class='btn-group btn-group-info'>"
										+ "<a href='' class='ui orange save button'> Upload Documents</a>"
										+ "<div>");

							}
						});
					});

		});