/*******************************************************************************
 * Uploader
 * 
 * 
 * 
 ******************************************************************************/

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
					$("#uploadButton").hide();
					
					$("#spinner").bind("ajaxSend", function() {
				        $(this).show();
				    }).bind("ajaxStop", function() {
				        $(this).hide();
				    }).bind("ajaxError", function() {
				        $(this).hide();
				    });
				 
				     
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

													var extension = getFile.name
															.split('.').pop()
															.toLowerCase();
													var iconType = getIconType(extension);

													console.log(extension);
													var div = document
															.createElement("div");
													div.setAttribute("id",
															divID);
													div.setAttribute("class",
															"uploadDivDel");

													div.innerHTML = "<div class='col-md-8 col-md-offset-2'  col-md-offset-1' id='"
															+ divID
															+ "' name='uploadDiv' style='outline: 1px solid aqua;'>"
															+ "<div class='col-md-1'>" +
																	"<br/><br/><a class='del' href='#' name='checked' id='"
															+ divID
															+ "'><i class='fa fa-trash-o fa-lg'></i></a>"
															+ "</div>"
															+ "<div class='col-md-4'>"
															+ "<span>"+iconType+"</span>"
															+ "<p>"
															+ getFile.name
															+ "</p>"

															+ "</div>"

															+ "<div class='col-md-3 '>"
															+ "<span><strong>Doument Type</strong></span> "
															+ "<select class='myselect' name='category'>"
															+ "<option value='Homework'>Homework</option>"
															+ "<option value='Notes'>Notes</option>"
															+ "<option value='Essay'>Essay</option>"
															+ "<option value='Other'>Other</option>"
															+ "</select>"
															+ "</div><div class='col-md-2'><strong><span><i class='fa fa-pencil-square'></i>Edit Info</span></strong><br/><a href=''  data-toggle='modal' data-target='#my"
															+ divID
															+ "'>Edit Information</a></div></div>";
													// Get
													// selected
													// category

													formData.append(
															"uploadDiv", divID);

													div.innerHTML = div.innerHTML
															+ "<div class='modal fade' id='my"
															+ divID
															+ "' tabindex='-1' role='dialog' aria-labelledby='myModalLabel' >"
															+ "<div class='modal-dialog' role='document'>"
															+ "<div class='modal-content'>"
															+ "<div class='modal-header'>"
															+ "<button type='button' class='close' data-dismiss='modal' aria-label='Close'>"
															+ "<span aria-hidden='true'>&times;</span></button>"
															+ "<h4 class='modal-title' id='exampleModalLabel'>Edit Document Information</h4></div>"
															+

															"<div class='modal-body'>"
															+ "<div class='form-group'>"
															+ "<div class='row'>"
															+ "<div class='col-md-6'>Course ID"
															+ "<input type='text' name='courseId' class='courseID' id='courseId' focus />"
															+ "</div>"
															
															+ "</div>"
															+ "</div>"
															+ "<div class='form-group'>"
															+ "<div class='row'>"
															+ "<div class='col-md-12'>Description"
															+ "<p align='left'>You can tell us more about document </p>"
															+ "<textarea name='description' class='description' rows='2' cols='10'>"
															+ "</textarea>"
															+ "</div>"
															+ "</div>"
															+ "</div>"
															+ "</div>"
															+ "<div class='modal-footer'>"
															+ "<div class='col-md-5 col-md-offset-2' ><button type='button' class='ui orange submit button' data-dismiss='modal'>Save</button></div>"
															+

															"</div></div></div>";

													divID++;
													$(".result").append(div);

												}
												
												$("#uploadButton").show();
									///			document.getElementById("uploadButton").style.display="block";

											});
						}


					};

					$("body").on(
							"click",
							"a",
							function() {
								var selectedDiv = document.getElementById($(
										this).attr('id'));
									
								$(selectedDiv).remove();

								// Delete
								// element and
								// slice the
								// array after
								// deletion
								fileList=fileList.splice(

								1);
								
								//Remove the button
								if(fileList.length==0){
									$("#uploadButton").hide();
								//	document.getElementById("uploadButton").style.display="none";
								}

							});

					// Submit form
					$('form')
							.submit(
									function(e) {
										
										document.getElementById("uploadButton").style.display="none";
										
										//Show spinner once  submit button clicked
										$('#spinner').show();
										
										
										//Scroll top once page is toolong
										$('html, body').animate({scrollTop : 0},800);
										
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

										// append description
										$('.description').each(
												function() {
													var description = $(this)
															.val();
													formData.append(
															"description",
															description.replace(",","") + ' ');
												});
										
												$.ajax({
													// set the accept data
													headers : {
														Accept : "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8"
													},

													// set the server path
													url : _contextPath
															+ '/doc/upload',

													// set prepared form data
													data : formData,
													processData : false,
													contentType : false,
													type : 'POST',

													success : function(data) {
														// Show response
														$('#spinner').hide();
														$(".form-group")
																.empty();
														$(
																".feedback-form-center")
																.empty();

														var output = "";
														for (var i = 0; i < fileList.length; i++) {
															output = output
																	+ "<li align='center'>"
																	+ fileList[i].name
																	+ "</li></ul>";
														}
														;
														// Thank you for your
														// Contribution
														// You have successfully
														// uploaded 1 documents
														// for 1 courses.
														// It takes up to 3
														// business days for
														// your
														// documents to be
														// approved.
														$(".responseMsg").html(
																"");
														$(".responseMsg")
																.append(
																		"<p style='font-size:20px;color:orange;'><strong >Thank you for your Contribution</strong></p><br/>"
																				+ "<p>You have successfully uploaded "
																				+ fileList.length
																				+ " document.</p>"
																				+ "<p style='color:black;'>It takes up to 1 business days for your documents to be approved</p>"
																				
																				);

													}
												});
									});

					// Return Icon type
					
					/***
					 * Validation Rules
					 */
					function getValidation(){
						
					};
					
					
					/***
					 * Return the Icon Type
					 */
					function getIconType(fileExtension) {
						if (fileExtension == "docx") {
							iconType = "<i class='fa fa-file-word-o fa-5x' style='color:green;'></i>";
						} else if (fileExtension == "xls") {
							iconType = "<i class='fa fa-file-excel-o fa-5x' style='color:green;'></i>";
						} else if (fileExtension == "pdf") {

							iconType = "<i class='fa fa-file-pdf-o fa-5x' ></i>";

						} else if (fileExtension == "zip") {
							iconType = "<i class='fa fa-file-archive-o fa-5x'></i>";

						} else if (fileExtension == "text") {
							iconType = "<i class='fa fa-file-text fa-5x'></i>";

						} else if (fileExtension == "jpg") {

							iconType = "<i class='fa fa-file-image-o fa-5x'></i>";

						} else if (fileExtension == "png") {
							iconType = "<i class='fa fa-file-text-o fa-5x'></i>";

						} else if (fileExtension == "pptx") {
							iconType = "<i class='fa fa-file-powerpoint-o fa-5x' style='color:orange;'></i>";

						} else {
							iconType = "<i class='fa fa-file-o fa-5x'></i>";

						}

						return iconType;
					}

				});