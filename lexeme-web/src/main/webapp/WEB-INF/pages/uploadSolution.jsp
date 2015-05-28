<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!-- Add header -->
<style>


#thumbnail img{
  width:100px;
  height:100px;
  margin:5px;
}
canvas{
  border:1px solid red;
}
</style>

<style>
  .thumb {
    height: 75px;
    border: 1px solid #000;
    margin: 10px 5px 0 0;
  }
</style>

<%@ include file="header.jsp"%>

<!-- Upload solution form -->

<div id="page-content">
	<div class="container">
		<section id="content">
			<div class="feedback-form-center" align="center">
				<div class="feedback-support-text">
					<h1>Upload Documents</h1>
				</div>
				<div class="form-group" align="center">
					<div class="row">
						<div class="col-lg-12">
						<input type="file"  id="files" name="" multiple />
						<ul>
						<div id="list"></output>
						</ul>
						</div>
					</div>

					<div class="row">
						<div class="col-lg-12">
							<button type="button" class="btn btn-warning" name="upload Documents"></button>
						</div>
					</div>
				</div>


			</div>
		</section>

	</div>
</div>


<script>
  function handleFileSelect(evt) {
    var files = evt.target.files; // FileList object

    // Loop through the FileList and render image files as thumbnails.
    for (var i = 0, f; f = files[i]; i++) {
      var reader = new FileReader();

      // Closure to capture the file information.
      reader.onload = (function(theFile) {
        return function(e) {
          // Render thumbnail.
          var span = document.createElement('span');
          span.innerHTML = 
        	  ['<div class="row" style="outline: 1px solid #54697E;"><div class="col-md-4"><img class="thumb" src="', e.target.result,
                            '" title="', escape(theFile.name), '"/></div><div class="col-md-8 col-md-offset-10>"<p><strong align="left">Size: </strong>',theFile.size,'<br/><strong align="left">Name: </strong>',theFile.name,'</p></div></div>'].join('');
          document.getElementById('list').insertBefore(span, null);
         
       
          document.getElementById('list').insertBefore(span, null);
          
          
        };
      })(f);

      // Read in the image file as a data URL.
      reader.readAsDataURL(f);
    }
  }

  document.getElementById('files').addEventListener('change', handleFileSelect, false);
</script>

<script>
	jQuery(function($) {
		var fileDiv = document.getElementById("upload");
		var fileInput = document.getElementById("upload-image");
		console.log(fileInput);
		fileInput.addEventListener("change", function(e) {
			var files = this.files
			showThumbnail(files)
		}, false)

		fileDiv.addEventListener("click", function(e) {
			$(fileInput).show().focus().click().hide();
			e.preventDefault();
		}, false)

		fileDiv.addEventListener("dragenter", function(e) {
			e.stopPropagation();
			e.preventDefault();
		}, false);

		fileDiv.addEventListener("dragover", function(e) {
			e.stopPropagation();
			e.preventDefault();
		}, false);

		fileDiv.addEventListener("drop", function(e) {
			e.stopPropagation();
			e.preventDefault();

			var dt = e.dataTransfer;
			var files = dt.files;

			showThumbnail(files)
		}, false);
		
		
		function showThumbnail(files) {
			for (var i = 0; i < files.length; i++) {
				var file = files[i]
				

				var image = document.createElement("img");
				var thumbnail = document.getElementById("thumbnail");
				image.file = file;
				thumbnail.appendChild(image)

				
				
				var reader = new FileReader()
				reader.onload = (function(aImg) {
					return function(e) {
						aImg.src = e.target.result;
					};
				}(image))
				var ret = reader.readAsDataURL(file);
				var canvas = document.createElement("canvas");
				ctx = canvas.getContext("2d");
				image.onload = function() {
					ctx.drawImage(image, 100, 100)
				}
			}
		}
	});
</script>
<script>
	$(document)
			.ready(
					function() {
						$('.add_more')
								.click(
										function(e) {
											e.preventDefault();
											$(this)
													.before(
															"<input name='file[]' type='file' onchange='showMyImage(this)'/>");
										});
					});

	/******************************************************************************************
	 *Image upload section will be divided into two part
	 *1-> Append add more button to HTML
	 *2-> Render image preview into HTML
	 */

	function showMyImage(fileInput) {
		var files = fileInput.files;

		for (var i = 0; i < files.length; i++) {
			var file = files[i];
			var img = document.getElementById("thumbnil");
			img.file = file;

			var reader = new FileReader();

			reader.onload = (function(aImg) {
				return function(e) {
					aImg.src = e.target.result;
				};
			})(img);
			reader.readAsDataURL(file);
		}
	}

	$('body').on('click', '#upload', function(e) {
		e.preventDefault();
		var formData = new FormData($(this).parents('form')[0]);

		$.ajax({
			url : 'upload.php',
			type : 'POST',
			xhr : function() {
				var myXhr = $.ajaxSettings.xhr();
				return myXhr;
			},
			success : function(data) {
			},
			data : formData,
			cache : false,
			contentType : false,
			processData : false
		});

		return false;
	});
</script>
<!-- Add footer -->
<%@ include file="footer.jsp"%>
